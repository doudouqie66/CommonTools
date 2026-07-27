thread_id: 019f6dea-2939-7000-9c68-783146d7901a
updated_at: 2026-07-17T02:34:44+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T10-31-35-019f6dea-2939-7000-9c68-783146d7901a.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Diagnosed a login-time stat refresh race in Douluo without editing files

Rollout context: The user asked in Chinese to inspect a persistence-related bug in the Douluo project under `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo`, specifically that on entering the game the saved HP/attack were not refreshed until eating a soul ring, and explicitly said to only find the problem first, not to modify code.

## Task 1: Diagnose why persisted HP/attack are stale until eating a soul ring

Outcome: success

Preference signals:
- The user said: `先找问题，不要直接改` -> future runs should default to diagnosis/trace-first and avoid edits until the user explicitly asks.
- The user’s wording focused on `持久化相关` and the symptom `一进来那个血量和攻击力没有刷新，但是吃个魂环，他就又显示正常了` -> future runs should trace the persistence → login restore → UI refresh chain, not just inspect the save fields.

Key steps:
- The assistant invoked `using-superpowers` and `systematic-debugging` before exploring, then traced both the login/restore path and the soul-ring-use path.
- Read `UGCGameMode:UGC_PlayerLoginEvent`, which does call `PC.Pawn:RefreshStateMgrProperty(false)` after `LoadFromArchive`.
- Read `UGCPlayerPawn:RefreshStateMgrProperty`, which is the authoritative route that pushes `BaseAttack/BaseMaxHp` into pawn attributes and emits `Client_RefreshProperty`.
- Read `UI02:LuaInit` / `UI02:OnRefreshProperty`, which register `ReFreshProperty` and hand refreshes into `StateMgr:RefreshFromPlayerState(...)` only after the UI has been created.
- Read `UGCPlayerController:Client_RefreshProperty`, which broadcasts `ReFreshProperty` if `MainUIInstance` is absent.
- Read `HunHuan_01:OnUseV2` and `L_Com.UseHunHuan`, which update `PlayerState.BaseAttack/BaseMaxHp` and then explicitly send `Client_RefreshProperty`, explaining why eating a soul ring makes the display correct again.
- Checked the latest client Lua log and found the decisive ordering: `Client_RefreshProperty` arrived before `[UGCPlayerController] MainUI created`, with `GMPMessageList dose not have message: ReFreshProperty` / `listeners dose not exist: ReFreshProperty` in between.

Failures and how to do differently:
- A plausible initial explanation was “refresh never happens,” but the code and logs showed refresh does happen; the actual issue is timing/order, not absence.
- `StateMgr:SetUI()` resets `bServerSynced` and only initializes the UI; it does not cache an early property refresh. Future debugging should verify whether the first RPC can arrive before `UI02` registers its listeners.
- An unrelated DS log error existed (`attempt to index a nil value (global 'DropCleanupSystem')` in `UGCGameMode.lua:122`), but it was not the cause of the stat-display bug and should be treated separately.

Reusable knowledge:
- In this checkout, persisted base stats live in `UGCPlayerState` (`BaseAttack`, `BaseMaxHp`) and are included in `ARCHIVE_KEYS`; the bug was not missing persistence.
- The runtime “apply persisted stats to gameplay/UI” path is `UGCPlayerPawn:RefreshStateMgrProperty(...) -> Client_RefreshProperty -> UI02:OnRefreshProperty -> StateMgr:RefreshFromPlayerState(...)`.
- `UI02` registers `ReFreshProperty` in `LuaInit()` and only then calls `StateMgr:SetUI(self)`, so an early `Client_RefreshProperty` can be dropped if it arrives before UI construction.
- Eating soul rings goes through `HunHuan_01 -> L_Com.UseHunHuan -> Client_RefreshProperty`, which can mask an earlier missed login refresh.

References:
- [1] `Script/Blueprint/UGCGameMode.lua:191-229` — login restore path calls `LoadFromArchive`, then `PC.Pawn:RefreshStateMgrProperty(false)`, `RestoreHP`, and `RefreshSoulMesh`.
- [2] `Script/Blueprint/UGCPlayerPawn.lua:1046-1080` — `RefreshStateMgrProperty` sets health/healthmax and sends `Client_RefreshProperty`.
- [3] `Script/Blueprint/UI/UI02.lua:657-723` — `LuaInit()` registers `ReFreshProperty`, then `StateMgr:SetUI(self)`, and `OnRefreshProperty()` forwards into `StateMgr:RefreshFromPlayerState(...)`.
- [4] `Script/Blueprint/UGCPlayerController.lua:1969-1976` — `Client_RefreshProperty` falls back to broadcasting `ReFreshProperty` when `MainUIInstance` is not ready.
- [5] `Script/Blueprint/Prefabs/Items/Lin/HunHuan_01.lua:10-27` and `Script/Lin/L_Com.lua:18-31` — soul-ring use updates `PlayerState.BaseAttack/BaseMaxHp` and sends `Client_RefreshProperty`.
- [6] Latest client log: `10:31:47 Client_RefreshProperty` followed by `GMPMessageList dose not have message: ReFreshProperty` / `listeners dose not exist: ReFreshProperty`; `10:32:03 [UGCPlayerController] MainUI created`.

## Task 2: Note the unrelated startup error seen during verification

Outcome: partial

Preference signals:
- None specific beyond the user’s request to diagnose before editing.

Key steps:
- The DS Lua log also showed `UGCGameMode.lua:122: attempt to index a nil value (global 'DropCleanupSystem')` during `ReceiveBeginPlay`.

Failures and how to do differently:
- This error was present but not tied to the HP/attack refresh symptom; do not over-attribute it to the stat bug.

Reusable knowledge:
- There is a separate startup hazard in `UGCGameMode.lua` around `DropCleanupSystem` being nil, visible in the DS Lua log.

References:
- `LogScriptPlugin: Warning: [LuaException] ... UGCGameMode.lua:122: attempt to index a nil value (global 'DropCleanupSystem')`

