---
name: douluo-mcp-http-check
description: Verify and use the local Douluo MCP service when the user says to connect MCP on port 12463 or wants live editor-state answers instead of Lua-only guesses.
user-invocable: false
allowed-tools:
  - shell_command
---

# When to use

Use this when:
1. The user asks to connect MCP on port `12463`.
2. Native MCP tools are missing but the user still wants live editor-state inspection.
3. A Douluo question depends on blueprint/asset state, open-editor context, or current CDO values.

Do not use this when:
1. The answer can be proven from repo files alone.
2. The user wants code edits without any need for live editor state.

# Inputs / context to gather

1. Confirm the current cwd is the Douluo project checkout.
2. Check whether the user asked for read-only diagnosis or for edits after inspection.
3. Remember the known endpoint: `http://127.0.0.1:12463/mcp`.

# Procedure

1. Verify the TCP port first with:
   `Test-NetConnection -ComputerName 127.0.0.1 -Port 12463`
2. If the port is reachable, probe MCP over HTTP:
   - `GET /mcp` returning `405` is expected.
   - Use a JSON-RPC `initialize` POST to `/mcp`.
3. Capture the returned `Mcp-Session-Id` header and reuse it for follow-up MCP POSTs.
4. Run `tools/list` and confirm the exposed tools. Known good set in this environment:
   - `ue_read`
   - `ue_py`
   - `ue_plan_submit`
5. For editor-state inspection, prefer narrow reads:
   - exact component fields
   - exact CDO properties
   - exact skill-task/range/hitbox queries
6. If a question is still ambiguous after `ue_read`, use `ue_py` for read-only reflection.
7. If the user asked for diagnosis only, stop at the evidence and explain what is likely in the asset/config path before proposing edits.

# Efficiency plan

1. Do not start with giant dumps; target only the fields tied to the symptom.
2. Cache the verified endpoint, session header, and tool list for the rest of the run.
3. When a Lua wrapper looks thin, stop reading deeper there and pivot to the blueprint/skill asset.
4. If the user only needs proof MCP is reachable, stop after the TCP check, `initialize`, and `tools/list`.

# Pitfalls and fixes

- Symptom: `Get-NetTCPConnection` shows nothing.
  Likely cause: this service does not show up reliably there.
  Fix: trust `Test-NetConnection` plus a real `POST /mcp initialize`.

- Symptom: `GET /mcp` returns `405`.
  Likely cause: expected behavior for this server.
  Fix: switch to JSON-RPC POSTs.

- Symptom: `ue_py` `load_object()` fails.
  Likely cause: missing class argument.
  Fix: use `ue.load_object(Blueprint, path)`.

- Symptom: the answer still feels speculative after reading a Lua file.
  Likely cause: the real logic is in the blueprint/skill asset.
  Fix: inspect the asset CDO or graph instead of the wrapper.

# Verification checklist

1. `Test-NetConnection` shows `TcpTestSucceeded True`.
2. `initialize` succeeds and returns MCP session info.
3. `tools/list` returns the expected tools.
4. The final answer cites concrete live-editor values or asset facts, not guesses.

