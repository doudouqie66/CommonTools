thread_id: 019f6ed6-1d11-7792-97e3-5dae73e5223d
updated_at: 2026-07-17T11:19:38+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T14-49-18-019f6ed6-1d11-7792-97e3-5dae73e5223d.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Fixed the Douluo UI02 first-load stale stats issue by making UI init request a fresh server-side resend of archived properties and exp/level state.

Rollout context: The user asked why the attack value in UI02 did not refresh on entering the game, seemed to show default values until a soul ring was consumed, then asked to modify the code. After the attack fix, the user asked whether experience/level should be refreshed too.

## Task 1: Trace the stale first-load attack UI and identify the refresh chain

Outcome: success

Preference signals:

- The user said: "你先帮我找找UI" after describing the attack display as wrong on initial entry but correct after consuming a soul ring -> they want root-cause tracing before edits, and prefer locating the exact UI/control chain first.
- The user later asked: "那应该怎么修改好呢" -> they were open to a concrete fix once the data flow was explained, rather than just a theory.

Key steps:

- Located UI02’s attack label as `gjl` and the refresh entry as `UI02:OnRefreshProperty(...)`, which delegates to `StateMgr:RefreshFromPlayerState(...)` and `StateMgr:CountFinalAttack()`.
- Confirmed the first-load path is: `UGCGameMode:UGC_PlayerLoginEvent` -> `UGCPlayerState:LoadFromArchive` -> `UGCPlayerPawn:RefreshStateMgrProperty(false)` -> `UGCPlayerController:Client_RefreshProperty(...)` -> `UI02:OnRefreshProperty(...)`.
- Confirmed the UI can miss the first server push if `MainUIInstance` is not ready yet, because `Client_RefreshProperty` falls back to a global broadcast that is not cached for later UI listeners.

Failures and how to do differently:

- The first UI pass was not the bug; the bug was timing/state propagation. Future investigations should check whether the UI is listening when the first server push happens, not only whether the UI code exists.

Reusable knowledge:

- `UI02` does not directly compute attack; `StateMgr` writes `TextBlock_303` / `gjl`.
- `bArchiveLoaded` is the server-side guard that distinguishes pre-archive and post-archive state propagation.
- The UI fallback broadcast path is not durable state; if the UI is not listening yet, that one-shot update can be lost.

References:

- [1] `Script/Blueprint/UI/UI02.lua:716-728` — `OnRefreshProperty` routes into `StateMgr`.
- [2] `Script/Lin/StateMgr.lua:141-158` — `CountFinalAttack()` formats and writes the attack label.
- [3] `Script/Blueprint/UGCGameMode.lua:191-229` — login/load/refresh ordering.
- [4] `Script/Blueprint/UGCPlayerController.lua:1969-1977` — `Client_RefreshProperty` fallback broadcast if UI is missing.

## Task 2: Add a UI-init-driven server refresh for archived stats and verify it by readback

Outcome: success

Preference signals:

- The user said: "行，那你帮我改一下" -> they wanted the fix applied directly after the diagnosis, not more discussion.
- The user implicitly accepted the small, targeted fix approach rather than a broader refactor when the assistant proposed only a server-request refresh.

Key steps:

- Added `Server_RequestRefreshProperty` to `UGCPlayerController:GetAvailableServerRPCs()`.
- Implemented `UGCPlayerController:Server_RequestRefreshProperty()` to:
  - require `pawn` and `playerState`,
  - require `playerState.bArchiveLoaded == true`,
  - call `pawn:RefreshStateMgrProperty(false)` to resend archived base stats to the client.
- Updated `UI02:LuaInit()` so that after `StateMgr:SetUI(self)` it immediately calls `UnrealNetwork.CallUnrealRPC(PlayerController, PlayerController, "Server_RequestRefreshProperty")`.
- Read back the patch to confirm the RPC is registered, the server handler exists, and the UI calls it after listener registration.

Failures and how to do differently:

- There was no compile/runtime verification in the rollout; validation was limited to file readback. Future similar edits should still add a runtime check if available.

Reusable knowledge:

- In this project, client-triggered server RPCs must be registered in `GetAvailableServerRPCs()`.
- For timing issues where UI may be created before/after the authoritative state is ready, a UI-init-triggered server refresh is a clean way to make the server resend the current authoritative state.

References:

- [1] `Script/Blueprint/UGCPlayerController.lua:124-138` — RPC whitelist now includes `Server_RequestRefreshProperty`.
- [2] `Script/Blueprint/UGCPlayerController.lua:1976-1994` — server-side refresh handler.
- [3] `Script/Blueprint/UI/UI02.lua:661-667` — UI init now requests the refresh after registering `ReFreshProperty` and `StateMgr:SetUI(self)`.

## Task 3: Extend the same fix to experience/level display

Outcome: success

Preference signals:

- The user asked: "你再看一下经验的，有没有可能那边经验和等级的也顺便刷一下" -> they prefer adjacent state issues to be handled in the same pass when the same root cause applies.
- This also indicates they care about keeping the first-load UI coherent across multiple panels, not just the attack number.

Key steps:

- Verified `UI02:RefreshPlayerExpUI()` reads local `PlayerState` on first render, so it has the same first-load timing risk as attack/HP.
- Confirmed `UGCPlayerController:Client_RefreshPlayerExp(...)` already exists and `Client_RefreshPlayerExp` is already in the RPC whitelist.
- Added `local PlayerLevelMgr = UGCGameSystem.UGCRequire("Script.Lin.PlayerLevelMgr")` to `UGCPlayerController.lua`.
- Extended `Server_RequestRefreshProperty()` to also compute and send the current exp-bar values from the archived fields:
  - `playerState:GetPlayerExp()`
  - `playerState:GetPlayerLevel()`
  - `playerState:GetPlayerMaxExp()`
  - `PlayerLevelMgr:GetCurrentLevelExp(...)`
  - `PlayerLevelMgr:GetCurrentLevelMaxExp(...)`
  - then `UnrealNetwork.CallUnrealRPC(self, self, "Client_RefreshPlayerExp", currentExp, currentMaxExp, playerLevel)`
- Read back the result and confirmed the function closes correctly.

Failures and how to do differently:

- No separate RPC was needed; reusing the same server request avoided expanding the network surface. Future fixes for related UI state should look for already-existing client refresh RPCs first.

Reusable knowledge:

- Experience/level display is driven by `UI02:RefreshPlayerExpUI(...)`, and the avatar frame level uses `Client_RefreshPlayerExp(...)` to update `Avarar_frame:SetPlayerStateLevel(...)`.
- `PlayerLevelMgr` is the canonical helper for converting total exp + level into current exp and next threshold.

References:

- [1] `Script/Blueprint/UI/UI02.lua:828-855` — `RefreshPlayerExpUI()` reads `PlayerState` and can fall back to local values.
- [2] `Script/Blueprint/UGCPlayerController.lua:1998-2005` — existing `Client_RefreshPlayerExp` updates both the exp UI and the avatar level.
- [3] `Script/Lin/PlayerLevelMgr.lua:90-149` — exp/level math and level-bonus application.
- [4] `Script/Blueprint/Prefabs/UI/Avarar_frame.lua:29-31, 82-88` — avatar level display uses the player state level when present.
