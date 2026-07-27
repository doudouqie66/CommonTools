thread_id: 019f6ad6-7065-7a82-a561-5aca0fe0f3e6
updated_at: 2026-07-16T12:35:33+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\16\rollout-2026-07-16T20-11-11-019f6ad6-7065-7a82-a561-5aca0fe0f3e6.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Attempted to make `MyTree` monsters flee backward for ~2s when hit, but the behavior still did not work reliably.

Rollout context: The user was in the Douluo checkout and asked to modify the behavior tree at `UGCGameSystem.GetUGCResourcesFullPath('Asset/Blueprint/Lin/Monster/Actor/MyTree.MyTree')` so that when a monster is attacked it would run backward for 2 seconds, then resume finding and attacking the player. The work was done through the local MCP editor tools on port `12463`.

## Task 1: Connect to local MCP and inspect the existing behavior tree before editing

Outcome: success

Preference signals:

- The user asked in Chinese whether MCP could be used to modify the behavior tree and gave the asset path directly -> future agents should treat direct editor modification via MCP as expected and start from the live asset.
- The user later said they wanted to modify the reaction to being hit, not to redesign the whole AI -> future agents should keep changes minimal and local to the behavior tree.

Key steps:

- Verified the local MCP service on `127.0.0.1:12463` and used `ue_read` to query the BT tool support and the current `MyTree` asset.
- Read the current tree with the structured BT query and confirmed:
  - asset path: `/Douluo/Asset/Blueprint/Lin/Monster/Actor/MyTree.MyTree`
  - blackboard asset: `/Game/UGC/UGCGame/NPC/Mob_Base/BB_UGC_Generic_Base.BB_UGC_Generic_Base`
  - the tree already had `Target`, `SelfActor`, `bAssailant`, `TargetLocation`, `AttackDistance`, `PatrolMoveSpeed`, `PursuitMoveSpeed`, etc.
  - the root selector already had a `[Generic]寻敌` service.
- Read node schemas and enums for `BTTask_Generic_SidesShift`, `BTDecorator_DoesRecentlyBeAttacked`, `BTDecorator_Blackboard`, and `EBTFlowAbortMode`.
- Confirmed `BTTask_Generic_SidesShift` can move `Back`, `Left`, or `Right`, and that `BTDecorator_DoesRecentlyBeAttacked` has `InValidAttackTime` and `FlowAbortMode`.

Failures and how to do differently:

- A first structured BT query attempt failed because the tool expected a pure `query_type` call rather than a `queries` payload with placeholder strings. Switching to `query_type='bt'` worked.
- A pure-query `ue_py` call that tried to inspect node identity failed when `bt_get_node` didn’t accept the names I guessed. The successful approach was to inspect `bt_query(bt)` output and use that for topology.

Reusable knowledge:

- `MyTree` is already using the shared blackboard `BB_UGC_Generic_Base`; the key names that matter are `Target`, `SelfActor`, and `bAssailant`.
- The root node object name is `BTComposite_Selector_5`, while the display name is just `Selector`, so node-name collisions are possible if you address nodes by display name only.
- The live BT query output is the best source of truth for child order and decorators when node names repeat.

References:

- Asset path: `/Douluo/Asset/Blueprint/Lin/Monster/Actor/MyTree.MyTree`
- Blackboard asset: `/Game/UGC/UGCGame/NPC/Mob_Base/BB_UGC_Generic_Base.BB_UGC_Generic_Base`
- Confirmed keys: `Target`, `SelfActor`, `bAssailant`, `TargetLocation`, `AttackDistance`, `PatrolMoveSpeed`, `PursuitMoveSpeed`
- Root object name: `BTComposite_Selector_5`
- BT query output showed the root already had a `[Generic]寻敌` service and that the main combat branch already uses `bAssailant`/`Target` conditions.

## Task 2: Add a hit-react backward-flee branch to `MyTree`

Outcome: partial

Preference signals:

- The user wanted the monster to “往反方向跑2秒，然后再寻找人去攻击” -> future agents should prefer a minimal behavior-tree-only change first, not a broader AI rewrite.
- The user explicitly asked whether a blackboard should also be created -> future agents should be willing to use a new blackboard if the existing one proves inadequate, but only after confirming the current one can’t express the trigger.

Key steps:

- Added a new high-priority branch at the root selector:
  - composite `HitReact_Flee_2s`
  - decorator `HitReact_RecentlyAttacked_2s`
  - task `HitReact_BackShift_2s` using `BTTask_Generic_SidesShift`
- Initial parameters were:
  - `InValidAttackTime = 2.0`
  - `FlowAbortMode = Both`
  - `SideWay = Back`
  - `MoveSpeed = 600`
  - `MoveFactor = 1200`
  - `MoveStep = 1`
- The initial direction basis used `Target` as the movement center, and later it was corrected to `SelfActor` after realizing “Back” is relative to the movement center object’s orientation.
- The asset was saved successfully and read back with `bt_query`, which showed the branch connected under the root selector and `0 orphan` nodes.

Failures and how to do differently:

- The first version did not produce the intended movement direction because the task centered on `Target`, so “Back” was computed relative to the target’s orientation rather than the monster’s own orientation. The fix was to change the center to `SelfActor`.
- The branch still did not visibly make the monster flee during gameplay, indicating the runtime trigger condition was wrong, not just the movement parameters.
- `DoesRecentlyBeAttacked` did not appear to be the right trigger for this Generic monster setup; later evidence showed the existing tree uses `bAssailant`/`Target` as its combat-entry conditions.

Reusable knowledge:

- `BTTask_Generic_SidesShift` is a plausible way to implement side/back movement for Generic mobs.
- `SideWay=Back` only means “move backward” relative to the task’s movement center object.
- A root-selector branch order matters here: the new flee branch was inserted directly after the opening wait branch and before the existing combat selector.

References:

- New branch names: `HitReact_Flee_2s`, `HitReact_RecentlyAttacked_2s`, `HitReact_BackShift_2s`
- Final movement parameters after the direction fix:
  - `TargetKey = SelfActor`
  - `SideWay = Back`
  - `MoveSpeed = 600`
  - `MoveFactor = 1200`
- Initial trigger decorator: `BTDecorator_DoesRecentlyBeAttacked(InValidAttackTime=2.0, FlowAbortMode=Both)`
- `bt_query` later showed the branch connected under the root selector and the task params persisted as above.

## Task 3: Debug why the flee branch still didn’t execute and consider blackboard changes

Outcome: partial

Preference signals:

- After the user reported “还是没有，还是追着人打，没有反方向逃跑”, they explicitly proposed creating a blackboard themselves and asked whether the agent should update the blackboard content too -> future agents should not dismiss user-created support assets; if the runtime trigger seems wrong, they can pivot to a dedicated blackboard rather than insisting on the original shared one.
- The user repeatedly interrupted the turn when the current approach was not working -> future agents should expect midstream pivots and verify after every mutation rather than bundling several changes at once.

Key steps:

- Inspected the existing tree’s decorators in detail and found that the actual combat entry/attack logic uses `bAssailant` and `Target`, not `DoesRecentlyBeAttacked`.
- Searched logs and saw no `HitReact`/`SidesShift` runtime error; the problem looked like a non-triggering condition rather than a node failure.
- Read the BT decorator schemas to confirm the condition types:
  - `BTDecorator_Blackboard` supports `BasicOperation` = `Set` / `NotSet`
  - `BTDecorator_Cooldown` has only `CoolDownTime`, `bInverseCondition`, and `FlowAbortMode`
- The user then created a new blackboard asset path and asked to retry using it: `UGCGameSystem.GetUGCResourcesFullPath('Asset/Blueprint/Lin/Monster/Actor/MyBlack.MyBlack')`.

Failures and how to do differently:

- The previous trigger decorator was likely the root cause: `DoesRecentlyBeAttacked` never appeared to fire for this Generic monster setup.
- The tree already used the shared generic blackboard successfully, but the user’s new `MyBlack` blackboard is a reasonable fallback if the existing trigger model cannot be made to work.
- The rollout ended before the agent could finish replacing the flee branch condition with the blackboard-based `bAssailant`/`Target` trigger and a cooldown.

Reusable knowledge:

- The tree’s root combat selector uses `bAssailant` and `Target` as the meaningful blackboard gates.
- `BTDecorator_Blackboard` is likely the correct mechanism for `Is Set` conditions in this tree.
- `BTDecorator_Cooldown` can be used to prevent the flee branch from re-triggering continuously.

References:

- Evidence from tree readback: the root selector’s child combat selector had decorators keyed on `bAssailant` and `Target`.
- `BTDecorator_Blackboard` schema showed `BasicOperation` with `Set`/`NotSet`.
- `BTDecorator_Cooldown` schema showed `CoolDownTime` and `FlowAbortMode`.
- User-supplied new blackboard path: `UGCGameSystem.GetUGCResourcesFullPath('Asset/Blueprint/Lin/Monster/Actor/MyBlack.MyBlack')`
