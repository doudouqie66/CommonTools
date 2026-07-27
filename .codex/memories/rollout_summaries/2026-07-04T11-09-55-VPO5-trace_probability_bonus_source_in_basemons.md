thread_id: 019f2cd2-1c97-77e3-906b-2fb828746df5
updated_at: 2026-07-04T11:10:45+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\04\rollout-2026-07-04T19-10-00-019f2cd2-1c97-77e3-906b-2fb828746df5.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Investigated the source of `Probability_Bonus` in `BaseMons.lua` and traced it back to `UGCPlayerState` / `UGCPlayerController`.

Rollout context: The user was editing `Douluo/Script/Blueprint/Prefabs/Monsters/MainScene/BigLevel_01/LittleLevel_01/BaseMons.lua` and asked in Chinese: “这边获取的Probability_Bonus从哪里来的” (where does this `Probability_Bonus` come from?). The assistant searched the Lua codebase, inspected the relevant files, and explained the value flow without changing files.

## Task 1: Trace `Probability_Bonus` source for monster drops

Outcome: success

Preference signals:
- The user asked a direct source-tracing question about a specific field in the currently open file, which suggests that in similar debugging questions they want the actual provenance chain, not a guess or broad explanation.
- The user pointed to the exact file/selection (`BaseMons.lua`, `Probability_Bonus`), indicating they value tight, file-local analysis first before broader repo speculation.

Key steps:
- Searched the repo for `Probability_Bonus` and related names with `rg -n "Probability_Bonus" "Script"` and `rg -n "AddProbability_Bonus|GetProbability_Bonus|Probability_Bonus\s*=" "Script"`.
- Confirmed `BaseMons.lua` reads the value from `EventInstigator.PlayerState.Probability_Bonus or 0` inside `BPDie`.
- Inspected `UGCPlayerState.lua` and found the default field definition `Probability_Bonus = 0`, replication via `GetReplicatedProperties()`, and the mutator `AddProbability_Bonus(value)` which clamps the value to `100`.
- Inspected `UGCPlayerController.lua` and found the RPC entry point `Server_AddProbabilityBonus(value)` calling `self.PlayerState:AddProbability_Bonus(value)`.

Failures and how to do differently:
- The global search for `Probability_Bonus` in `Config`, `Datas`, and `Table` produced `rg` path errors because those directories do not exist in this repo root; future searches should stick to confirmed paths under `Script` unless those directories are known to exist.
- No Lua call sites for `Server_AddProbabilityBonus` were found, so the rollout could not prove the upstream trigger source; if the next question is about the actual gameplay trigger, the search should pivot to Blueprints/editor-side references or non-Lua assets.

Reusable knowledge:
- `BaseMons.lua` does not calculate the bonus; it only consumes `EventInstigator.PlayerState.Probability_Bonus` on monster death.
- In `UGCPlayerState.lua`, `Probability_Bonus` starts at `0`, is replicated, and `AddProbability_Bonus` clamps it with `math.min(..., 100)`.
- `UGCPlayerController.lua:Server_AddProbabilityBonus(value)` is the Lua-side API that increments the stat and sends a client notification.
- The rollout suggests `Probability_Bonus` is likely driven by external Blueprint/editor/gameplay events rather than Lua-only code, because no Lua call site was found.

References:
- [1] `Script/Blueprint/Prefabs/Monsters/MainScene/BigLevel_01/LittleLevel_01/BaseMons.lua:93-97`
  ```lua
  local Probability_Bonus = EventInstigator.PlayerState.Probability_Bonus or 0
  if Probability_Bonus > 100 then
      Probability_Bonus = 100
  end
  DropID = Probability_Bonus * 100 + self.MonsterID
  ```
- [2] `Script/Blueprint/UGCPlayerState.lua:4`
  ```lua
  Probability_Bonus = 0, -- 掉落加成，比如本来掉落概率是20%,这个值是20，那就是20*1.2
  ```
- [3] `Script/Blueprint/UGCPlayerState.lua:65`
  `GetReplicatedProperties()` includes `"Probability_Bonus"`.
- [4] `Script/Blueprint/UGCPlayerState.lua:286-291`
  ```lua
  function UGCPlayerState:GetProbability_Bonus()
      return self.Probability_Bonus
  end

  function UGCPlayerState:AddProbability_Bonus(value)
      self.Probability_Bonus = math.min((self.Probability_Bonus or 0) + (value or 0), 100)
  end
  ```
- [5] `Script/Blueprint/UGCPlayerController.lua:1063-1074`
  `Server_AddProbabilityBonus(value)` validates input, calls `self.PlayerState:AddProbability_Bonus(value)`, and emits `Client_ProbabilityBonusChanged`.
- [6] Global search result: no Lua call sites were found for `Server_AddProbabilityBonus` beyond its definition and registration, which is why the upstream trigger remains outside Lua in this rollout.
