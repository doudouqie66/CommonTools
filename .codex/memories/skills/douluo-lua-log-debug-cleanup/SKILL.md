---
name: douluo-lua-log-debug-cleanup
description: Add narrow temporary Lua logs for Douluo runtime bugs, read the right log files, and remove the logs cleanly once the root cause is known.
user-invocable: false
allowed-tools:
  - shell_command
---

# When to use

Use this when:
1. A Douluo Lua/runtime bug is unclear and the user asks to "add log" or inspect logs first.
2. The issue is in item use, UI callbacks, drop logic, or respawn/state flow.
3. The user wants diagnosis before behavior changes.

Do not use this when:
1. Static code inspection already proves the bug.
2. The user has already asked to remove the logs and the root cause is known.

# Inputs / context to gather

1. The exact file/function path under investigation.
2. The smallest set of state values needed to disambiguate the bug.
3. The expected log destination:
   - `Saved\\Logs\\Douluo\\DSlog`
   - `Saved\\Logs\\Douluo\\Clientlog`
   - `FullLog` when plain `print(...)` output is involved

# Procedure

1. Add the fewest possible tracepoints around the suspected branch or owner-resolution path.
2. Use a distinctive prefix such as:
   - `[HunHuan_01]`
   - `[L_Com.UseHunHuan]`
   - `[BaseMons:BPDie]`
   - `[SoulMesh]`
3. Log only the variables that separate likely causes:
   - owner/backpack component presence
   - item ID / count
   - pawn/controller presence
   - branch choice / stop markers
4. Reproduce and inspect the latest relevant DS/client/full logs.
5. Tighten the search to the exact prefix or Lua exception line; do not grep the entire log corpus blindly.
6. Once the root cause is identified and the user says the issue is understood or fixed, remove the temporary logs.
7. Verify cleanup with `rg` against the exact prefixes or log markers.

# Efficiency plan

1. Prefer one focused logging round over broad, noisy instrumentation.
2. Search the latest log files first, not every historical log.
3. Keep prefixes stable so later cleanup is one grep away.
4. If a tracepoint would change control flow, do not add it unless the user asked for a functional fix.

# Pitfalls and fixes

- Symptom: log search is too noisy.
  Likely cause: broad grep across all engine logs.
  Fix: search the latest DS/client/full log and the exact prefix or exception line.

- Symptom: `print(...)` is not visible where expected.
  Likely cause: output is landing in `FullLog` as `LogNula: LuaLog`.
  Fix: inspect `FullLog` in addition to `DSlog`/`Clientlog`.

- Symptom: the temporary patch is hard to remove later.
  Likely cause: no unique prefix was used.
  Fix: always add a unique prefix and keep the logs local to one file/function.

- Symptom: instrumentation patching fails on Chinese-commented files.
  Likely cause: brittle large-context patch.
  Fix: patch smaller exact code anchors.

# Verification checklist

1. The logs clearly distinguish the plausible causes.
2. The answer cites the exact exception or decisive log line.
3. Temporary logs are removed after diagnosis when requested.
4. `rg` confirms the debug prefixes no longer remain in the cleaned files.
