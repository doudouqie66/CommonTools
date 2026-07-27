thread_id: 019f6f5d-9339-7a12-890d-7a31d3642c55
updated_at: 2026-07-17T12:36:32+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T17-17-16-019f6f5d-9339-7a12-890d-7a31d3642c55.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\chongzita
git_branch: main

# 绿洲编辑器 `chongzita` 工程里的人物移速/重力脚本定位与排障

Rollout context: 用户在 `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\chongzita` 里问角色移动速度和重力应该怎么写、写在哪个脚本里，以及“为什么不行”。助手按本地文档和工程脚本实际位置查证后，给出了 `UGCPlayerPawn.lua` 的写法，并基于日志排查了一个 Lua 绑定/父类调用阶段的错误。

## Task 1: 人物移动速度语句与写入位置

Outcome: partial

Preference signals:

- 用户先问“把人物移动速度设置为6倍是什么语句”，随后又追问“写在哪里，ctrl吗” -> 这说明他想要的是可直接粘贴的代码片段，以及明确放置位置，而不是泛泛解释 API。
- 用户点名了 `UGCPlayerPawn.lua` -> 以后遇到这类角色属性问题，优先检查 `UGCPlayerPawn` 而不是默认往 `UGCPlayerController` 里放。

Key steps:

- 先在本地 `D:\LvZhou\LvZhou\wiki` / `api` 里查到旧接口 `UGCPawnAttrSystem.SetSpeedScale(self, 3)`，以及新版 `UGCAttributeSystem.SetGameAttributeValue` 和属性枚举 `Character_UGCGeneralMoveSpeedScale`。
- 又在工程里确认 `Script/Blueprint/UGCPlayerPawn.lua` 已经绑定到 `UGCPlayerPawn`，且文件里本来就有 `ReceiveBeginPlay` 的模板注释。
- 最终把 `UGCPlayerPawn.lua` 改成在 `ReceiveBeginPlay` 中、服务端分支里写移速：`UGCAttributeSystem.SetGameAttributeValue(self, "UGCGeneralMoveSpeedScale", 6)`。

Failures and how to do differently:

- 直接用 `UGCNativeGameAttributeType.Character_UGCGeneralMoveSpeedScale` 的写法在这一轮里被怀疑有加载时机风险，因此改成了更稳的字符串属性名写法。
- 这类改动需要重启/重新开始 PIE 才会触发 `ReceiveBeginPlay`；只保存文件不够。
- 用户问“为什么不行”时，关键不是继续猜 API，而是先确认角色脚本是否真的跑到、是否只在服务端执行。

Reusable knowledge:

- 角色移动速度的新版接口是 `UGCAttributeSystem.SetGameAttributeValue(...)`，属性名是 `UGCGeneralMoveSpeedScale`。
- 在这个工程里，玩家默认脚本文件是 `Script/Blueprint/UGCPlayerPawn.lua`，不是 `UGCPlayerController`。
- `ReceiveBeginPlay` 里应优先加 `self:HasAuthority()`，因为这类属性写入是服务端生效。

References:

- [1] `Script/Blueprint/UGCPlayerPawn.lua` 当前内容被改为：
  ```lua
  function UGCPlayerPawn:ReceiveBeginPlay()
      UGCPlayerPawn.SuperClass.ReceiveBeginPlay(self)

      if self:HasAuthority() then
          UGCAttributeSystem.SetGameAttributeValue(self, "UGCGeneralMoveSpeedScale", 6)
      end
  end
  ```
- [2] `api/class/detail/和平全局接口/角色系统/UGCPawnAttrSystem.md` 中 `SetSpeedScale` 标注为“废弃”，并提示改用 `UGCAttributeSystem`。
- [3] `api/class/detail/和平全局接口/角色系统/UGCAttributeSystem.md` 中 `SetGameAttributeValue` 的说明是“设置指定属性数值（自动同步到客户端）”，生效范围：服务器。
- [4] `api/cppenum/detail/NativeGameAttributeType.md` 命中 `Character_UGCGeneralMoveSpeedScale`，描述为“UGC移动速度倍率”。

## Task 2: 为什么移速写了“不行”以及排障方法

Outcome: partial

Preference signals:

- 用户直接问“为什么不行呢” -> 这说明他希望助手先找根因而不是只给重写版代码；后续排障应默认先查日志、执行时机和脚本绑定。

Key steps:

- 助手按系统排障流程去看本地日志，先找 `Saved/Logs/chongzita`，再缩小到最新 `DSlog/TagLog` 和 `DSlog/FullLog`。
- 日志里抓到关键报错：`LogScriptPlugin: Warning: [LuaException] UUGCActorLuaManager: CheckClassLuaCallSuperClassLua error: call lua [LuaBindIndexSuperClassLua] failed: ugc/ugc_lua_bind.lua:97: attempt to index a nil value (field '?')`。
- 同时确认 `UGCPlayerPawn` 的 Lua 绑定确实存在：日志里有 `Actor '/chongzita/Asset/Blueprint/UGCPlayerPawn.UGCPlayerPawn_C' bind lua script 'Script.Blueprint.UGCPlayerPawn'`。

Failures and how to do differently:

- 这次问题不只是“速度值没生效”，而是 Lua 绑定/父类调用阶段先报错了；以后遇到“写了但没效果”，不要只盯 API 值，先查是否脚本初始化已经失败。
- 日志目录很大，直接整目录 `rg` 会超时；需要先定位最新子目录，再只扫最新日志文件。

Reusable knowledge:

- 在这个工程里，`UGCPlayerPawn` 的 Lua 绑定是可查证的，问题更可能出在初始化/父类调用/执行时机。
- 排障时优先检查 `DSlog/TagLog` 的 `LuaException` 和 `CheckClassLuaCallSuperClassLua`。
- 如果 `ReceiveBeginPlay` 没跑到服务端分支，`SetGameAttributeValue` 即便写对也不会表现为生效。

References:

- [1] 最新日志关键报错：`call lua [LuaBindIndexSuperClassLua] failed: ugc/ugc_lua_bind.lua:97: attempt to index a nil value (field '?')`。
- [2] 最新日志中同时出现：`Actor '/chongzita/Asset/Blueprint/UGCPlayerPawn.UGCPlayerPawn_C' bind lua script 'Script.Blueprint.UGCPlayerPawn'`。
- [3] 结果文件：`Script/Blueprint/UGCPlayerPawn.lua` 已被加上 `self:HasAuthority()` 保护。

## Task 3: 人物重力设为 0 的语句

Outcome: success

Preference signals:

- 用户直接问“把重力设置为0 的是什么语句” -> 这类问题他要的是最短可用语句，并且最好能直接塞进现有 Pawn 初始化里。

Key steps:

- 本地文档命中的是移动组件的 `GravityScale`，以及示例里 `local MoveComp = self:GetOwnerActor():GetMovementComponent()` 后设置 `MoveComp.GravityScale = 0`。
- 助手据此给出人物重力代码：
  ```lua
  local MoveComp = self:GetMovementComponent()
  if MoveComp then
      MoveComp.GravityScale = 0
  end
  ```
- 并把它和移速设置合并到 `UGCPlayerPawn:ReceiveBeginPlay()` 里作为一个完整示例。

Failures and how to do differently:

- 需要区分“人物重力”和“抛体/子弹重力”；后者是 `ProjectileMovement.ProjectileGravityScale = 0`，不是人物移动组件。

Reusable knowledge:

- 人物重力通常通过 Pawn 的移动组件 `GravityScale` 控制。
- 抛体重力则是 `UProjectileMovementComponent.ProjectileGravityScale`，设为 `0` 表示无重力。

References:

- [1] 文档示例 `D:\LvZhou\LvZhou\wiki\丧尸法师案例.md`：`MoveComp.GravityScale = 0`。
- [2] 额外接口参考 `api/class/detail/Others/UProjectileMovementComponent.json`：`ProjectileGravityScale` 的说明是 “Set to 0 for no gravity.”
- [3] 给用户的合并示例：在 `UGCPlayerPawn.lua` 的 `ReceiveBeginPlay()` 里同时设置 `MoveComp.GravityScale = 0` 和 `UGCGeneralMoveSpeedScale = 6`。
