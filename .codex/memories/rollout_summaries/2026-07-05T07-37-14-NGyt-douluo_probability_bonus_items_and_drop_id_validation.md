thread_id: 019f3135-c22d-73c0-8ca5-ea91a648dc39
updated_at: 2026-07-05T08:11:21+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\05\rollout-2026-07-05T15-37-18-019f3135-c22d-73c0-8ca5-ea91a648dc39.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Implemented probability-bonus item flows and verified monster drop ID mapping

Rollout context: The work took place in `Douluo` under `Script/Blueprint` and `Script/Lin`. The user wanted a set of V2 consumable items to manipulate `BeiLvTextShow` / `Probability_Bonus` behavior, first for 10-minute, 30-minute, and permanent double-drop items, then for a second `SHIBHHBL_*` family using value `1000`, and finally asked whether the monster drop table / `BaseMons.lua` mapping was correct and requested a protection patch so a saved permanent bonus would not be downgraded after re-entry.

## Task 1: Add 10-minute double-bonus item
Outcome: success

Preference signals:
- The user asked for a V2 consumable that sets `BeiLvTextShow` to `200` and then returns it to `100` after ten minutes, indicating they want the item script to own the timed behavior and use the existing UI/state sync chain without extra back-and-forth.
- When the assistant proposed options for re-using existing controller/state logic, the user chose `A` and later said `“可以”` / `“那你直接改吧”`, indicating a preference for direct edits after a short design check.
- The user asked to test with a short duration first (`“持续时间是10秒我用来测试，测试好了再跟你说返回”`), indicating they value a quick test override before restoring production timing.

Key steps:
- `StateMgr.lua` was inspected and `BeiLvTextShow(Num, SkipCount)` was confirmed to write both UI text and `PlayerState:SetProbability_Bonus`.
- `UGCPlayerController.lua` was confirmed to already have `Server_AddProbabilityBonus(value)` and `Client_ProbabilityBonusChanged(value)`.
- `SBHHBL_10.lua` was changed from template-only to an actual `OnUseV2()` implementation, first using a timer-based restore path, then briefly switched to a 10-second test duration, and later restored to 600 seconds.

Failures and how to do differently:
- The first implementation used a per-item timer, which later had to be generalized because multiple item variants needed to cooperate instead of fighting over independent timers.
- The assistant did not run Lua compilation; verification was limited to `git diff`, `rg`, and call-chain inspection, which matched the project’s no-compile constraint.

Reusable knowledge:
- `SBHHBL_10.lua` can drive the existing probability bonus flow through `UGCItemSystemV2.GetOwnBackpackComponent(self)` -> `GetOwner()` -> `PlayerController:Server_AddProbabilityBonus(...)`.
- `UGCTimerUtility.CreateLuaTimer(600, callback, false, TimerName)` was the original restore mechanism before the later centralized controller refactor.

References:
- [1] `Script/Lin/StateMgr.lua:105-111` shows `BeiLvTextShow` writing `PlayerState:SetProbability_Bonus(self.BeiLv)` and updating the UI text.
- [2] `Script/Blueprint/UGCPlayerController.lua:1115-1124` shows the existing `Server_AddProbabilityBonus` / `Client_ProbabilityBonusChanged` bridge.
- [3] `Script/Blueprint/Prefabs/Items/SBHHBL_10.lua` was made functional; the test duration was temporarily changed to `DURATION_SECONDS = 10` and then restored to `600`.

## Task 2: Add 30-minute double-bonus item and unify timer behavior
Outcome: success

Preference signals:
- After the 10-minute item worked, the user asked `“这个也要，这个是30分钟的”`, indicating the same pattern should be cloned with only duration changing.
- When the user later asked whether two items should stack without refreshing, the user accepted the explanation that the desired behavior was cumulative time rather than resetting the countdown.
- The user’s confirmation (`“行你改吧”`) indicates they wanted the stackable version implemented directly.

Key steps:
- `SBHHBL_30.lua` was inspected and found to be the same template shape as `SBHHBL_10.lua`.
- A first pass used a separate timer name per item, then the timer names were unified to a shared `ProbabilityBonus_<PlayerKey>` so that repeated uses of either item refresh or continue the same countdown instead of conflicting.
- The logic was later moved out of the item scripts and into `UGCPlayerController:Server_AddProbabilityBonusDuration(value, durationSeconds)` so that 10-minute and 30-minute items could share one remaining-seconds counter.

Failures and how to do differently:
- Separate timer names for 10-minute and 30-minute items caused a race where one timer could restore `100` before the newer effect expired; that was corrected by switching to a shared controller-managed timer.
- The first shared-timer implementation still had a “refresh” flavor; the user clarified they wanted time to accumulate, so the controller logic was adjusted to store `ProbabilityBonusRemainingSeconds` and add duration on each use.

Reusable knowledge:
- `Server_AddProbabilityBonusDuration(value, durationSeconds)` is now the central entry point for timed probability-bonus items.
- The stackable behavior is: add the duration to `ProbabilityBonusRemainingSeconds`, maintain the highest active timed value, and restore to `100` only when the remaining seconds reach zero.

References:
- [1] `Script/Blueprint/UGCPlayerController.lua:1124-1158` contains `Server_AddProbabilityBonusDuration` with the shared timer name `ProbabilityBonus_<PlayerKey>`.
- [2] `Script/Blueprint/Prefabs/Items/SBHHBL_10.lua:91` now calls `PlayerController:Server_AddProbabilityBonusDuration(BUFF_VALUE, DURATION_SECONDS)` with `DURATION_SECONDS = 600`.
- [3] `Script/Blueprint/Prefabs/Items/SBHHBL_30.lua:91` now calls the same controller function with `DURATION_SECONDS = 1800`.

## Task 3: Add permanent double-bonus item
Outcome: success

Preference signals:
- The user asked `“还有这个，这个是永久生效的”`, indicating the same bonus system should support a permanent path in addition to timed items.
- After the assistant highlighted the pitfall that a timed item could later drop a permanent bonus back to `100`, the user approved the protection approach (`“行”`).

Key steps:
- `SBHHBL_YJ.lua` was inspected and found to still be a template; a `CanUseV2` / `OnUseV2` implementation was added.
- `UGCPlayerController` gained `Server_SetProbabilityBonusPermanent(value)` and a `ProbabilityBonusPermanent` / `ProbabilityBonusPermanentValue` state pair.
- The permanent path removes the shared timer and writes the permanent value back through `Server_AddProbabilityBonus(value)`.

Failures and how to do differently:
- The first permanent implementation had a risk that older timed logic could still reset the bonus; the later patch hardened the controller to detect permanent state and short-circuit timed decrements.
- Permanent state initially was not robust against a player re-entering with an already saved `Probability_Bonus`; the controller was patched again to read the current saved value from `PlayerState` and avoid downgrading it.

Reusable knowledge:
- `Probability_Bonus` is persisted through `UGCPlayerState:SetProbability_Bonus`, so permanent protection has to consider the stored state, not just in-memory controller flags.
- Permanent item behavior should stop any active timer and should not allow timed follow-up items to lower an already higher permanent value.

References:
- [1] `Script/Blueprint/Prefabs/Items/SBHHBL_YJ.lua:90` now calls `PlayerController:Server_SetProbabilityBonusPermanent(BUFF_VALUE)`.
- [2] `Script/Blueprint/UGCPlayerController.lua:1164-1196` contains `Server_SetProbabilityBonusPermanent` and the permanent-value guards.
- [3] `Script/Blueprint/UGCPlayerState.lua:287-293` shows `GetProbability_Bonus` / `SetProbability_Bonus` and confirms the value is archived.

## Task 4: Extend the same system to `SHIBHHBL_*` items with value 1000
Outcome: success

Preference signals:
- The user then asked for the `SHIBHHBL_10.lua`, `SHIBHHBL_30.lua`, and `SHIBHHBL_YJ.lua` variants to also be changed, with the note that the value passed in should be `1000`, indicating the same gameplay pattern but at a different multiplier tier.
- When the assistant noted that a permanent `1000` could later be reduced by a `200` item, the user still wanted the protection maintained, indicating they care about preserving the highest saved multiplier.

Key steps:
- `SHIBHHBL_10.lua`, `SHIBHHBL_30.lua`, and `SHIBHHBL_YJ.lua` were inspected and found to be the same V2 templates as the earlier `SBHHBL_*` scripts.
- The same controller entry points were reused: timed items call `Server_AddProbabilityBonusDuration(1000, durationSeconds)`, and permanent item calls `Server_SetProbabilityBonusPermanent(1000)`.
- `UGCPlayerController` was strengthened so timed items use `math.max(...)` against `ProbabilityBonusTimedValue`, and permanent logic uses `ProbabilityBonusPermanentValue` plus the current saved `PlayerState.Probability_Bonus` to avoid downgrades after re-entry.

Failures and how to do differently:
- The first cut only handled the new `1000` items and still left room for lower-value items to override a higher permanent multiplier after reload; the fix was to inspect `PlayerState.Probability_Bonus` inside the controller.
- The permanent-state protection had to account for the fact that `ProbabilityBonusPermanent` itself is not persisted, so the code now derives safety from the persisted `PlayerState` value as well.

Reusable knowledge:
- For this repo, the `SHIBHHBL_*` family is not just a rename; it reuses the same bonus controller but with a different base value (`1000`) and different durations (`600`, `1800`, permanent).
- The controller now contains both timed and permanent guards, plus a “do not downgrade higher current saved bonus” check.

References:
- [1] `Script/Blueprint/Prefabs/Items/SHIBHHBL_10.lua:91` calls `Server_AddProbabilityBonusDuration(BUFF_VALUE, DURATION_SECONDS)` with `BUFF_VALUE = 1000`, `DURATION_SECONDS = 600`.
- [2] `Script/Blueprint/Prefabs/Items/SHIBHHBL_30.lua:91` calls the same with `DURATION_SECONDS = 1800`.
- [3] `Script/Blueprint/Prefabs/Items/SHIBHHBL_YJ.lua:90` calls `Server_SetProbabilityBonusPermanent(BUFF_VALUE)` with `BUFF_VALUE = 1000`.
- [4] `Script/Blueprint/UGCPlayerController.lua:1124-1196` now contains the shared duration logic, permanent logic, and re-entry downgrade protection.

## Task 5: Verify monster drop ID mapping against `BaseMons.lua`
Outcome: success

Preference signals:
- The user asked `“那你看我这边怪物掉落的代码。这边一整套应该没错吧”`, showing they wanted a direct validation of the whole drop table against the monster logic rather than a generic explanation.
- The user then pasted the full drop table, which suggests they care about exact ID ranges and not just the concept.

Key steps:
- `BaseMons.lua` was inspected and the actual formula was confirmed as `DropID = ((Probability_Bonus or 100) - 100) * 100 + MonsterID`.
- The drop table ranges were cross-checked against this formula:
  - `1~40` for `100`
  - `10001~10040` for `200`
  - `90001~90040` for `1000`
- It was noted that the `Parameter=10000` rows in the `90001~90040` range imply a maxed probability outcome; this matches the formula if the design is intentionally full probability at the `1000` tier.

Failures and how to do differently:
- None on the mapping check itself; the only caveat was that the assistant noted a separate persistence issue for permanent bonuses, which was not part of the drop ID formula.

Reusable knowledge:
- Monster drops in this repo are encoded by bonus tiers via `Probability_Bonus` offset from `100`, multiplied by `100`, then added to `MonsterID`.
- The `BaseMons.lua` family across scenes follows the same drop-ID derivation pattern, so a single checked example can validate the broader family.

References:
- [1] `Script/Blueprint/Prefabs/Monsters/MainScene/BigLevel_01/LittleLevel_01/BaseMons.lua` lines around `BPDie` show the formula.
- [2] The user-provided drop table IDs `1-40`, `10001-10040`, and `90001-90040` match the formula for `100/200/1000`.
- [3] The drop component call is `self.UGCPresetCommonDropItemComponent:StartDropByProduceID(DropID, -1, EUGCGenerateItemEntityType.GenerateItemEntity_WrapperActor, nil)`.

## Task 6: Add persistence-safe protection so permanent 1000 is not downgraded after re-entry
Outcome: success

Preference signals:
- The user explicitly asked `“那你帮我补保护吧”`, indicating they wanted the assistant to fix the persistence edge case rather than just explain it.

Key steps:
- `UGCPlayerController:Server_AddProbabilityBonusDuration` was updated to inspect the current saved `PlayerState.Probability_Bonus` before starting a timed boost.
- If the player already has a saved bonus that is greater than or equal to the requested timed value and there is no active remaining timed duration, the code now treats it as permanent and does not create a fallback timer.
- `Server_SetProbabilityBonusPermanent` also now compares against the current saved `PlayerState` value and keeps the larger value.

Failures and how to do differently:
- The initial permanent protection only used an in-memory flag, which was insufficient across re-entry; the fix was to base the decision on `PlayerState.Probability_Bonus` because that value is archived.

Reusable knowledge:
- For persisted gameplay buffs in this repo, any “permanent” guard should inspect the archived `PlayerState` value on load/re-entry, not just controller locals.
- The controller is now the correct place to enforce this because item scripts are intentionally thin wrappers.

References:
- [1] `Script/Blueprint/UGCPlayerController.lua:1148-1151` now checks `CurrentValue` from `PlayerState` and promotes it back to permanent when appropriate.
- [2] `Script/Blueprint/UGCPlayerController.lua:1180-1196` now clamps the permanent value against the current archived bonus.
- [3] The user-visible guarantee is: if `PlayerState.Probability_Bonus` is already `1000`, a later `200` timed item should not lower it after re-entry.

