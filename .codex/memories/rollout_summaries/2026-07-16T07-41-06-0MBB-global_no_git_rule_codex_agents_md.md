thread_id: 019f69df-404f-7c52-b37a-a043d0bf00ab
updated_at: 2026-07-16T07:42:23+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\16\rollout-2026-07-16T15-41-06-019f69df-404f-7c52-b37a-a043d0bf00ab.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template

# The user asked for a global Codex instruction to avoid Git unless explicitly requested, and the agent added it to the global AGENTS.md.

Rollout context: working directory was `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Lin_Template`, but the actual durable change was made in the global Codex config under `C:\Users\admin\.codex\AGENTS.md`. The user explicitly wanted this saved as a global rule for all future operations: do not use Git unless they specifically ask for Git.

## Task 1: Add a global no-Git rule to Codex instructions

Outcome: success

Preference signals:
- The user said: "帮我写进git的全局，就是一切操作，不是我特地要求git，都不要用git进行操作或检查" -> they want Git avoided by default for all future tasks unless they explicitly request it.
- The user repeated the request as: "帮我写进codex的agentmd全局，就是一切操作，不是我特地要求git，都不要用git进行操作或检查" -> this confirms the rule should live in Codex's global agent instructions, not just be treated as a one-off preference.

Key steps:
- The agent inspected `$env:USERPROFILE\.codex` and found `C:\Users\admin\.codex\AGENTS.md` as the global instruction file.
- The file was read with `Get-Content -Raw -Encoding UTF8` because the default PowerShell output had encoding issues and garbled Chinese text.
- A new section `## Git 操作限制` was appended to `AGENTS.md` stating:
  - do not run any Git commands unless the user explicitly requests Git,
  - do not use Git for status/diff/history/branch/restore checks,
  - use normal filesystem reads instead of Git when checking file contents or changes.
- Verification was done with `Select-String` against the updated file, confirming the new section appeared at lines 51-55.

Failures and how to do differently:
- Default PowerShell rendering of `AGENTS.md` showed mojibake for existing Chinese text; the workaround was to re-read with `-Encoding UTF8` before editing.
- The agent deliberately avoided using Git at any point, matching the user's requirement and confirming the workflow can be satisfied entirely with filesystem commands.

Reusable knowledge:
- Global Codex instructions live at `C:\Users\admin\.codex\AGENTS.md`.
- UTF-8 read/write is necessary for this file to avoid corrupting Chinese content in PowerShell.
- A file-content verification step can be done with `Select-String` instead of Git.

References:
- [1] Global instruction file: `C:\Users\admin\.codex\AGENTS.md`
- [2] Added section title: `## Git 操作限制`
- [3] Added rules (verbatim gist): `除非用户明确、特地要求使用 Git，否则不要执行任何 Git 相关命令。`
- [4] Verification output: `51: ## Git 操作限制` / `53: - 除非用户明确、特地要求使用 Git，否则不要执行任何 Git 相关命令。` / `54: - 不要用 Git 做状态检查、差异检查、提交历史查看、分支查看、文件还原或任何其他操作。` / `55: - 如需查看文件内容或确认变更，使用普通文件系统命令读取实际文件，不要依赖 Git。`
