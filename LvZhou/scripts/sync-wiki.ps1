<#
.SYNOPSIS
  同步绿洲启元编辑器线上资源到本地 Obsidian Vault
.DESCRIPTION
  Wiki 同步: 对比线上分类树与本地索引，下载新文章
  API 同步:  对比线上文件列表与本地文件，下载新文档
.PARAMETER VaultRoot  根目录
.PARAMETER DownloadNew 自动下载新 Wiki 文章
.PARAMETER UpdateMoc  更新 MOC 计数
.PARAMETER SyncApi    对比 API 文档差异
.PARAMETER DownloadApi 自动下载缺失的 API 文件
#>
param(
  [string]$VaultRoot = (Resolve-Path "$PSScriptRoot\.."),
  [switch]$DownloadNew,
  [switch]$UpdateMoc,
  [switch]$SyncApi,
  [switch]$DownloadApi
)

$WikiDir = Join-Path $VaultRoot "wiki"
$ApiDir = Join-Path $VaultRoot "api"
$IndexFile = Join-Path $WikiDir "_index.json"
$MocFile = Join-Path $VaultRoot "MOC-总览.md"

function Write-Step($m) { Write-Host ">>> $m" -ForegroundColor Cyan }
function Write-Success($m) { Write-Host "[OK] $m" -ForegroundColor Green }
function Write-Warn($m) { Write-Host "[!] $m" -ForegroundColor Yellow }
function Write-Err($m) { Write-Host "[ERR] $m" -ForegroundColor Red }

# ============ WIKI ============
function Sync-Wiki {
  Write-Step "获取线上 Wiki 分类树..."
  $lookRes = try {
    Invoke-RestMethod "https://developer.gp.qq.com/wikieditor/_api/look-Category" -Method Get -TimeoutSec 15
  } catch { Write-Err "无法连接线上 Wiki: $_"; return }
  if ($lookRes.code -ne 0) { Write-Err "API 错误: $($lookRes.message)"; return }
  $tree = $lookRes.data[0].Body | ConvertFrom-Json

  function Extract-Articles($Nodes, $ParentPath = "") {
    $result = @()
    foreach ($node in $Nodes) {
      if ($node.type -eq 1) {
        $path = if ($ParentPath) { "$ParentPath > $($node.label)" } else { $node.label }
        $result += [PSCustomObject]@{ Id=[int]$node.id; Label=$node.label; Path=$path; IsDraft=if($null-ne$node.isDraft){$node.isDraft}else{$false} }
      } elseif ($node.type -eq 0 -and $node.children) {
        $cp = if ($ParentPath) { "$ParentPath > $($node.label)" } else { $node.label }
        $result += Extract-Articles $node.children $cp
      }
    }
    return $result
  }
  $onlineArticles = Extract-Articles $tree
  Write-Success "线上共 $($onlineArticles.Count) 篇文章"

  Write-Step "读取本地索引..."
  $localArticles = if (Test-Path $IndexFile) { Get-Content $IndexFile -Raw -Encoding UTF8 | ConvertFrom-Json } else { @() }
  Write-Success "本地共 $($localArticles.Count) 篇文章"

  $onlineById = @{}; $onlineArticles | ForEach-Object { $onlineById[$_.Id] = $_ }
  $localById = @{}; $localArticles | ForEach-Object { $localById[[int]$_.id] = $_ }
  $newArticles = $onlineArticles | Where-Object { -not $localById.ContainsKey($_.Id) -and -not $_.IsDraft } | Sort-Object Id
  $removedArticles = $localArticles | Where-Object { -not $onlineById.ContainsKey([int]$_.id) }

  Write-Host "`n=== Wiki 报告 ===" -ForegroundColor Cyan
  Write-Host "线上: $($onlineArticles.Count)  |  本地: $($localArticles.Count)"
  if ($newArticles.Count -gt 0) {
    Write-Host "[新增] $($newArticles.Count) 篇:" -ForegroundColor Green
    $newArticles | ForEach-Object { Write-Host "  ID $($_.Id): $($_.Label)" -ForegroundColor Green }
  }
  if ($removedArticles.Count -gt 0) {
    Write-Host "[删除] $($removedArticles.Count) 篇:" -ForegroundColor Yellow
    $removedArticles | ForEach-Object { Write-Host "  ID $($_.id): $($_.label)" -ForegroundColor Yellow }
  }
  if ($newArticles.Count -eq 0 -and $removedArticles.Count -eq 0) { Write-Host "[OK] 已是最新" -ForegroundColor Green }

  if ($DownloadNew -and $newArticles.Count -gt 0) {
    Write-Host "`n>>> 下载新文章..." -ForegroundColor Cyan
    $downloaded = 0
    foreach ($article in $newArticles) {
      $id = $article.Id; Write-Host "  [$id] $($article.Label) ... " -NoNewline
      try {
        $res = Invoke-RestMethod "https://developer.gp.qq.com/wikieditor/_api/query-articles?Id=$id" -Method Get -TimeoutSec 10
        if ($res.code -eq 0 -and $res.data.Count -gt 0) {
          $data = $res.data[0]
          $fileName = $data.Title -replace '[\\/:*?"<>|]', '_'
          $filePath = Join-Path $WikiDir "$fileName.md"
          @"
---
title: "$($data.Title)"
tags:
  - wiki
  - 自动同步
---
$($data.Body)
"@ | Out-File $filePath -Encoding UTF8
          $localArticles += [PSCustomObject]@{ id=[int]$data.Id; label=$data.Title; path=if($data.Level){$data.Level}else{$data.Title}; file="$fileName.md"; success=$true }
          Write-Host "OK" -ForegroundColor Green; $downloaded++
        } else { Write-Host "空" -ForegroundColor Yellow }
      } catch { Write-Host "失败: $_" -ForegroundColor Red }
    }
    if ($downloaded -gt 0) {
      Write-Step "更新 _index.json..."
      $localArticles | ConvertTo-Json -Depth 3 | Out-File $IndexFile -Encoding UTF8
      if ($UpdateMoc -and (Test-Path $MocFile)) {
        $moc = Get-Content $MocFile -Raw -Encoding UTF8
        $match = [regex]::Match($moc, '共 \*\*(\d+)\s*篇\*\*文章')
        if ($match.Success) {
          $newTotal = [int]$match.Groups[1].Value + $downloaded
          $moc = $moc -replace '共 \*\*\d+\s*篇\*\*文章', "共 **${newTotal} 篇**文章"
          $today = Get-Date -Format "yyyy-MM-dd"
          $moc = $moc -replace '最后更新: \d{4}-\d{2}-\d{2}', "最后更新: $today"
          $moc | Out-File $MocFile -Encoding UTF8
          Write-Success "MOC 更新完毕"
        }
        Write-Warn "表格行需手动添加到 MOC"
      }
    }
  }
}

# ============ API ============
function Sync-Api {
  Write-Step "扫描线上 API 文档..."

  # 类: tree.json
  Write-Host "  获取类文档列表 ... " -NoNewline
  $classList = @()
  try {
    $tree = Invoke-RestMethod "https://developer.gp.qq.com/api/class/list/tree.json" -Method Get -TimeoutSec 15
    function Get-Files($Nodes) {
      $r = @()
      foreach ($node in $Nodes) {
        if ($node.Path) {
          $name = $node.Name
          $subPath = $node.Path -replace '^class/detail/','' -replace '\.json$',''
          $r += @{Name=$name; SubPath=$subPath}
        }
        if ($node.Children -and $node.Children.Count -gt 0 -and $node.Children -is [array]) { $r += Get-Files $node.Children }
      }
      return $r
    }
    $classList = Get-Files $tree
    Write-Host "$($classList.Count) 个" -ForegroundColor Green
  } catch { Write-Host "失败: $_" -ForegroundColor Red }

  # 枚举/结构体/全局函数: 目录列表
  function Get-Listing($Url, $Label) {
    Write-Host "  获取 ${Label}列表 ... " -NoNewline
    try {
      $r = Invoke-WebRequest $Url -UseBasicParsing -TimeoutSec 30 -Method Get
      $m = [regex]::Matches($r.Content, '<a href="([^"]+\.json)"')
      $list = $m | ForEach-Object { $n = $_.Groups[1].Value -replace '\.json$',''; @{Name=$n; SubPath=$n} }
      Write-Host "$($list.Count) 个" -ForegroundColor Green
      return $list
    } catch { Write-Host "失败: $_" -ForegroundColor Red; return @() }
  }

  $enumList   = Get-Listing "https://developer.gp.qq.com/api/cppenum/detail/" "枚举"
  $structList = Get-Listing "https://developer.gp.qq.com/api/cppstruct/detail/" "结构体"
  $funcList   = Get-Listing "https://developer.gp.qq.com/api/globalfunc/detail/" "全局函数"

  # 汇总对比
  $apiTypes = @(
    @{Name="类文档";  List=$classList;  LocalDir="class\detail";    UrlBase="https://developer.gp.qq.com/api/class/detail"}
    @{Name="枚举";    List=$enumList;   LocalDir="cppenum\detail"; UrlBase="https://developer.gp.qq.com/api/cppenum/detail"}
    @{Name="结构体";  List=$structList; LocalDir="cppstruct\detail"; UrlBase="https://developer.gp.qq.com/api/cppstruct/detail"}
    @{Name="全局函数"; List=$funcList;  LocalDir="globalfunc\detail"; UrlBase="https://developer.gp.qq.com/api/globalfunc/detail"}
  )

  $totalNew = 0
  $results = @()

  foreach ($type in $apiTypes) {
    $localPath = Join-Path $ApiDir $type.LocalDir
    $localMap = @{}
    if (Test-Path $localPath) {
      Get-ChildItem "$localPath" -Recurse -Filter "*.json" -File | ForEach-Object { $localMap[$_.BaseName] = $true }
    }
    $found = 0; $newFiles = @()
    foreach ($f in $type.List) {
      if ($localMap.ContainsKey($f.Name)) { $found++ }
      else { $newFiles += $f }
    }
    $totalNew += $newFiles.Count
    $results += @{Name=$type.Name; Online=$type.List.Count; Local=$found; New=$newFiles.Count; NewList=$newFiles; LocalDir=$localPath; UrlBase=$type.UrlBase}
    if ($newFiles.Count -gt 0) {
      Write-Host "[新增] $($type.Name): $($newFiles.Count)" -ForegroundColor Green
      $newFiles | ForEach-Object { Write-Host "  $($_.Name)" -ForegroundColor Green }
    }
  }

  # 下载
  if ($DownloadApi -and $totalNew -gt 0) {
    Write-Host "`n>>> 下载新 API 文件 ..." -ForegroundColor Cyan
    $dl = 0
    foreach ($type in $results) {
      if ($type.NewList.Count -eq 0) { continue }
      foreach ($f in $type.NewList) {
        Write-Host "  $($f.Name) ... " -NoNewline
        try {
          $dir = Split-Path "$($type.LocalDir)\$($f.Name).json" -Parent
          if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
          Invoke-WebRequest "$($type.UrlBase)/$($f.SubPath).json" -UseBasicParsing -TimeoutSec 15 -OutFile "$($type.LocalDir)\$($f.Name).json"
          Write-Host "OK" -ForegroundColor Green; $dl++
        } catch { Write-Host "失败: $_" -ForegroundColor Red }
      }
    }
    # 更新搜索索引
    $idxPath = Join-Path $ApiDir "_search_index.json"
    if (Test-Path $idxPath) {
      $idx = Get-Content $idxPath -Raw -Encoding UTF8 | ConvertFrom-Json
      $known = @{}; $idx | ForEach-Object { $known[$_.name] = $true }
      $typeMap = @{"类文档"="class"; "枚举"="enum"; "结构体"="struct"; "全局函数"="function"}
      foreach ($type in $results) {
        $t = $typeMap[$type.Name]
        foreach ($f in $type.NewList) {
          if (-not $known.ContainsKey($f.Name)) {
            $idx += [PSCustomObject]@{ name=$f.Name; description=""; type=$t; path="$ApiDir\$($type.LocalDir)\$($f.Name).json"; functions=0; variables=0 }
          }
        }
      }
      $idx | ConvertTo-Json -Depth 3 | Out-File $idxPath -Encoding UTF8
      Write-Success "搜索索引已更新"
    }
  }

  # 报告
  Write-Host "`n=== API 报告 ===" -ForegroundColor Cyan
  Write-Host ("{0,-8} | {1,6} | {2,5} | {3,5}" -f "类型", "在线", "本地", "新增") -ForegroundColor Cyan
  Write-Host ("--------+--------+-------+------") -ForegroundColor Cyan
  $tOnline = 0; $tLocal = 0
  foreach ($r in $results) {
    Write-Host ("{0,-8} | {1,6} | {2,5} | {3,5}" -f $r.Name, $r.Online, $r.Local, "+$($r.New)")
    $tOnline += $r.Online; $tLocal += $r.Local
  }
  Write-Host ("--------+--------+-------+------") -ForegroundColor Cyan
  Write-Host ("{0,-8} | {1,6} | {2,5} | {3,5}" -f "合计", $tOnline, $tLocal, "+$totalNew") -ForegroundColor Cyan
}

if ($SyncApi) { Sync-Api } else { Sync-Wiki }
