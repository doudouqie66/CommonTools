---
name: douluo-mcp-plan-write-verify
description: Use when the user wants Douluo editor data filled or changed through MCP, such as updating `DA_GameModeGeneral`, DataTables, or other live assets after confirming the local MCP server on port 12463.
user-invocable: false
allowed-tools:
  - shell_command
---

# When to use

Use this when:
1. The user asks to "connect MCP" and then wants a live editor asset changed, not just inspected.
2. The target data lives in a blueprint/data asset and repo files alone are not the source of truth.
3. The MCP tool list includes `ue_read`, `ue_plan_submit`, and `ue_py`.

Do not use this when:
1. The question is read-only and can stop after inspection.
2. The change can be made safely in repo files without editor-state mutation.

# Inputs / context to gather

1. Confirm the target asset path or the currently open asset.
2. Confirm whether the user named one exact sub-structure to edit.
3. Verify the MCP endpoint and tool list first:
   - `Test-NetConnection -ComputerName 127.0.0.1 -Port 12463`
   - JSON-RPC `initialize`
   - `tools/list`

# Procedure

1. Use `ue_read` or read-only `ue_py` to inspect the current asset state before planning any write.
2. Identify the exact struct/field shape to mutate.
3. If the read surface is too shallow, use `ue_py` reflection on the loaded asset instead of guessing field names.
4. Submit a PRV plan with `ue_plan_submit` before any write.
5. Perform the mutation through `ue_py`.
6. Save the package.
7. Re-open or re-read the asset and verify the final values from a fresh readback.
8. Report the result using the exact asset path, field names, and final values changed.
9. If the edit is in `DA_GameModeGeneral` reward data, verify both per-task `TaskAwardList` entries and task-line `PercentAwardList` entries before calling it complete.

# Efficiency plan

1. Narrow to the exact asset and exact field family the user named.
2. Reuse the same MCP session once `initialize` succeeds.
3. Clone existing structs as templates when editing arrays of struct entries.
4. Stop after the read-back verify; do not keep exploring unrelated asset areas.

# Pitfalls and fixes

- Symptom: `GET /mcp` returns `405`.
  Likely cause: expected server behavior.
  Fix: switch to JSON-RPC POSTs.

- Symptom: `ue_read` only shows placeholder structs.
  Likely cause: the asset needs deeper reflection.
  Fix: load it with `ue_py` and inspect the real nested fields.

- Symptom: write succeeds but the result is still uncertain.
  Likely cause: only the immediate write response was checked.
  Fix: do a fresh read-back after `save_package()`.

- Symptom: `DA_GameModeGeneral` rewards look partly correct but a later pass finds missing weekly activity rewards or stale task text.
  Likely cause: only `TaskAwardList` was checked, while task-line `PercentAwardList` or `TaskDesc` was left stale.
  Fix: re-read both reward surfaces and reconcile task IDs, item IDs, counts, and relevant descriptions before finishing.

- Symptom: edit fails because the MCP server requires planning.
  Likely cause: `ue_plan_submit` was skipped.
  Fix: submit the plan first, then retry `ue_py`.

# Verification checklist

1. Port `12463` is reachable.
2. `initialize` succeeds and yields a session id.
3. `tools/list` includes `ue_read`, `ue_plan_submit`, and `ue_py`.
4. The asset is re-read after save and the final values match the intended edit.
5. For `DA_GameModeGeneral` reward work, both `TaskAwardList` and `PercentAwardList` read back with the intended values.
