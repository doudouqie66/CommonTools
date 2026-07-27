thread_id: 019f729e-7f25-70c3-9f5d-8a1f47fb816a
updated_at: 2026-07-18T00:30:49+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\18\rollout-2026-07-18T08-27-03-019f729e-7f25-70c3-9f5d-8a1f47fb816a.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Monster first-hit retreat direction fix in Douluo

Rollout context: In `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo`, the user asked about a monster that randomly runs away after taking damage and wanted it to run left/right/back randomly, but never forward toward the attacking player. The work centered on `Script/Lin/MonsSpawMgr.lua`, especially `MonsterSpawnMgr.FirstHitRunAway`.

## Task 1: Design the retreat-direction change

Outcome: success

Preference signals:
- The user asked in Chinese: “现在想要实现往左右后随机角度都行，就是不要往前，就是不要往朝打他的玩家这边过来的效果，应该怎么改好呢” -> this indicates they want the retreat to exclude the attacker-facing direction by default, not just a generic random flee.
- After the initial proposal, the user explicitly chose: “行你帮我改A吧” -> in similar small behavior changes, the user is comfortable picking a concrete option from a few alternatives and wants the chosen option implemented directly.

Key steps:
- The existing implementation in `MonsSpawMgr.lua` was identified as full-circle random flee:
  - `local Angle = math.random() * 2 * math.pi`
  - `MoveLoc` computed from `cos/sin` of that angle.
- The assistant proposed 3 options and recommended the “rear half-circle” approach so the monster can move back/left-back/right-back but not toward the player.
- The user selected option A (rear half-circle random).
- After approval, the file was patched so the move angle is centered on the direction away from the target pawn rather than a 360° random angle.

Failures and how to do differently:
- The rollout initially paused for design approval before editing, which matches the user’s acceptance path here; do not skip this pattern when the request is a behavior change rather than a pure question.
- TDD/verification skills were invoked, but for this Lua repo there was no existing unit-test harness, so verification was done with a small math regression check instead of a full code test.

Reusable knowledge:
- `Script/Lin/MonsSpawMgr.lua` owns the first-hit flee logic through `MonsterSpawnMgr.FirstHitRunAway`, and many monster prefabs call it from `PostTakeDamageEvent`.
- The previous implementation used a full random angle and therefore could move toward the attacker.
- The new behavior is implemented by computing the angle from monster to target and then adding a random offset within ±π/2.

References:
- [1] `Script/Lin/MonsSpawMgr.lua` lines 74-79 before/after context: old `math.random() * 2 * math.pi` replaced with:
  - `local TargetLoc = TargetPawn:K2_GetActorLocation()`
  - `local BaseAngle = math.atan(SelfLoc.Y - TargetLoc.Y, SelfLoc.X - TargetLoc.X)`
  - `local Angle = BaseAngle + (math.random() - 0.5) * math.pi`
- [2] Direction validation command: a PowerShell check over multiple player/monster positions printed `direction-check passed`.
- [3] The old math check intentionally failed with: `旧算法可朝玩家移动: dot=90000`, confirming the original behavior could flee toward the player.

## Task 2: Implement and verify the runtime-safe Lua edit

Outcome: success

Preference signals:
- The user wanted a direct code change, not just advice, after selecting the approach.
- The requested effect was narrowly scoped to this monster flee behavior, implying future similar fixes should stay minimal and local unless the user asks for broader refactors.

Key steps:
- Patched only the target-point calculation in `MonsSpawMgr.lua`; all downstream logic stayed unchanged:
  - `PauseBehavior`
  - `SetMaxSpeed`
  - `MoveTo`
  - delayed `ResumeFirstHitBehavior`
- Verified the edited lines in the file after patching.
- Ran a small directional sanity check that sampled multiple attacker positions and 1000 angles per case to confirm the new algorithm never produced a destination on the attacker-facing side.

Failures and how to do differently:
- The repo did not expose a ready-made Lua test file, so the verification had to be done as a small ad hoc math script rather than a formal test command.
- Avoid broad behavioral rewrites here; the safe change was to adjust only the flee vector generation while leaving state/behavior-tree interaction intact.

Reusable knowledge:
- `MonsterSpawnMgr.GetInstigatorPawn(EventInstigator)` already returns the attacking pawn/controller source, so the retreat can be centered relative to that pawn without additional plumbing.
- `TargetPawn:K2_GetActorLocation()` is available and sufficient for computing an away-from-target heading here.
- The final edited region is around lines 74-79 of `Script/Lin/MonsSpawMgr.lua`.

References:
- [1] Final edited snippet:
  - `local SelfLoc = monster:K2_GetActorLocation()`
  - `local TargetLoc = TargetPawn:K2_GetActorLocation()`
  - `local BaseAngle = math.atan(SelfLoc.Y - TargetLoc.Y, SelfLoc.X - TargetLoc.X)`
  - `local Angle = BaseAngle + (math.random() - 0.5) * math.pi`
  - `local MoveLoc = Vector.New(SelfLoc.X + math.cos(Angle) * RunAwayDistance, SelfLoc.Y + math.sin(Angle) * RunAwayDistance, SelfLoc.Z)`
- [2] Verification output: `direction-check passed`
- [3] File path used by the user and edits: `c:/WeGameApps/rail_apps/OasisEraEditor(2001776)/ShadowTrackerExtra/UGCProjects/Douluo/Script/Lin/MonsSpawMgr.lua`
