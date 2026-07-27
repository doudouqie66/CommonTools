thread_id: 019f4efb-ae76-7e30-b44e-3fa464c16193
updated_at: 2026-07-11T02:35:52+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\11\rollout-2026-07-11T10-22-29-019f4efb-ae76-7e30-b44e-3fa464c16193.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Investigated server overload in a Lua-based UGC project and identified a mix of timer/listener leaks plus high-frequency network/load hotspots.

Rollout context: The user was working in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo` and asked why the server keeps getting overloaded / memory-like leakage, suspecting timers or RPC spam. The investigation was read-only first, then the user asked to patch the first two highest-risk issues, and finally asked what to do about monster damage-number RPC spam.

## Task 1: Find causes of server overload / leak

Outcome: success

Preference signals:
- The user said `查找我的项目里面的代码，试着帮我找出原因` -> in similar performance/leak reports, the next agent should do code-level root-cause hunting rather than giving generic advice.
- The user later narrowed to `先帮我改前两个` after the diagnosis -> they prefer the most likely/high-impact fixes first, not a broad cleanup sweep.

Key steps:
- Searched the repo for timers, RPCs, and message listeners, then inspected `UGCGameMode.lua`, `UGCPlayerController.lua`, `UGCPlayerPawn.lua`, `DropCleanupSystem.lua`, `UGCGlobalDamageCalculation.lua`, `AFKZone.lua`, and `RegenSystem.lua`.
- Confirmed from local docs that `UGCTimerUtility.CreateLuaTimer` and `RemoveLuaTimerByName` exist and that `UGCGenericMessageSystem.ListenObjectMessage` / `UnListenMessage` are the relevant listener APIs.
- Identified several load amplifiers:
  - `AFKZone.lua` creates a 5-second looping timer per player and only removes it on `OnEndOverlap`.
  - `UGCPlayerPawn.lua` registers `ListenObjectMessage(self, L_Enum_Event.Enum.ReFreshZhanLi_01, ...)` but had no matching EndPlay unlisten.
  - `DropCleanupSystem.lua` does low-frequency but very large-area scanning (`SCAN_INTERVAL = 10`, `SAFETY_RANGE = 100000`) over all player pawns.
  - `Fei.lua` sends movement RPCs every 0.1s while flying.
  - `UGCGlobalDamageCalculation.lua` sends a damage-number RPC on each qualifying hit.

Failures and how to do differently:
- Initial collaborator agents timed out / errored, but the main thread had enough evidence to continue. Future similar investigations should not block on sub-agents if the code search already surfaces strong candidates.
- The issue was not a single clean leak; it was a combination of lifecycle leaks and load amplification. Future agents should look for both memory-retention patterns and network/CPU flood patterns.

Reusable knowledge:
- In this repo, the strongest “timer leak” smell is a per-player named looping timer that is only removed from an overlap callback.
- For `UGCGenericMessageSystem`, the key lifecycle rule is: if `ListenObjectMessage` is used on a pawn-like object, check `ReceiveEndPlay` for a corresponding unlisten.
- `DropCleanupSystem` had already been rewritten once into a centralized scanner; the current version is a concentrated load hotspot rather than a per-item timer explosion.

References:
- [1] `Script/Blueprint/Lin/Actor/AFKZone.lua:28-41` — `AFKZone_<PlayerKey>` timer is started on overlap and only removed on end overlap.
- [2] `Script/Blueprint/UGCPlayerPawn.lua:636, 964-984` — `ListenObjectMessage(...ReFreshZhanLi_01...)` with no EndPlay unlisten before the patch.
- [3] `Script/Common/DropCleanupSystem.lua:15, 68-149` — `SCAN_INTERVAL = 10`, `SAFETY_RANGE = 100000`, and centralized scanning logic.
- [4] `Script/Blueprint/Attributes/UGCGlobalDamageCalculation.lua:104-106` — damage-number RPC uses `CallUnrealRPC_Unreliable` fallback.
- [5] Local docs: `D:\LvZhou\LvZhou\api\class\detail\和平全局接口\工具库\UGCTimerUtility.json` and `UGCGenericMessageSystem.json` confirmed signatures/semantics.

## Task 2: Patch the first two high-risk issues

Outcome: success

Preference signals:
- The user said `先帮我改前两个` -> they want the assistant to act on the first two ranked risks instead of waiting for a full redesign.
- The user accepted small, targeted edits rather than a large refactor.

Key steps:
- Updated `Script/Blueprint/UGCPlayerController.lua` so `CleanupPlayerTimers()` also removes `AFKZone_<PlayerKey>`.
- Updated `Script/Blueprint/UGCPlayerPawn.lua` so `ReceiveEndPlay()` unlistens `L_Enum_Event.Enum.ReFreshZhanLi_01` via `UGCGenericMessageSystem.UnListenMessage(self, ...)`.
- Verified the diff with `git diff` after patching.

Failures and how to do differently:
- `apply_patch` initially failed because the Pawn file had encoding/line-context mismatch around the comment block. The fix was to target the pure ASCII function signature line instead of the nearby Chinese comment context.
- After the patch, the assistant noted no Lua compile check was run; future similar edits should ideally validate syntax if a runtime is available.

Reusable knowledge:
- `CleanupPlayerTimers()` originally removed only `AutoPick_`, `ProbabilityBonus_`, and `AutoMeleeAttack_`; `AFKZone_` had to be added manually.
- The Pawn listener cleanup belongs in `ReceiveEndPlay()` immediately before the existing save/destroy flow.

References:
- [1] `Script/Blueprint/UGCPlayerController.lua:1580-1585` — patched cleanup function now includes `UGCTimerUtility.RemoveLuaTimerByName("AFKZone_" .. PlayerKey)`.
- [2] `Script/Blueprint/UGCPlayerPawn.lua:964-970` — patched `ReceiveEndPlay()` now begins with `UGCGenericMessageSystem.UnListenMessage(self, L_Enum_Event.Enum.ReFreshZhanLi_01)`.
- [3] `git diff` showed only these two intended edits plus an unrelated pre-existing `Script/Common/ue_enum_custom.lua` working-tree modification.

## Task 3: Reduce damage-number RPC spam

Outcome: success

Preference signals:
- The user asked `那应该怎么办` after being told this was a network hotspot -> they want concrete mitigation options, not just identification of the problem.
- The user accepted a tiered recommendation instead of a single dogmatic fix.

Key steps:
- Explained that the damage-number path is a network flood problem, not the primary memory leak.
- Recommended limiting, aggregating, or selectively disabling damage-number RPCs rather than making them reliable.
- Suggested a simple per-instigator throttle in `UGCGlobalDamageCalculation.lua` using a timestamp table and a minimum interval such as `0.12` seconds.

Failures and how to do differently:
- The recommended throttle was discussed but not implemented in code in this rollout; future agents should treat it as an adopted mitigation idea, not a verified change.
- The user-facing answer should emphasize that low-value visual RPCs are the first candidates for rate limiting when the server is already saturated.

Reusable knowledge:
- For visual-only feedback like damage numbers, the best first fix is usually rate limiting or batching, not reliable delivery.
- A reasonable first-pass target is roughly 8–12 RPCs/sec per player for this kind of effect if you need to preserve some feedback without saturating the server.

References:
- [1] `Script/Blueprint/Attributes/UGCGlobalDamageCalculation.lua:101-106` — the exact RPC site for monster damage numbers.
- [2] Suggested mitigation shape (not applied): `local DamageNumberLastSendTime = {}` plus a per-player interval gate before `CallUnrealRPC`.

