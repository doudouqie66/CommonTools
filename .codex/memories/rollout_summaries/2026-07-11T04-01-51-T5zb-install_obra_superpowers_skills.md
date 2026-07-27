thread_id: 019f4f56-b9b5-7cb0-a745-8d46321a9a61
updated_at: 2026-07-11T04:03:23+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\11\rollout-2026-07-11T12-01-56-019f4f56-b9b5-7cb0-a745-8d46321a9a61.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Installed the `obra/superpowers` skill set into the local Codex skills directory

Rollout context: The user was in `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo` and asked in Chinese: “你帮我安装superpower这个技能 [obra/superpowers](https://github.com/obra/superpowers)”. The agent used the built-in `skill-installer` workflow and verified the install on disk.

## Task 1: Install `obra/superpowers`

Outcome: success

Preference signals:
- The user asked for the GitHub repo link directly, which implies that when a user names a skill/repo rather than a curated skill name, future agents should try to install from the provided GitHub repository path instead of only searching curated lists.
- The user said “帮我安装” (“help me install”), which indicates they wanted the agent to take action rather than just explain the steps.

Key steps:
- Read `C:\Users\admin\.codex\skills\.system\skill-installer\SKILL.md` to confirm the installer supports GitHub repo/path installs.
- Queried the repo with GitHub API to determine the structure under `obra/superpowers` before installing.
- Discovered the repo is a bundle of skills under `skills/`, not a single top-level `SKILL.md`.
- Installed the full set of skill directories from `skills/` via `install-skill-from-github.py`.
- Verified the skills exist under `C:\Users\admin\.codex\skills` after installation.

Failures and how to do differently:
- An initial attempt to inspect the repo with `git ls-tree --name-only main https://github.com/obra/superpowers.git` returned no useful tree listing, so the agent pivoted to the GitHub Contents API, which exposed the actual directory structure cleanly.
- The important correction was to avoid assuming a single skill file; this repo distributes multiple skills, so future installs should inspect the repo layout first.

Reusable knowledge:
- `skill-installer` is the correct system skill for installing skills from GitHub repos into `$CODEX_HOME/skills`.
- `obra/superpowers` contains multiple skills under `skills/`, including `brainstorming`, `dispatching-parallel-agents`, `executing-plans`, `finishing-a-development-branch`, `receiving-code-review`, `requesting-code-review`, `subagent-driven-development`, `systematic-debugging`, `test-driven-development`, `using-git-worktrees`, `using-superpowers`, `verification-before-completion`, `writing-plans`, and `writing-skills`.
- The installer reported successful placement at `C:\Users\admin\.codex\skills\<skill-name>` and the verification command confirmed the directories exist.

References:
- [1] Installer doc read: `Get-Content -LiteralPath C:\Users\admin\.codex\skills\.system\skill-installer\SKILL.md`
- [2] Repo structure check via GitHub API:
  - `Invoke-RestMethod -Uri 'https://api.github.com/repos/obra/superpowers/contents?ref=main'`
  - `Invoke-RestMethod -Uri 'https://api.github.com/repos/obra/superpowers/contents/skills?ref=main'`
- [3] Install command used:
  - `python C:\Users\admin\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py --repo obra/superpowers --path skills/brainstorming skills/dispatching-parallel-agents skills/executing-plans skills/finishing-a-development-branch skills/receiving-code-review skills/requesting-code-review skills/subagent-driven-development skills/systematic-debugging skills/test-driven-development skills/using-git-worktrees skills/using-superpowers skills/verification-before-completion skills/writing-plans skills/writing-skills`
- [4] Verification output showed all 14 skills present under `C:\Users\admin\.codex\skills`.
