thread_id: 019f7061-ae53-7e62-bf0c-c23afd5f3f8e
updated_at: 2026-07-17T14:16:48+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T22-01-19-019f7061-ae53-7e62-bf0c-c23afd5f3f8e.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# 询问 Douluo 里“关闭方向标/武器栏/小地图”代码位置的定位流程，最终确认：方向标在 `UGCPlayerController.lua`，武器栏在 `Fei.lua`，小地图更可能在 `MainWidget.lua`

Rollout context: 用户在 Douluo 项目里连续问“关闭方向标和武器栏那些代码在哪里”“关闭小地图的你知道在哪里关吗”“但是好像不是，他是mainwidget里面的”，说明他要的是具体可改的位置，而不是泛泛解释。这个 rollout 主要是在 `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo` 下做 Lua/资产搜索来定位 HUD 控件隐藏逻辑。

## Task 1: 定位方向标与武器栏的关闭逻辑

Outcome: success

Preference signals:

- 用户问“这个项目里面，关闭方向标和武器拦那些代码在哪里” -> 未来类似问题应优先给出“文件 + 函数 + 行号 + 具体控件名”，而不是先讲原理。
- 用户后续追问“关闭小地图的你知道在哪里关吗”并进一步纠正“但是好像不是，他是mainwidget里面的” -> 用户会继续校正目标控件所在层级，说明定位时要保持开放，别把第一个命中的 UI 当成最终答案。
- 用户这类问题更关心“到底在哪里改”，所以回答时要直接跟到最终 widget/visibility 调用。

Key steps:

- 先读取本机技能说明，再做项目搜索，避免违背本地流程。
- 通过 `rg` 在 `Script` 下搜索 `NavigatorPanel`、`MainUI_Weapon1_C_0`、`MainUI_Weapon2_C_0`、`SetVisibility`、`GetMainControlUI` 等关键词。
- 确认方向标关闭在 `Script/Blueprint/UGCPlayerController.lua:64-68`：
  - `local MainUI = UGCWidgetManagerSystem.GetMainControlUI()`
  - `MainUI.NavigatorPanel:SetVisibility(ESlateVisibility.Collapsed)`
  - `MainUI.Image_0:SetVisibility(ESlateVisibility.Collapsed)`
- 确认武器栏/相关默认控制在 `Script/Blueprint/UI/Fei.lua`：
  - 顶部 `BlockedControlWidgetNames` 包含 `MainUI_Weapon1_C_0`、`MainUI_Weapon2_C_0`、`MainUI_Pistol_C_0` 等
  - `StartFly()` 调用 `self:SetNativeControlBlocked(true)`
  - `StopFly()` 调用 `self:SetNativeControlBlocked(false)`
  - `SetNativeControlBlocked()` 最终对命中的控件执行 `Widget:SetVisibility(ESlateVisibility.Collapsed)` 并在恢复时还原原可见性
- `Script/Blueprint/MainWidget.lua` 里确实列出了 `MainUI_Weapon1_C_0` / `MainUI_Weapon2_C_0` 字段，说明这些是默认主控 HUD 的子控件名。

Failures and how to do differently:

- 一开始只在代码里搜到了方向标和部分 UI 线索，武器栏不是在 `UGCPlayerController` 里直接写死的；后来继续追 `Fei.lua` 才找到真正的统一隐藏入口。
- 对于默认 HUD 子控件，不能只看一个脚本里有没有直接 `Collapsed`；要继续追“谁持有这些字段”“谁在调用统一隐藏函数”。

Reusable knowledge:

- 方向标关闭点：`UGCPlayerController:ReceiveBeginPlay()` 中隐藏 `GetMainControlUI()` 的 `NavigatorPanel` 和 `Image_0`。
- 武器栏/默认控制块隐藏点：`Fei.lua` 的 `BlockedControlWidgetNames` + `SetNativeControlBlocked()`。
- 这个项目里武器栏相关控件命名很明确：`MainUI_Weapon1_C_0`、`MainUI_Weapon2_C_0`、`MainUI_Pistol_C_0`、`MainUI_AimMode_16_C_0`、`MainUI_Scope_29_C_0` 等。
- `Fei:StartFly()` / `Fei:StopFly()` 是该隐藏逻辑的触发入口，飞行开始时隐藏、结束时恢复。

References:

- [1] `Script/Blueprint/UGCPlayerController.lua:64-68`
  ```lua
  local MainUI = UGCWidgetManagerSystem.GetMainControlUI()
  if MainUI then
      MainUI.NavigatorPanel:SetVisibility(ESlateVisibility.Collapsed)
      MainUI.Image_0:SetVisibility(ESlateVisibility.Collapsed)
  end
  ```
- [2] `Script/Blueprint/MainWidget.lua:46-47`
  ```lua
  ---@field MainUI_Weapon1_C_0 MainUI_Weapon1_C
  ---@field MainUI_Weapon2_C_0 MainUI_Weapon2_C
  ```
- [3] `Script/Blueprint/UI/Fei.lua:22-38`
  ```lua
  local BlockedControlWidgetNames = {
      "MainUI_Jump_C_0",
      "MainUI_Crouch_C_0",
      "MainUI_Crawl_C_0",
      "MainUI_Reload_14_C_0",
      "MainUI_Weapon1_C_0",
      "MainUI_Weapon2_C_0",
      "MainUI_Pistol_C_0",
      ...
  }
  ```
- [4] `Script/Blueprint/UI/Fei.lua:322-347`
  - `StartFly()` -> `SetNativeControlBlocked(true)`
  - `StopFly()` -> `SetNativeControlBlocked(false)`
- [5] `Script/Blueprint/UI/Fei.lua:812-860`
  - `SetNativeControlBlocked()` 遍历控件并执行 `Widget:SetVisibility(ESlateVisibility.Collapsed)`，恢复时还原原 visibility。

## Task 2: 定位小地图关闭逻辑并修正初始判断

Outcome: partial

Preference signals:

- 用户指出“但是好像不是，他是mainwidget里面的” -> 说明用户会纠正“默认主控 UI”和“MainWidget”之间的层级归属，未来应优先核对 `MainWidget` 资产/字段，而不是默认把问题归到 `UGCPlayerController`。
- 用户的纠正表明：当第一个命中的代码不是最终位置时，不要坚持旧结论，要快速回到被点名的蓝图/脚本。

Key steps:

- 搜索 `MiniMap/Minimap/Map/小地图/导航` 等关键词，未找到现成的 Lua 关闭代码。
- 重新检查 `Script/Blueprint/MainWidget.lua`，确认它是默认主控 HUD 的字段声明文件，`Construct()` 目前是空的。
- 因为 `MainWidget.lua` 没有显式的小地图字段名，推断小地图更可能存在于该蓝图资产里，需要在编辑器里看真实控件名后再 `SetVisibility(ESlateVisibility.Collapsed)`。
- 之前把小地图继续往 `UGCPlayerController` 方向解释过一次，但用户纠正后，方向改为 `MainWidget`。

Failures and how to do differently:

- 失败点：从 Lua 文本里没搜到 `MiniMap` 等明确字段，不能硬说“在 `UGCPlayerController` 里关”。
- 失败点：`MainWidget.lua` 的生成字段只显示了部分控件名，没能从脚本注释里直接确认小地图控件名。
- 下次类似问题应优先直接打开/核对 `MainWidget` 蓝图的实际控件树或导出的字段，而不是只依赖 Lua 文本搜索。

Reusable knowledge:

- `Script/Blueprint/MainWidget.lua` 当前只有字段注释和空的 `Construct()`，没有实际关闭逻辑。
- 如果小地图确实挂在 `MainWidget`，最可能的修改点就是 `MainWidget:Construct()`。
- 当前仓库 Lua 文本里没有明显的 `MiniMap/Minimap/MainUI_Map` 命名线索；小地图控件名可能只存在于编辑器蓝图层。

References:

- [1] `Script/Blueprint/MainWidget.lua:53-57`
  ```lua
  function MainWidget:Construct()
  
  end
  ```
- [2] `Script/Blueprint/MainWidget.lua:46-47`
  ```lua
  ---@field MainUI_Weapon1_C_0 MainUI_Weapon1_C
  ---@field MainUI_Weapon2_C_0 MainUI_Weapon2_C
  ```
- [3] `Script/Blueprint/UI/Fei.lua:812-860`
  - 说明另一条“统一隐藏默认 HUD 子控件”的现有实现路径存在，但这不等于小地图也在这里。
- [4] 用户原话：`“但是好像不是，他是mainwidget里面的”`
  - 这句话是关键纠正信号，表示小地图应回头查 `MainWidget` 资产/脚本。
