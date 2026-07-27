thread_id: 019ef775-5d96-7d12-8055-be52b4781eec
updated_at: 2026-06-24T02:31:15+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\06\24\rollout-2026-06-24T10-28-49-019ef775-5d96-7d12-8055-be52b4781eec.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Fixed residual soul-ring actor cleanup on player death in Douluo

Rollout context: The user was editing `Douluo/Script/Blueprint/UGCPlayerPawn.lua` in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo` and reported that the character’s “魂环” remained after death. The agent inspected the pawn script, searched local docs for spawn/destroy/attach APIs, and then patched the file.

## Task 1: Diagnose why the soul ring stays after death
Outcome: success

Preference signals:
- The user asked in Chinese: “人物死亡后，这个魂环会残留啊” -> future agents should treat this as a request for a concrete code fix, not just an explanation.
- The user then said “那你帮我改一下” -> future agents should proactively edit the file when the user asks for a fix, rather than only suggesting changes.

Key steps:
- Read `UGCPlayerPawn.lua` and found the soul ring is created by `CreateSoulMesh(player, HunHuan)` using `UGCActorComponentUtility.SpawnActor` to spawn a separate `StaticMeshActor`, then attaching it to `player.Mesh` with `AttachToComponent`.
- Searched local docs for lifecycle/destroy APIs and confirmed `UGCActorComponentUtility.DestroyActor` exists and is the relevant destroy call.
- Searched the project for death/end-play hooks and found `UGCGameMode.lua` uses `UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnDefeat`; `UGCPlayerPawn.lua` itself only had `ReceiveBeginPlay()` and no cleanup hook.

Failures and how to do differently:
- The first diagnosis confirmed the likely root cause: the soul ring is an independent spawned actor, so it will not disappear automatically just because the pawn dies or respawns.
- The main fix pattern for this kind of issue is to clean up both on death and on pawn teardown, because death/respawn can replace the pawn instance and leave the old actor reference behind.

Reusable knowledge:
- In this project, soul ring visuals are not a component on the pawn; they are a separate spawned `StaticMeshActor`. That means they need explicit destruction on lifecycle exit.
- Local API docs under `C:\Users\admin\gp_docs\api\class\detail\和平全局接口\基础功能\UGCActorComponentUtility.json` include `SpawnActor`, `DestroyActor`, `AttachToComponent`, and `DetachFromParent`; `DestroyActor` is the cleanup primitive used here.
- `UGCGameMode.lua` listens to `UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnDefeat`, which is a useful place to look when trying to hook death behavior in this codebase.

References:
- [1] `UGCPlayerPawn.lua` original pattern: `player.SoulMeshActor = UGCActorComponentUtility.SpawnActor(...)` followed by `UGCActorComponentUtility.AttachToComponent(...)`
- [2] Local doc lookup: `UGCActorComponentUtility.json` contains `DestroyActor` and `SpawnActor`
- [3] Project search hit: `UGCGameMode.lua` contains `UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnDefeat` and `OnPawnDefeat`

## Task 2: Patch cleanup into UGCPlayerPawn.lua
Outcome: success

Preference signals:
- The user requested “帮我改一下” -> future agents should perform the edit directly when asked, and keep the patch narrowly scoped to the reported bug.

Key steps:
- Added a helper `DestroySoulMesh(player)` that checks `player.SoulMeshActor` and calls `UGCActorComponentUtility.DestroyActor(player.SoulMeshActor)` before clearing the reference.
- Refactored `CreateSoulMesh(player, HunHuan)` to call `DestroySoulMesh(player)` up front instead of inlining the same cleanup logic.
- Added `UGCPlayerPawn:UGC_PlayerDeadEvent(Killer, DamageType)` to destroy the soul ring on death.
- Added `UGCPlayerPawn:ReceiveEndPlay()` to destroy the soul ring as a teardown fallback, then call `UGCPlayerPawn.SuperClass.ReceiveEndPlay(self)`.
- Verified the final file content after patching.

Failures and how to do differently:
- No functional failure remained after the patch; the important prevention rule is to clean both on the death event and on `ReceiveEndPlay` because either can be the last chance to remove the spawned actor.

Reusable knowledge:
- The final cleanup pattern for this script is:
  - create separate helper `DestroySoulMesh(player)`
  - call it from `UGC_PlayerDeadEvent`
  - call it from `ReceiveEndPlay`
  - reuse it inside `CreateSoulMesh` before spawning a replacement
- This avoids stale actor leftovers when the pawn is replaced or the old reference is lost during respawn.

References:
- [1] Final inserted helper: `local function DestroySoulMesh(player)`
- [2] Final hook methods: `function UGCPlayerPawn:UGC_PlayerDeadEvent(Killer, DamageType)` and `function UGCPlayerPawn:ReceiveEndPlay()`
- [3] Final file path: `c:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo\Script\Blueprint\UGCPlayerPawn.lua`
- [4] Patch verification: `Get-Content` after edit showed the cleanup helper and hooks present
