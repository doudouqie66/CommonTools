v1

## User Profile
The user works mainly in Windows/PowerShell on OasisEra/UGC Lua projects, especially `Douluo`, with recurring work in `chongzita`, `Lin_Template`, `HunHuan`, and `Test_Mons`, plus occasional adjacent desktop CSV files. They use Codex for exact repo-grounded edits, local-docs-first answers from `D:\LvZhou\LvZhou\`, runtime-log diagnosis, and live editor-state checks through the local MCP service on `127.0.0.1:12463`.

They care about exact local truth: concrete file paths, active widget names, asset paths, RPC strings, replicated field names, task IDs, log windows, current editor state, and the exact function or branch where a change belongs. For Douluo/Oasis code-local or editor-local questions, Chinese explanations are usually the best fit. When they already named the file, asset, log folder, widget, or control path, they usually want the shortest route to the real answer rather than broad design discussion.

Stable defaults: smallest practical diff, concise code, no unnecessary nil checks, no extra helper functions unless they reduce real complexity, and no Lua compile/syntax-compile checks on this machine. They often want diagnosis first when they explicitly say not to edit, then direct fixes or exact placements once the root cause is clear. Durable machine-level rules live in `C:\Users\admin\.codex\AGENTS.md`.

## User preferences
- For Douluo editor/blueprint/data-asset questions, verify MCP on `127.0.0.1:12463` and answer from live editor state when repo files are not the full truth.
- Explain Douluo/Oasis script roles, runtime bugs, and exact code-path findings in Chinese when the workflow is code-local or editor-local.
- Default to the smallest practical diff: concise code, no unnecessary nil checks, no extra helper functions unless they clearly reduce real risk.
- Skip Lua compile and syntax-compile checks entirely on this machine.
- Do not use Git unless the user explicitly asks for Git; use normal filesystem reads instead for file/content/change inspection.
- When logs are needed, start from `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\Saved\Logs`, enter the current project folder, and inspect the newest dated logs there.
- When the user names a concrete file, widget, asset path, or log folder, start there and answer from that exact path before broadening out.
- For unclear runtime/UI bugs, add small stepwise logs at the exact branch points, read the newest relevant logs directly, then remove the temporary logs after the root cause is confirmed.
- When they say not to edit yet, do diagnosis/review first and only switch to implementation after they ask.
- When they ask where to change something or want to edit it themselves, give the exact file/function/branch placement.
- For new variables/constants in user-facing Lua edits, follow the compact same-line comment shape `First_Hit_Run_Away_Distance  -- comment`.

## General Tips
- Environment: Windows + PowerShell. Main recurring checkouts are `Douluo`, `chongzita`, `Lin_Template`, `HunHuan`, and `Test_Mons`.
- Durable global defaults live in `C:\Users\admin\.codex\AGENTS.md`; prefer UTF-8 reads/writes on that file to avoid Chinese mojibake.
- Use `skills/douluo-mcp-http-check/SKILL.md` for MCP probing, `skills/douluo-mcp-plan-write-verify/SKILL.md` for MCP asset edits, and `skills/douluo-lua-log-debug-cleanup/SKILL.md` for log-first Douluo diagnosis.
- A reachable MCP port is not enough; confirm `initialize` and `tools/list` before claiming the editor service is usable.
- In these Lua projects, exact names matter: RPC names, replicated property names, widget names, event names, and asset paths should be checked literally.
- In `Lin_Template`, `GetReplicatedProperties()` lazy-sync entries should follow the template style `return {"Foo", "Lazy"}, {"Bar", "Lazy"}` rather than a single nested wrapper table.
- In Douluo stat/UI bugs, compare the first failing path with a later working path. Many issues are timing/order problems, not missing persistence or missing refresh calls.
- In `chongzita`, thin Lua wrappers often hide an editor-config or navmesh issue; do not over-attribute waypoint/respawn problems to script logic before checking live state.

## What's in Memory

### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\chongzita

#### 2026-07-17

- `UGCPlayerPawn.lua` movement attributes and pawn-state toggles: UGCPlayerPawn.lua, DisabledPawnState, UGCGeneralMoveSpeedScale, GravityScale, LuaBindIndexSuperClassLua
  - desc: Search first when the user points at `UGCPlayerPawn.lua` and asks where to write movement-speed, gravity, vault, or shoveling changes, or why a local switch still does not work.
  - learnings: pawn booleans were not the authoritative runtime gate here; `DisabledPawnState(...)` was the real control, and a DS log `LuaBindIndexSuperClassLua` error explained why a speed edit still failed upstream.

- Read-only respawn, waypoint, and patrol-layout diagnosis: Respawn, DA_GameModeGeneral, UGC_PlayerKilledEvent, WayPointArr, NavBounds is invalid, OneWayLoop
  - desc: Use for `chongzita` questions where the user wants exact editor locations, MCP-backed diagnosis, or a manual ten-floor waypoint layout without direct file edits.
  - learnings: respawn config and respawn trigger are separate concerns, `WayPointArr` membership beats any waypoint-ID guess, and the ten-floor patrol recommendation was one spawner plus three local points per floor.

### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo

#### 2026-07-17

- Exact code-path tracing for HUD visibility and player death respawn: NavigatorPanel, Fei.lua, MainWidget.lua, PawnDefeat, RespawnPlayer
  - desc: Search first when the user asks "where is this controlled" in Douluo and wants exact file/function/call-chain evidence for HUD visibility or player death/respawn behavior.
  - learnings: direction-marker hide is in `UGCPlayerController`, weapon-bar hide centralizes in `Fei.lua`, minimap likely needs editor-widget inspection, and player auto-respawn lives in `UGCGameMode.lua` `OnPawnDefeat` rather than the pawn death callback.

- First-hit monster retreat via live prefab binding and runtime debug: MyTree.MyTree, BehaviorControlComp.BehaviorTreeSetting.BehaviorTreePath, FirstHitRunAway, RunAwayDebug, PawnState.Action.Battle
  - desc: Use when Douluo monster flee/chase behavior is tied to exact prefab/BT assets and saved edits disagree with in-game behavior.
  - learnings: re-read the live prefab binding before editing, treat the flee as a one-shot per monster instance when asked, and if the monster resumes into `PawnState.Action.Battle`, inspect distance/speed/runtime state instead of assuming chase should restart.

### Global + machine/user config

#### 2026-07-17

- Global AGENTS coding-comment defaults: C:\Users\admin\.codex\AGENTS.md, First_Hit_Run_Away_Distance, same-line comment, Lua method comment
  - desc: Search first when the request is about durable Codex behavior instead of one repo; covers the active machine-level coding-comment rules in the global AGENTS file.
  - learnings: keep global wording short, store the exact example shape the user gave, and verify with a focused `Select-String` readback instead of broad file review.

### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template

#### 2026-07-16

- `UGCPlayerController` replication, `OnRep`, and archive flow: GetReplicatedProperties, RepLazyProperty, ShowTipsUIByServer, ReplicatorReceivedBunchFailed, SavePlayerArchiveData
  - desc: Search first when `PlayerGameLevel` sync, `OnRep_` tips, controller archive caching, or settlement-time save/load behavior is under review in `Lin_Template`.
  - learnings: exact RPC/property-name matching matters, lazy replication registration shape matters, and controller-side archive cache changes are not durable until GameMode saves before settlement.

- Clientlog-first tips chain and selected-file Lua checks: Clientlog, TagLog, SetTipText, UGCRequire, ToastItemClass, ReceiveBeginPlay
  - desc: Use when the user points at `Saved\Logs\Lin_Template`, a concrete Lua file, or one tip/toast symbol and wants a direct diagnosis or minimal file-local fix.
  - learnings: `TagLog` carried the decisive exceptions, `UGCRequire` results should stay local, and the durable tip fix was full-path class loading plus `SetTipText`/`LastToastTime` fixes.

### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo

#### 2026-07-15

- `DA_GameModeGeneral` task rewards and MCP mutation flow: DA_GameModeGeneral, TaskManager, TaskAwardList, PercentAwardList, ue_plan_submit
  - desc: Search for live-editor reward/task asset edits where the user wants current asset truth from MCP, not repo guesses.
  - learnings: the safe flow is inspect schema/current asset -> `ue_plan_submit` -> `ue_py` mutate -> save -> fresh read-back verification.

- UI02 task button triage and `GP_TaskManager` config failures: Button_152_OnClicked, OpenTaskMainUI, GP_TaskManager, config class NULL
  - desc: Use when the task button seems broken or the task UI opens empty and the user wants logs first, then the newest log analyzed.
  - learnings: if the click trace reaches `OpenTaskMainUI done`, pivot to missing GamePart/config load instead of editing the button again.

### Older Memory Topics

#### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo

- Player level tables, kill-exp propagation, XP UI refresh, and skill unlock thresholds: PlayerLevelMgr.lua, DT_PlayerLevelConfig, Client_RefreshPlayerExp, PlayerSkill_1
  - desc: Covers progression formulas, XP UI refresh, kill-exp propagation, avatar-level updates, and level-gated skill work; cwd=Douluo.

- TaskMgr config review, RPC boundaries, and gameplay hook propagation: TaskMgr.lua, RequestAddTaskProgress, AddTeamTaskProgressOnServer, KillMonster, daily task
  - desc: Use for task-progress bugs across UI, monsters, tower, and soul-ring hooks, especially when killer/team attribution matters; cwd=Douluo.

- MCP live editor mutation and `DA_GameModeGeneral` reward editing: 127.0.0.1:12463, ue_read, ue_py, ue_plan_submit, TaskAwardList
  - desc: Routes to Douluo live-editor asset work where the user wants current editor truth or direct MCP mutation rather than repo-only edits; cwd=Douluo.

- Weapon attack bonus and authoritative `AttackPower` sync: UGCPlayerPawn.lua, StateMgr.lua, AttackPower, CountFinalAttack, BaseAttack
  - desc: Routes to weapon-equip bugs where UI attack changed but real damage did not, especially when the user wants the fix through `StateMgr`; cwd=Douluo.

- DS timeouts, overload, and log-first runtime triage: DSlog, SlowTickFrame, ConnectionTimeout, LongTimeNoReceived, Profiling\CSV
  - desc: Search first for server timeout, reconnect, overload, profiling CSV, or "is this a leak or lag?" questions in Douluo; cwd=Douluo.

- Starter scripts, pawn/login review, and semantic task enums: blank new script, UGC_PlayerLoginEvent, ReFreshZhanLi_01, L_Enum.lua
  - desc: Covers blanking starter scripts, reading file-local pawn/login logic, and lightweight semantic enum cleanups in Douluo; cwd=Douluo.

- Stage matching APIs and fixed expansion timing: UGCMultiMode, RequestMatch, RequestReadyMatch, SetPlayerFill
  - desc: Search for stage matching control questions grounded in local docs and prior API lookups; cwd=Douluo.

- UI prefab defaults for `test.lua` and `t2.lua`: Class Defaults, Image_Teaching, Border_0, guided mask
  - desc: Use when the user needs exact editor navigation for where a UI field or guided-mask asset default is configured; cwd=Douluo.

- Matchmaking merge and 1-to-4 player join review: UGCGameMode.lua, ApplyPlayerJoinLimitCount, OpenPlayerJoin, Single Mode Game
  - desc: Covers validated Douluo lobby-fill logic and editor-side stage setup; cwd=Douluo.

- `PlayerStart_01` spawn authority and respawn point-1 control: FindPlayerStartByBornPointID, SetDefaultPlayerRespawnPointSelectionMethod, BornPointID
  - desc: Routes to point-1 spawn/respawn issues and PlayerStart-vs-GameMode ownership in Douluo; cwd=Douluo.

- JingJie/realm bonus wiring: JingJieConfig.csv, GetJingJieAddMaxHp, GetJingJieAddAtk, RealmConfig.GetAttrBonuses
  - desc: Covers desktop `JingJieConfig` edits and the split HP/attack realm-bonus display/calculation path; cwd=Douluo.

- HunHuan item flow, StateMgr updates, and respawn persistence: HunHuan_01.lua, L_Com.UseHunHuan, RefreshStateMgrProperty, UGCBackpackSystemV2
  - desc: Use for soul-ring item use, direct state updates, soul-mesh cleanup, and respawn-only restore bugs around HunHuan-related player state; cwd=Douluo.

- StateMgr base-stat sync and authoritative attribute writes: StateMgr.lua, UGCPlayerState.lua, Server_SetFinalMaxHp, Server_SetFinalAttack, MainUIInstance
  - desc: Routes to HP/combat-power refresh chains and the real authoritative write path for combat stats; cwd=Douluo.

- Classic item hooks and backpack API mismatches: HandleUse_Implementation, OnUseV2, UGCBackPackSystem, UGCBackpackSystemV2
  - desc: Use when the visible item script binds but the real runtime hook or backpack API path is different; cwd=Douluo.

- Soul-ring actor lifecycle cleanup: SoulMeshActor, AddTag("SoulMesh"), UGC_PlayerDeadEvent, DestroyActor
  - desc: Search here for persistent soul-ring visual actors, duplicate cleanup, or death-time actor-lifecycle issues in `UGCPlayerPawn`; cwd=Douluo.

- Auto melee, controller trigger path, and pickup-toggle wiring: TriggerWeaponEvent, Button_227_OnClicked, Server_LocalAutoMeleeAttack, SetAutoPickEnabled
  - desc: Routes to controller-driven auto-melee and pickup-toggle flows where the user wants the actual runtime trigger path; cwd=Douluo.

- UI02 messaging, asset tracing, and UI-driven RPC paths: UGCGenericMessageSystem, TextBlock_303, Button_4, UI12.lua
  - desc: Use for UI02 message routing, asset location tracing, teleport-menu explanation, and shared-widget overwrite bugs; cwd=Douluo.

- Monster drops, `CreateMonsWall`, and dungeon boss loot: BaseMons.lua, CreateMonsWall.lua, Probability_Bonus, Boss_1.lua, SpawnDrop
  - desc: Covers MainScene drop rules, duplicate-scene boss mapping, visible boss loot, respawn/scatter tuning, and bulk monster script propagation; cwd=Douluo.

- OasisEraEditor MCP blueprint tuning and asset diagnosis: 127.0.0.1:12463, ue_read, ue_py, Boss_5, damage-valid, box extent
  - desc: Use for live editor asset diagnosis where repo Lua was not enough and the real cause lived in blueprint defaults or unsaved editor state; cwd=Douluo.

- Damage calculation and monster attack debugging: UGCGlobalDamageCalculation.lua, AttackPower, MonsterAttackPower, GetCalculationResult
  - desc: Use for global damage-formula triage and deciding whether a combat bug lives in shared damage code or monster-side values; cwd=Douluo.

- Item scripting, probability-bonus consumables, and controller RPC helpers: Button_94, Server_EatAllSoulRings, Server_AddFixedBaseProperty, Probability_Bonus
  - desc: Covers localized item-script edits, one-click soul-ring eating, threshold-based stat growth, and controller-owned probability-bonus helpers; cwd=Douluo.

- Tower overlaps, UI/audio, and gated teleports: Client_SetTowerOutBoxVisible, Image_28, Attention.Attention, TowerPassWall.lua
  - desc: Search for overlap-driven UI/audio or item-gated teleport actor behavior in Douluo; cwd=Douluo.

- Health-bar widgets and Lua hotpath throttling: Boss_HealthBar.lua, NPC_HealthBar.lua, LessBloodShowTime, TITLE_CHECK_INTERVAL
  - desc: Covers HP bar/text behavior and selective throttling/removal of recurring Lua checks; cwd=Douluo.

#### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template

- Direct file-level tips/widget/lifecycle checks: UGCGameState.lua, L_TipsTool.lua, TipsMgr.lua, ToastItemClass, self.SuperClass.ReceiveBeginPlay(self)
  - desc: Use when the user points at one Lua file or one tip/toast symbol and wants a concrete keep/remove/fix answer; cwd=Lin_Template.

#### C:\Users\admin\.codex

- Global coding-comment defaults: C:\Users\admin\.codex\AGENTS.md, First_Hit_Run_Away_Distance, same-line comment, Lua method comment
  - desc: Search when the request is about durable Codex behavior rather than repo logic; this captures the machine-level coding-comment conventions; cwd=global Codex config.

- Persistent coding defaults and global rules: C:\Users\admin\.codex\AGENTS.md, concise code, no helper functions, skip Lua compile checks, no Git
  - desc: Use for machine-level defaults that should shape future coding help even outside Douluo, including terse edits, helper avoidance, compile-skip, Git avoidance, and log lookup; cwd=global Codex config.

#### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects

- Clone `PaTa.git` into sibling `chongzita`: chongzita, PaTa, rev-parse --is-inside-work-tree, Windows path
  - desc: Search first for exact-destination repo-clone requests around the UGCProjects sibling tree, especially when the target folder already exists; cwd=UGCProjects family.

#### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\HunHuan

- PIE missing-package blockers and Wwise association repair: GiftPackManager.lua, PathMgr.lua, MonsSpawMgr.lua, WwiseEvent, WwiseAudio
  - desc: Use for HunHuan PIE `file not found` chains, optional-package startup blockers, or broken Wwise event associations; cwd=HunHuan.

- Archive timing and MCP data-table repair: UGCPlayerStateSystem, SavePlayerArchiveData, Version, LotteryAwardConfig, /Douluo/, /HunHuan/
  - desc: Use when the user asks where archive data is read/written or when HunHuan data tables still point at stale `/Douluo/` assets; cwd=HunHuan.

- Official Oasis UI list/template reuse: UScrollBox, UListView, UGC_ReuseList2, OnUpdateItem, ScrollToStart
  - desc: Search for Unity-ScrollView analogs, official Oasis list-binding patterns, or why list refresh appears to jump; cwd=HunHuan.

#### C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Test_Mons

- Lobby-fill integration and toast/widget setup: UGCGameMode.lua, ToastManager.lua, W_ToastItem.lua, _G.ToastManager, AGENTS.md
  - desc: Covers Test_Mons lobby-fill checks, gray/broken toast widgets, child-widget timing, `_G.ToastManager` scope, and repo-local Codex setup; cwd=Test_Mons.

#### Desktop CSV workflow adjacent to Douluo

- `drop.csv` / `hunhuan.csv` maintenance: C:\Users\admin\Desktop\drop.csv, C:\Users\admin\Desktop\hunhuan.csv, DropItemInfo, HunHuanID, ItemID
  - desc: Covers desktop-side CSV generation and mapping edits outside the repo, including verified HunHuan ID ranges and synchronized multi-file updates; cwd=desktop CSV workflow.

#### ZipLineTemplate family

- Vertical movement, detach points, and state cleanup: BP_UGC_ZipLine.lua, DeattachAreaRadius, CurrentZipLineChild, DisabledPawnState
  - desc: Use for vertical zipline motion, detach-point meaning, blockade false positives, and cleanup before teleport in the shared template family; cwd=ZipLineTemplate family.
