thread_id: 019f4589-95b5-7c71-ae33-a5c1f1cebec1
updated_at: 2026-07-09T06:34:14+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\09\rollout-2026-07-09T14-21-17-019f4589-95b5-7c71-ae33-a5c1f1cebec1.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# 将怪物血条数值显示改为 Ma_NumShow，并避免用 Tick 每帧刷文本

Rollout context: 用户在 Douluo 项目里修改怪物血条 UI（`Boss_HealthBar.lua`、`NPC_HealthBar.lua`）和 `Ma_NumShow.lua`，目标是把血条上的血量数字改成项目已有的“大数字格式”方法，同时尽量不破坏原血条的进度条/扣血表现。过程中用户连续纠正了实现方式：先不要覆盖原血条逻辑，后来又指出 `Tick` 每帧刷新太耗性能，要求改成事件驱动。

## Task 1: 将血条数字改成 Ma_NumShow 格式，并保留原血条表现

Outcome: partial

Preference signals:

- 用户说“帮我把血条的血量显示数值改成这个里面的方法” -> 说明未来遇到同类需求时，应优先复用现成格式化函数，而不是自己另写一套数值显示规则。
- 用户随后追问“为什么现在数值变化，血条没有变化，为什么这个血条不是用原来的” -> 说明用户关心的是“只改数字，不破坏原血条行为”，未来改 UI 时应默认保留原蓝图/父类血条逻辑。
- 用户又说“为什么好像没有执行父类的方法” -> 说明他希望在不影响父类行为的前提下做最小改动；如果重写了事件，必须明确确认父类行为是否仍会执行。
- 用户最后说“Tick你用这个啊，那这个很耗性能” -> 说明用户对每帧轮询敏感，默认更偏好事件驱动而非 Tick 方案。

Key steps:

- 先读取 `Boss_HealthBar.lua`、`NPC_HealthBar.lua` 和 `Ma_NumShow.lua`，确认 `Ma_NumShow.Format(value)` 是可直接复用的格式化入口。
- 在本地文档 `gp_docs/wiki/怪物血条.md` 里确认怪物血条控件的 Lua 回调是 `BP_CharacterHPChange(InHPCurrent, InHPMax)`，并查看 `UProgressBar` 有 `SetPercent(0..1)`。
- 先尝试在 `BP_CharacterHPChange` 里调用 `SuperClass.BP_CharacterHPChange`，但由于父类实现不是 Lua 成员函数，这条路并不能可靠地复用原逻辑。
- 又短暂改成 `Tick` 里每帧更新文本，但用户明确指出性能问题后，最终改回事件驱动：在 `BP_CharacterHPChange` 中手动调用 `ProgressBar_HP:SetPercent(...)`、`ProgressBar_LessBloodVFX:SetPercent(...)`，并把 `TextBlock_CurrentHP` / `TextBlock_TotalHP` 设为 `Ma_NumShow.Format(...)`。

Failures and how to do differently:

- 直接重写 `BP_CharacterHPChange` 时，不能假设 `SuperClass.BP_CharacterHPChange` 可用；这个类的原血条实现很可能在蓝图/原生层，Lua 里并没有可直接调用的父类函数。
- 仅在 `Tick` 里刷文本虽然简单，但会造成每帧开销，用户明确不接受；类似需求应优先找“血量变化事件”而不是轮询。
- 如果要保留原血条逻辑但只改数值显示，不能只更新文本；还要同步 `ProgressBar_HP` 和 `ProgressBar_LessBloodVFX`，否则血条表现会看起来“不动”。

Reusable knowledge:

- `Ma_NumShow.Format(value)` 是项目里现成的数值大字格式化入口；在 `StateMgr.lua`、伤害飘字等地方已经在用。
- 本地文档 `C:\Users\admin\gp_docs\wiki\怪物血条.md` 明确说明怪物血条 Lua 扩展点包括 `BP_CharacterHPChange(InHPCurrent, InHPMax)`，且 `UProgressBar` 提供 `SetPercent`。
- 对于 `UGCGenericCharacterPositionWidget` 这类怪物血条控件，若 Lua 里没有真正的父类回调可调用，就应在血量变化事件中自己同步进度条和文本，而不是依赖 `SuperClass`。

References:

- [1] `Script/Blueprint/Lin/Actor/Boss_HealthBar.lua` 最终改动点：
  - `function Boss_HealthBar:BP_CharacterHPChange(InHPCurrent, InHPMax)`
  - `self.ProgressBar_HP:SetPercent(Percent)`
  - `self.ProgressBar_LessBloodVFX:SetPercent(Percent)`
  - `self.TextBlock_CurrentHP:SetText(Ma_NumShow.Format(InHPCurrent))`
  - `self.TextBlock_TotalHP:SetText(Ma_NumShow.Format(InHPMax))`
- [2] `Script/Blueprint/Lin/Actor/NPC_HealthBar.lua` 同样逻辑，最终保留为事件驱动而非 Tick。
- [3] `Script/Ma/Ma_NumShow.lua`：`Ma_NumShow.GetNumShowData` / `Ma_NumShow.Format` / `Ma_NumShow.GetNumShow = Ma_NumShow.Format`。
- [4] 本地文档检索命中：`C:\Users\admin\gp_docs\wiki\怪物血条.md` 中明确给出 `BP_CharacterHPChange(InHPCurrent,InHPMax)` 示例和 `UProgressBar:SetPercent` 能力。
- [5] 失败证据：用户明确指出“Tick你用这个啊，那这个很耗性能”，说明 Tick 方案不符合需求。
