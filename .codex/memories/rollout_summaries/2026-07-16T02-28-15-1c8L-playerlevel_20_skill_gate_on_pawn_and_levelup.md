thread_id: 019f68c0-d38d-7b11-b23d-fd9744b6ee27
updated_at: 2026-07-16T02:29:59+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\16\rollout-2026-07-16T10-28-20-019f68c0-d38d-7b11-b23d-fd9744b6ee27.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Gate skill grant on PlayerLevel >= 20, including live level-up acquisition

Rollout context: The user was editing `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo` and asked in Chinese how to make the skill in `Script/Blueprint/UGCPlayerPawn.lua` only exist when `PlayerState.PlayerLevel >= 20`. The assistant inspected `UGCPlayerPawn.lua`, `UGCPlayerState.lua`, and `Script/Lin/PlayerLevelMgr.lua`, plus the API docs for `UGCPersistEffectSystem.AddSkillByClass`.

## Task 1: Gate `PlayerSkill_1` by PlayerLevel in Pawn init

Outcome: success

Preference signals:

- The user asked specifically about the snippet in `UGCPlayerPawn.lua` and said: "我想要当playersate里面的PlayerLevel大于等于20级的时候才有这个技能" -> future similar requests should assume the user wants a concrete code change in the current repo file, not just an explanation.
- The user pointed to the exact file and active selection, implying they expect the answer to operate on the selected code path rather than a generic pattern.

Key steps:

- The assistant searched for `PlayerLevel`, `PlayerState`, `AddSkillByClass`, and `OnPawnInit` across `Script`, `wiki`, and `api` docs.
- It found `UGCPlayerState:GetPlayerLevel()` already exists in `Script/Blueprint/UGCPlayerState.lua`, so no new accessor was needed.
- It found that the actual skill addition is in `UGCPlayerPawn:ReceiveBeginPlay()` under the server-only branch, not in the selected `OnPawnInit` snippet.
- The patch added constants `PLAYER_SKILL_1_REQUIRED_LEVEL = 20` and `PLAYER_SKILL_1_PATH`, then wrapped `UGCPersistEffectSystem.AddSkillByClass(...)` in a `playerState ~= nil and playerState:GetPlayerLevel() >= PLAYER_SKILL_1_REQUIRED_LEVEL` check.

Failures and how to do differently:

- The user’s pasted snippet was not the real call site; the durable fix needed to be applied at the actual `ReceiveBeginPlay` location in `UGCPlayerPawn.lua`.
- The assistant initially framed the change as being about `OnPawnInit`, then corrected after inspecting the file; future agents should verify the real call site before editing.

Reusable knowledge:

- `UGCPlayerState.lua` already exposes `GetPlayerLevel()` and persists `PlayerLevel` via archive-backed setters/getters.
- `UGCPersistEffectSystem.AddSkillByClass` is a server-side API for granting a skill to a target Actor.
- The skill path used here is `Asset/Blueprint/Prefabs/Skills/Lin/PlayerSkill/PlayerSkill_1.PlayerSkill_1_C`.

References:

- [1] `Script/Blueprint/UGCPlayerPawn.lua:811-837` — `ReceiveBeginPlay()` is where the skill grant actually occurs; the patch now gates it on level >= 20.
- [2] `Script/Blueprint/UGCPlayerState.lua:246` — `function UGCPlayerState:GetPlayerLevel()` exists.
- [3] API doc `D:\LvZhou\LvZhou\api\class\detail\和平全局接口\技能系统\UGCPersistEffectSystem.json` — `AddSkillByClass` description: server-side add-skill interface.

## Task 2: Grant the skill immediately when leveling up to 20+

Outcome: success

Preference signals:

- The assistant inferred an important edge case from the user’s request and the code structure: if the player reaches level 20 during the match, gating only pawn init would delay the skill until respawn. This matches a likely expectation that the skill should appear as soon as the level condition is met.

Key steps:

- The assistant inspected `Script/Lin/PlayerLevelMgr.lua` and found the level-up flow in `AddExp(PlayerController, amount)`.
- That function computes `oldLevel`, `newLevel`, updates `PlayerState` fields, and refreshes pawn stats.
- A second patch added the same constants (`PLAYER_SKILL_1_REQUIRED_LEVEL`, `PLAYER_SKILL_1_PATH`) and granted the skill via `UGCPersistEffectSystem.AddSkillByClass(pawn, UGCGameSystem.GetUGCResourcesFullPath(PLAYER_SKILL_1_PATH))` when `oldLevel < 20 and newLevel >= 20`.

Failures and how to do differently:

- `git diff -- Script/Lin/PlayerLevelMgr.lua` produced no output because the file was untracked (`?? Script/Lin/PlayerLevelMgr.lua` in `git status --short`), so verification had to rely on file content search and status rather than diff output.
- `Get-Command lua,luac` returned no command, so no Lua syntax/runtime check was available locally; future similar runs may need another validation mechanism if a Lua interpreter is absent.

Reusable knowledge:

- The repo’s level-up logic already centralizes XP/level updates in `Script/Lin/PlayerLevelMgr.lua:AddExp`, making it a good place to trigger level-threshold side effects.
- `PlayerLevelMgr:ApplyLevelBonus()` already refreshes pawn properties after increasing level, so the skill grant can be piggybacked on the same level-up event flow.

References:

- [1] `Script/Lin/PlayerLevelMgr.lua:54-84` — `AddExp()` computes old/new level and updates `PlayerState`.
- [2] `Script/Lin/PlayerLevelMgr.lua:95-119` — `ApplyLevelBonus()` and the new conditional skill grant when crossing level 20.
- [3] `git status --short Script/Blueprint/UGCPlayerPawn.lua Script/Lin/PlayerLevelMgr.lua` output: `M Script/Blueprint/UGCPlayerPawn.lua` and `?? Script/Lin/PlayerLevelMgr.lua`.
- [4] `Get-Command lua,luac -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Source` returned no result, so there was no local Lua executable for validation.
