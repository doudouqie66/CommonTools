thread_id: 019f603d-cf16-7602-8805-de003f75f982
updated_at: 2026-07-14T12:26:05+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\14\rollout-2026-07-14T18-48-20-019f603d-cf16-7602-8805-de003f75f982.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# 武器加成为什么“UI变了但伤害没变”的排查与改法定位

Rollout context: 用户在 Douluo 项目里追查武器装备后 UI 显示增加但实际伤害不变的问题，代码主要涉及 `Script/Blueprint/UGCPlayerPawn.lua`、`Script/Lin/StateMgr.lua`、`Script/Blueprint/UGCPlayerController.lua`、`Script/Blueprint/Attributes/UGCGlobalDamageCalculation.lua`。后续用户进一步追问“能不能都走 StateMgr”以及“我现在改的行不行”，希望得到能自己手改的明确位置和判断。

## Task 1: 追查武器加成未影响真实伤害的根因并给出修正位置

Outcome: partial

Preference signals:
- 用户连续追问“`StateMgr:WuQiTextShow(AttackPercent)`可是这边不是调用了吗，那应该会走算 的逻辑啊” -> 说明用户希望沿实际调用链解释，而不是只给结论；未来类似问题要先拆分“UI 计算”和“服务端生效”两层。
- 用户说“我本来设想是都走那个statemgr，都能够自动加，所以是不行的是吗走那个statemgr” -> 说明用户偏好把武器加成统一收敛到 `StateMgr` 里，而不是单独在 `UGCPlayerPawn` 直接写属性；未来类似修改应优先评估是否能复用 `StateMgr` 的统一计算入口。
- 用户问“你在哪里加的”“我应该在哪里加，你告诉我，我自己改” -> 说明用户在这类改动里希望获得明确文件/函数/代码块位置，自己动手改，而不是只看抽象建议。
- 用户最后追问“你看下我现在改的行不行” -> 说明用户想要对现有编辑做逐行校验，未来应按“当前 diff 是否正确”来评审，而不是泛泛建议。

Key steps:
- 通过 `rg` 和 `Get-Content` 逐段确认：`UGCGlobalDamageCalculation.lua` 里真实伤害读取的是攻击者 Pawn 的 `AttackPower`；`StateMgr:CountFinalAttack()` 会把 `BaseAttack + 各种加成` 写到 `AttackPower`；而武器路径原来主要只是 `SetWeaponBonusPercent()` / `StateMgr:WuQiTextShow()` 做 UI 和本地显示。
- 发现武器服务端路径最初在 `ApplyWeaponAttackBonusByItemID()` 里只算了 `FinalAttack` 并打日志，没有真实写回 `AttackPower`，因此“UI 变了但伤害不变”。
- 先补了一个最小服务端写回：在 `ApplyWeaponAttackBonusByItemID()` 的服务端分支里写 `UGCAttributeSystem.SetGameAttributeValue(self, "AttackPower", FinalAttack)`，并用定点检查验证该写入已存在。
- 随后根据用户偏好把思路收敛到 `StateMgr`：用户手改后，`ApplyWeaponAttackBonusByItemID()` 改成服务端走 `StateMgr.WuQi = AttackPercent; StateMgr:CountFinalAttack(self)` 的方向；检查时发现这条路仍需要把 `StateMgr.BaseAttack` 和背包武器加成补齐，否则 `CountFinalAttack()` 可能用默认值算错。

Failures and how to do differently:
- 仅调用 `StateMgr:WuQiTextShow(AttackPercent)` 不足以证明真实伤害会变；它主要是本地 UI/客户端入口，真正是否生效要看服务端是否执行到 `CountFinalAttack()` 并写入 `AttackPower`。
- 只在 `UGCPlayerPawn` 里直接写 `AttackPower` 虽然能修复伤害，但和用户“都走 StateMgr”的设想不完全一致；如果要统一到 `StateMgr`，服务端应走不依赖 UI 的计算路径，而不是调用 `WuQiTextShow()`。
- `StateMgr:WuQiTextShow()` 原始实现只接收单个数值并直接刷新 UI；用户当前版本已经把它扩展成支持 `AttackPercent, SkipCount, BackpackAdd, BackpackCount`，所以后续应检查 `WuQiEquip / WuQiBackpack / WuQiBackpackCount` 是否都参与计算，避免只算当前装备不算背包。
- `StateMgr:CountFinalAttack()` 依赖 `StateMgr.BaseAttack`；服务端如果没先同步这个基础值，直接调用会算错。检查时已经看到 `StateMgr.BaseAttack` 在 `StateMgr.lua` 里有默认 `0`，并且 `SyncFromPlayerState()` / `RefreshFromPlayerState()` 才会填它。
- `UGCPlayerPawn.lua` 的修改点最好放在 `ApplyWeaponAttackBonusByItemID()` 里 `self.LastWeaponAttackKey = WeaponAttackKey` 之后的服务端分支，这样既能保留本地显示，又能确保最终属性写入只发生一次。

Reusable knowledge:
- 真实伤害链路在 `Script/Blueprint/Attributes/UGCGlobalDamageCalculation.lua:63-77`：玩家打怪时会优先读取攻击者 Pawn 的 `AttackPower`，因此 UI 侧的加成显示不等于伤害实际变化。
- `StateMgr:CountFinalAttack()` 在 `Script/Lin/StateMgr.lua:141-155` 中会计算 `FinalAttack = BaseAttack * (1 + AttackAddForce / 100)`，并在 Pawn 具有 authority 时直接写 `UGCAttributeSystem.SetGameAttributeValue(pawn, "AttackPower", FinalAttack)`。
- `SetWeaponBonusPercent()` 在 `Script/Blueprint/UGCPlayerPawn.lua:106-124` 里会把武器加成发给本地 `StateMgr` 做显示；当前版本还会汇总背包武器加成，并把装备加成与背包加成一起传给 `StateMgr:WuQiTextShow(AttackPercent, false, BackpackWeaponAttackPercent, BackpackWeaponCount)`。
- `StateMgr` 侧的 `WuQiTextShow()` 已经不是单纯显示函数了，当前版本会拆成 `WuQiEquip / WuQiBackpack / WuQiBackpackCount`，再把 `self.WuQi = self.WuQiEquip + self.WuQiBackpack`。
- `UGCPlayerPawn:ApplyWeaponAttackBonusByItemID()` 目前的服务端分支已经改到 `StateMgr.WuQi = AttackPercent; StateMgr:CountFinalAttack(self)` 的方向，但这条路是否正确取决于 `StateMgr.BaseAttack` 是否已同步，以及是否把背包武器百分比一起纳入。

References:
- [1] `Script/Blueprint/Attributes/UGCGlobalDamageCalculation.lua:63-77` 读取 `UGCAttributeSystem.GetGameAttributeValue(CauserActor, "AttackPower")` 作为真实伤害基础。
- [2] `Script/Lin/StateMgr.lua:141-155` 的 `CountFinalAttack()`：计算 `FinalAttack` 并在 authority 下写回 `AttackPower`。
- [3] `Script/Blueprint/UGCPlayerPawn.lua:106-124` 的 `SetWeaponBonusPercent()`：客户端本地显示入口，调用 `StateMgr:WuQiTextShow(...)`。
- [4] `Script/Blueprint/UGCPlayerPawn.lua:946-1006` 的 `ApplyWeaponAttackBonusByItemID()`：武器加成服务端处理入口；用户当前编辑已将服务端分支改为走 `StateMgr`。
- [5] `Script/Lin/StateMgr.lua:1-16`：`StateMgr` 默认 `BaseAttack = 0`，说明服务端如果没先同步基础值，直接计算可能出错。
- [6] 用户当前手改后的关键片段：`if self:HasAuthority() then StateMgr.WuQi = AttackPercent; StateMgr:CountFinalAttack(self) ... end`，检查结论是“方向对，但还缺基础攻击和背包武器加成同步”。
