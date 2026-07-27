thread_id: 019f322b-8a7c-7a13-9f44-ab8bee38d96a
updated_at: 2026-07-05T12:25:37+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\05\rollout-2026-07-05T20-05-42-019f322b-8a7c-7a13-9f44-ab8bee38d96a.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Test_Mons

# Fixed a vertical zipline bug in `BP_UGC_ZipLine.lua` / `BP_UGC_ZipLineChild.lua` and explained the root cause for reuse on another machine

Rollout context: The user was editing `Test_Mons/ExtendResource/ZipLineTemplate/OfficialActivityActor/Script/ActivityActors/CG033/ZipLine/` in a Windows PowerShell environment. The reported symptom was initially that vertical ziplines would not work even though horizontal ones did. After the first patch, the user clarified the runtime behavior multiple times: it would "slide a bit then immediately come down" and later that the character was "lying down while sliding up". The user eventually asked for a summary they could send to another computer with the same issue.

## Task 1: Diagnose and fix vertical zipline movement/orientation

Outcome: success

Preference signals:
- The user repeatedly clarified the observed behavior instead of asking for a generic explanation: "是划了一下，马上就下来了" and later "为什么还是显示人是躺着滑上去的" -> future fixes for this codepath should distinguish between movement failing, auto-detach/block detection, and actor orientation.
- When asking for the final handoff summary, the user said: "你是怎么改好的，总结一下，我发给另一个新的电脑，他也是你一模一样的问题" -> future responses should include a compact, copyable root-cause summary and the exact code changes, not just a vague explanation.

Key steps:
- Read `BP_UGC_ZipLine.lua`, `BP_UGC_ZipLineChild.lua`, and the ladder template as a working reference.
- Verified that `UCustomActorMoveComponent:SetPosition(InStart, InEnd)` is used by the ladder template for true vertical movement, so the component itself is not the limitation.
- Identified that the initial horizontal-only rotation calculation in `BP_UGC_ZipLine.lua` zeroed `Z` before `FindLookAtRotation`, which can degrade vertical cases.
- Corrected the Lua precedence bug in the spawn branch from `not self.TargetZipLine.TargetZipLine == self` to `self.TargetZipLine.TargetZipLine ~= self`.
- Added owner/target references from `BP_UGC_ZipLine` to the spawned `ZipLineChild`, then expanded `BP_UGC_ZipLineChild:AreaBlockadeDetect()` to ignore the child itself, the owner zipline, the target zipline, and the current player character.
- After the user reported the character was still lying sideways, the remaining cause was traced to the generated child actor rotation: the code was still using full 3D `FindLookAtRotation`, so the child actor inherited a large `Pitch` on vertical ziplines. The final fix was to keep 3D movement but zero out `Rotation.Pitch` and `Rotation.Roll` before spawning the child actor.

Failures and how to do differently:
- The first version of the fix focused on movement and obstruction, but the user’s later feedback showed the actor orientation problem was still present. For similar bugs, separate the investigation into three buckets: movement vector, auto-detach/block detection, and inherited rotation from attachment.
- A `git diff` check failed because the working directory was not a git repository. The fallback that worked was to verify by line-numbered file reads and `rg` searches against the target file.
- No Lua compilation or runtime test was run; verification was limited to source inspection because the project/environment did not provide a local Lua compile step.

Reusable knowledge:
- `UCustomActorMoveComponent:SetPosition(InStart, InEnd)` accepts full `FVector` endpoints; vertical movement is supported by the component itself.
- The ladder template is the best local reference for how the move component is expected to work in this project.
- In `BP_UGC_ZipLine.lua`, the exact useful pattern is:
  - use true 3D `Direct` for `StartLocation` / `DeattachLocation`
  - use `FindLookAtRotation(...)` for spawn orientation
  - then force `Rotation.Pitch = 0` and `Rotation.Roll = 0` so the rider does not appear to lie down
- In `BP_UGC_ZipLineChild.lua`, the periodic blockade check was the likely cause of the “slide a bit then immediately come down” symptom because it ran shortly after spawn and could call `FakeUnPossessWithDettach`. Ignoring the owner zipline, target zipline, and player character prevents self-collision false positives.

References:
- [1] `BP_UGC_ZipLine.lua` line 28 fixed Lua comparison: `if self.TargetZipLine.TargetZipLine ~= self then`
- [2] `BP_UGC_ZipLine.lua` lines 72-80 final spawn logic:
  - `local Rotation = KismetMathLibrary.FindLookAtRotation(...)`
  - `Rotation.Pitch = 0`
  - `Rotation.Roll = 0`
  - `ZipLineChild.OwnerZipLine = self`
  - `ZipLineChild.TargetZipLine = self.TargetZipLine`
- [3] `BP_UGC_ZipLineChild.lua` lines 14-40 final ignore list:
  - `OwnerZipLine = nil, TargetZipLine = nil`
  - `IgnoreActors = {self}`
  - insert `self.OwnerZipLine`, `self.TargetZipLine`, and the current player character if valid
- [4] The user-facing root-cause summary ultimately given back to the user: vertical zipline motion should keep 3D endpoints for movement, but the spawned child actor’s visible rotation must be horizontal-only, and the blockade trace must ignore the zipline actors plus the player.

