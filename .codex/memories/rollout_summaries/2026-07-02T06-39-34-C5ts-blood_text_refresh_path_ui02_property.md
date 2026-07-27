thread_id: 019f218d-e152-7a71-a573-15d938e88706
updated_at: 2026-07-02T06:42:31+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\02\rollout-2026-07-02T14-39-39-019f218d-e152-7a71-a573-15d938e88706.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Blood-text refresh path in UI02/property.lua

Rollout context: The user was inspecting `Douluo/Script/property/property.lua` and asked how the HP value changes and how the UI knows to update. The assistant traced the refresh chain across the property system, UI, attribute callbacks, and a few example health-changing callers.

## Task 1: Find where HP text is set and how it updates

Outcome: success

Preference signals:

- The user asked first where the HP text is set, then followed up with “那这边血量怎么变化然后他知道变动” -> they want the update path explained end-to-end, not just the setter location.
- The user kept the focus on `property.lua` / `UI02.lua` rather than a generic explanation -> future answers should anchor to concrete repo code and call sites.

Key steps:

- `UI02.lua` does not directly compute HP text; it calls `Property.RefreshUI(self)` during init and in `OnRefreshProperty()`.
- `property.RefreshUI(ui, playerPawn)` reads a snapshot, then updates `ui.ProgressBar_122:SetPercent(snapshot.HPPercent)` and `ui.hp:SetText(tostring(Round(snapshot.CurrentHP)) .. "/" .. tostring(Round(snapshot.MaxHP)))`.
- `property.GetSnapshot()` gets HP via `property.GetCurrentHP()` / `UGCPawnAttrSystem.GetHealth(playerPawn)` and max HP via `UGCPawnAttrSystem.GetHealthMax(playerPawn)`.
- `property.NotifyChanged(owner)` routes through `NotifyPropertyChanged(owner)` and broadcasts `L_Enum_Event.Enum.ReFreshProperty` as both global and object messages.
- `UI02` registers and listens for `ReFreshProperty` with `UGCGenericMessageSystem.ListenGlobalMessage(self, L_Enum_Event.Enum.ReFreshProperty, self, self.OnRefreshProperty)`; on receipt it calls `Property.RefreshUI(self)` again.
- Attribute changes are bridged in `Script/Blueprint/Attributes/UGCAttributeGroup_Character.lua`: `OnAttributeChanged`, `OnGameAttributeChanged`, `PostAttributeChange`, and `PostAttributeChanged` all call `TryNotifyPropertyChanged(...)`, which checks `Health`, `HealthMax`, and `AttackPower` and then calls `Property.NotifyChanged(ownerActor)`.
- Example HP-changing code paths found: `Script/Lin/L_Com.lua` updates health/max health and explicitly calls `property.NotifyChanged(pawn)` after `SetHealth`/`SetHealthMax`; `Script/Common/RegenSystem.lua` only calls `UGCPawnAttrSystem.SetHealth(pawn, newHP)` and relies on the attribute-change callback path to trigger refresh.

Reusable knowledge:

- In this repo, HP display is event-driven: change attribute -> attribute callback -> `ReFreshProperty` broadcast -> `UI02:OnRefreshProperty()` -> `Property.RefreshUI()` -> read current HP again and redraw text.
- If HP text appears stale, check whether the attribute callback path is firing for the relevant setter, or whether the caller needs to explicitly invoke `property.NotifyChanged(pawn)` after changing health.
- `UI02` also updates the HP bar from the same snapshot, so bar and text should stay in sync when the refresh event is delivered.

Failures and how to do differently:

- The assistant initially tried `Select-Object -Index 250..310` / `20..45`, which failed in PowerShell because `-Index` needs integers, not ranges. It then switched to a line-by-line loop with `Get-Content` and explicit line numbers, which worked.
- When searching for the update chain, broad `rg` across `Script` produced a lot of noise, but it successfully exposed the important anchors (`ReFreshProperty`, `NotifyChanged`, `RefreshUI`, `OnAttributeChanged`, `SetHealth`). Future similar lookups should start with those symbols.

References:

- [1] `Script/property/property.lua:62-78` — `NotifyPropertyChanged(owner)` broadcasts `L_Enum_Event.Enum.ReFreshProperty` globally and to the target object.
- [2] `Script/property/property.lua:268-305` — `GetSnapshot()` reads current/max HP; `RefreshUI()` sets `ProgressBar_122` and `ui.hp` (`current/max`).
- [3] `Script/Blueprint/UI/UI02.lua:193-202` — registers `ReFreshProperty`, listens for it, and calls `Property.RefreshUI(self)`.
- [4] `Script/Blueprint/Attributes/UGCAttributeGroup_Character.lua:4-25, 62-76` — watched attributes are `Health`, `HealthMax`, `AttackPower`; multiple attribute callbacks forward to `Property.NotifyChanged(ownerActor)`.
- [5] `Script/Lin/L_Com.lua:13-26` — after changing health/max health, the code explicitly calls `property.NotifyChanged(pawn)`.
- [6] `Script/Common/RegenSystem.lua:66-76` — regen changes HP via `UGCPawnAttrSystem.SetHealth(pawn, newHP)` without an explicit notify, so it depends on the attribute callback path.

