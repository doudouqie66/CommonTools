thread_id: 019f6ac9-c97f-7e93-81a1-a7e4305940d2
updated_at: 2026-07-16T12:14:13+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\16\rollout-2026-07-16T19-57-23-019f6ac9-c97f-7e93-81a1-a7e4305940d2.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# 将 `PlayerLevelMgr.lua` 改为纯公式等级/属性曲线，并同步 `UGCPlayerState` 默认经验阈值

Rollout context: 用户在 Douluo 项目里点名 `Script/Lin/PlayerLevelMgr.lua`，想把等级经验、HP、ATK 从表驱动改成可手动调整的公式；随后又要求去掉老的表接口兜底，并给常量逐行补中文注释。工作目录是 `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo`。

## Task 1: 公式化等级经验与属性成长

Outcome: success

Preference signals:
- 用户说“我现在想要用公式的，你觉得应该怎么改好呢” -> 未来类似问题应优先给出“保留入口、替换内部计算”的最小改法，而不是先扩表或大改架构。
- 用户确认“对，行，那你帮我改一下” -> 用户希望在方案确认后直接落地修改，不需要再反复展开讨论。
- 用户随后补充“GetLevelConfig为什么要保留老调研兜底，不用，你直接换掉” -> 未来当用户明确要彻底切换到公式时，应删除旧表接口兜底，而不是保留兼容层。
- 用户要求“这些后面加注释，不然看不懂” -> 未来类似常量块应默认附上简短中文注释，方便他们直接调参。

Key steps:
- 先读 `PlayerLevelMgr.lua`，确认当前是 `DT_PlayerLevelConfig.ExpRequired` 驱动等级、`AttackBonus/HealthMaxBonus` 驱动升级属性；`BaseMons.lua` 仍只调用 `PlayerLevelMgr:AddExp(...)`，所以改动可集中在 `PlayerLevelMgr`。
- 先做独立 PowerShell 公式校验，验证了用户指定的曲线：1 级升 2 级需求 60，2 级累计 60，3 级累计 163；`1.72` 的经验增长非常快。
- 实现时改成公式常量：`BASE_LEVEL_EXP = 60`, `EXP_GROWTH = 1.72`, `BASE_HP_BONUS = 4`, `BASE_ATK_BONUS = 2`, `ATTR_GROWTH = 1.025`，并把它们注释成可手调参数。
- 最终删除了 `GetLevelConfig`、`LEVEL_TABLE_PATH` 和旧字段依赖；`GetLevelByExp` 直接返回 `当前等级, 下一级累计经验阈值`，`AddExp` 直接写 `SetPlayerMaxExp(nextMaxExp)`。
- 由于文件中文注释编码混杂，最初按上下文打补丁失败，后来改成整文件替换更稳。

Failures and how to do differently:
- 早期按中文注释定位的 patch 因乱码/编码不稳失败；后续改用整文件替换和 ASCII 锚点更可靠。
- 一次 PowerShell 复查里把自定义函数名 `R()` 误触发成历史命令别名，导致验证脚本报错；后面改用不同函数名并用 `Select-String`/`Get-Content -Encoding UTF8` 做复核，避免这类 shell 解析陷阱。
- 用户明确要求“直接换掉”，说明不要保留“老接口兜底”这种看起来兼容、实际上多余的层。

Reusable knowledge:
- `PlayerLevelMgr.lua` 是该玩法的等级经验单点入口；怪物死亡加经验仍只通过 `PlayerLevelMgr:GetWaveKillExp()` + `AddExp()` 这条链路走，改等级公式通常不需要碰怪物脚本。
- 公式实现里，`GetCurrentLevelMaxExp(level)` 直接返回 `BASE_LEVEL_EXP * EXP_GROWTH^(level-1)` 就够了，没必要再读表。
- 用户给的曲线下，经验增长会在后期非常陡：10 级单级约 7905，50 级单级约 2.08e13；如果后面他们问“为什么这么难升”，优先提醒这是参数本身导致的。
- `UI02` 里仍会读取 `PlayerLevelMgr:GetCurrentLevelExp()` 和 `GetCurrentLevelMaxExp()`，所以这两个接口保留但语义改为公式值时，UI 能继续工作。

References:
- [1] `Script/Lin/PlayerLevelMgr.lua`：已改为公式实现；验证输出显示旧表字段名已无残留：`no-old-level-config-symbols`
- [2] 公式校验结果：`Level1Step=60`, `Level2Step=103`, `Level3Total=163`, `Level50Step=20847075961102`
- [3] `Select-String` 复查显示常量与函数都已落在 `PlayerLevelMgr.lua`，并且 `GetLevelConfig` 已不存在

## Task 2: 同步 `UGCPlayerState` 默认经验阈值

Outcome: success

Preference signals:
- 用户最初就写了“玩家默认【等级数值】：1 / 当前经验值：0 / 升阶需要经验值：60” -> 未来新玩家默认值应按这组三元组同步，而不是只改计算逻辑。
- 用户后来特意追问“你改好了吗” -> 他们在意的是最终文件是否都已经同步，不接受只改一半的回答。

Key steps:
- 更新 `Script/Blueprint/UGCPlayerState.lua`：`PlayerMaxExp = 60`、`ARCHIVE_KEYS` 里 `PlayerMaxExp` 的 `default = 60`、`GetPlayerMaxExp()` / `SetPlayerMaxExp()` 兜底值都改成 60。
- 复查 `PlayerLevelMgr.lua` 与 `UGCPlayerState.lua` 的对接，确保新玩家初始状态和公式“1 级升 2 级需要 60”一致。

Failures and how to do differently:
- `UGCPlayerState.lua` 里有多个 `default = 100`，其中大部分不是经验相关，不能批量替换；后来用 `Select-String` 精确定位，只改 `PlayerMaxExp` 那几处，避免误伤 `BaseMaxHp` / `Probability_Bonus` 等别的默认值。
- 复查时默认 PowerShell 编码会把中文注释显示得很乱；要看这类文件时直接用 `Get-Content -Raw -Encoding UTF8` 或按行读 UTF-8。

Reusable knowledge:
- `UGCPlayerState.lua` 里 `PlayerLevel = 1`, `PlayerExp = 0`, `PlayerMaxExp` 是存档/同步字段的一部分；如果等级公式改了，新玩家默认阈值要一起改，否则 UI 初始显示会和公式不一致。
- 这类默认值改动最好只碰对应字段，不要把同文件里其他 `default = 100` 一起改掉。

References:
- [1] `Script/Blueprint/UGCPlayerState.lua:29` 已变为 `PlayerMaxExp = 60`
- [2] `Script/Blueprint/UGCPlayerState.lua:125-127` `ARCHIVE_KEYS` 的 `PlayerMaxExp` 默认值已是 60
- [3] `Script/Blueprint/UGCPlayerState.lua:271-276` `GetPlayerMaxExp()` / `SetPlayerMaxExp()` 兜底值已改为 60
