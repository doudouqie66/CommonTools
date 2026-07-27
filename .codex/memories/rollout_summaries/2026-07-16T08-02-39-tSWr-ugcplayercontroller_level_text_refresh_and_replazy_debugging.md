thread_id: 019f69f2-fce1-7282-b44a-8cea9a8dc207
updated_at: 2026-07-16T10:51:49+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\16\rollout-2026-07-16T16-02-39-019f69f2-fce1-7282-b44a-8cea9a8dc207.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template

# Debugging why PlayerGameLevel UI refresh did not fire

Rollout context: The user worked in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template` on Lua UI/network sync code for `UGCPlayerController.lua`, `MainUI.lua`, `UGCGameState.lua`, and `L_Enum.lua`. The request evolved from refreshing a UI text block when `PlayerGameLevel` changes, to adding temporary logs to locate a broken level-up click path, to removing those logs after the feature worked, and finally to analyzing why `OnRep_PlayerGameLevel` was not firing as expected.

## Task 1: Refresh level text in UI

Outcome: partial

Preference signals:
- The user corrected the control name with: "我只是打错了TextBlock_73名字是这个" -> future edits should trust the user’s corrected control name and remove compatibility hacks for the wrong name.
- The user wanted the refresh to happen in `OnRep_PlayerGameLevel` on the existing UI rather than via a separate workaround -> future work should prioritize the replication path the user asked for.

Key steps:
- The UI was created in `UGCGameState:InitUI()` and the instance was stored on `PlayerController.MainUI_BP`.
- `MainUI:RefreshPlayerGameLevel()` was added to call `self.TextBlock_73:SetText(tostring(PlayerGameLevel))`.
- `OnRep_PlayerGameLevel` was wired to call `self.MainUI_BP:RefreshPlayerGameLevel(self.PlayerGameLevel)`.

Failures and how to do differently:
- Early attempts guessed the wrong widget name (`TextBlock_73z`) and added compatibility handling that the user later corrected.
- The first pass treated UI refresh as a direct controller-side operation, which is brittle because the UI exists on the client side.

Reusable knowledge:
- `UTextBlock:SetText(...)` is the correct API for updating the text block.
- The main UI is instantiated from `UGCGameState:InitUI()` on the client branch and stored on `PlayerController.MainUI_BP`.

References:
- `Script/Blueprint/UI/MainUI.lua`
- `Script/Blueprint/UGCGameState.lua`
- `Script/Blueprint/UGCPlayerController.lua`

## Task 2: Temporary debug logging to trace the level-up button path

Outcome: success

Preference signals:
- The user asked: "你帮我添加log，然后到时候log哪里断了就知道哪里问题，待会正常运行了再删掉log" -> future debugging should default to temporary breadcrumb logs, then be cleaned up once the issue is understood.
- The user later asked to remove the logs after the feature worked -> debug logs should be treated as disposable and removed once the root cause is found.

Key steps:
- Added `[LevelDebug]` logs across UI construction, button click, server `AddLevel`, lazy replication, `OnRep_PlayerGameLevel`, and UI refresh.
- Examined logs in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\Saved\Logs\Lin_Template`.
- The logs showed the button click and server-side `AddLevel` path executed, but `OnRep_PlayerGameLevel` did not appear on the client.

Failures and how to do differently:
- The initial logging patches repeatedly collided with encoded Chinese comments; smaller patches anchored to plain code lines were more reliable.
- One temporary log was inserted into `Construct` by mistake; it was later removed after reading back the file.

Reusable knowledge:
- The log prefix `[LevelDebug]` was useful for grepping the PIE logs.
- The client/server split in the logs was clear enough to distinguish: UI creation and button click were client-side, `AddLevel` was server-side.

References:
- Search handle: `[LevelDebug]`
- Log directories used: `Clientlog`, `DSlog`, `FullLog`, `TagLog` under `Saved\Logs\Lin_Template`

## Task 3: Remove temporary logs after confirmation

Outcome: success

Preference signals:
- The user explicitly requested: "可以运行了，删去log吧" -> after debugging succeeds, remove temporary trace logs unless they are part of the actual feature.

Key steps:
- Deleted all `[LevelDebug]` lines from `UGCGameState.lua`, `UGCPlayerController.lua`, and `MainUI.lua`.
- Left the functional level-refresh code in place.
- Re-checked for any remaining `[LevelDebug]` references; none remained.

Failures and how to do differently:
- Direct patch removal against full context was brittle because of encoded comment text; removing the exact `ugcprint("[LevelDebug]...` lines one by one worked.
- Empty `else` branches were left behind temporarily and had to be cleaned up.

Reusable knowledge:
- The feature logic that remained after cleanup was:
  - `UGCPlayerController:AddLevel()` updates `PlayerGameLevel`
  - `UnrealNetwork.CallUnrealRPC(self, self, L_Enum.Name_RPC.ClientRefreshPlayerGameLevel, self.PlayerGameLevel)` sends the updated value to the client
  - `ClientRPC_RefreshPlayerGameLevel()` updates local state and refreshes the UI
  - `OnRep_PlayerGameLevel()` also refreshes the UI when the replication path does fire

References:
- `Script/Blueprint/UGCPlayerController.lua`
- `Script/Blueprint/UI/MainUI.lua`
- `Script/Blueprint/UGCGameState.lua`

## Task 4: Explain why `OnRep_PlayerGameLevel` was not the direct fix

Outcome: partial

Preference signals:
- The user said they wanted the root-cause path, not a workaround: "我觉得还是要改成通过这个OnRep_PlayerGameLevel属性复制的相关的，因为这是根源的，其他的 都是治标不治本。你再帮我想想哪里问题，不要直接修改" -> future responses should start with diagnosis and evidence, not code changes.
- The user then clarified the UI control name again, but that was not the root issue.

Key steps:
- Compared current code against template examples in `Template_RogueShooting` and `Template_MusicParty`.
- Found that `GetReplicatedProperties()` in the current file used an outer table wrapping the property definitions:
  - current style observed: `return {{"PlayerGameLevel", "Lazy"}, { ... }, { ... }}`
  - template style observed: `return {"bIsTeamLeader", "Lazy"}, {"LobbyTeammatePlayerKeys", "Lazy"}, ...`
- Observed from prior logs that `RepLazyProperty(self, "PlayerGameLevel")` executed on the server but `OnRep_PlayerGameLevel` never appeared on the client.

Failures and how to do differently:
- The earlier root-cause guess focused on UI naming or direct UI refresh; that was not the blocker.
- The actual likely bug is the `GetReplicatedProperties()` return structure, not `TextBlock_73`.

Reusable knowledge:
- Templates in this repo show `GetReplicatedProperties()` returning multiple `{name, "Lazy"}` tables as separate return values, not a single nested table.
- `UnrealNetwork.CallUnrealRPC(TargetPlayerController, TargetObject, FunctionName, ...)` is documented as a reliable single-cast RPC; server-to-client client RPCs do not need to be registered in `GetAvailableServerRPCs()`.
- The local docs explicitly say `ClientRPC` from DS to client does not require registration, while server RPCs do.

References:
- Current file snippets observed:
  - `Script/Blueprint/UGCPlayerController.lua` had `return {{"PlayerGameLevel", "Lazy"}, ...}`
  - `Script/L_Com/L_Enum.lua` contained `ClientRefreshPlayerGameLevel = "ClientRPC_RefreshPlayerGameLevel"`
- Template references:
  - `UGCProjects/Template_RogueShooting/Script/Blueprint/UGCPlayerController.lua:46-47`
  - `UGCProjects/Template_MusicParty/Script/Blueprint/MusicPartyPlayerState.lua:31-38`
  - `UGCProjects/Template_SkillCompetition/Script/Blueprint/UGCPlayerState.lua:107-108`
- Docs referenced:
  - `D:\LvZhou\LvZhou\wiki\网络同步系统介绍.md`
  - `D:\LvZhou\LvZhou\api\class\detail\和平全局接口\基础功能\UnrealNetwork.json`
