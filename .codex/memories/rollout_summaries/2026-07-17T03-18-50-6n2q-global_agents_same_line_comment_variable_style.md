thread_id: 019f6e15-8017-70f3-bb44-1d5a4f5b6162
updated_at: 2026-07-17T03:23:24+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T11-18-55-019f6e15-8017-70f3-bb44-1d5a4f5b6162.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Douluo
git_branch: main

# Updated the global Codex rules in `C:\Users\admin\.codex\AGENTS.md` to capture a Lua/Lua-like naming/commenting preference.

Rollout context: the user asked to write a global Codex preference about adding variables/constants with same-line comments, then iteratively corrected the wording until it matched their intended style. The work happened in the global Codex config area, not inside the project repo.

## Task 1: Add and refine global variable/comment rule

Outcome: success

Preference signals:
- The user asked: `帮我写进codex全局，如果有添加变量就是比如FIRST_HIT_RUN_AWAY_DISTANCE这种的，要在后面添加注释，这种FIRST_HIT_RUN_AWAY_DISTANCE  --注释。要在同一行注释` -> indicates they want this stored as a global default, and they care about same-line trailing comments for new variables/constants.
- The user then corrected the format multiple times: `帮我改一下下吧，添加的注释要以这种风格。First_Hit_Run_Away_Distance这种` and later `你整合一个，怎么那么长` -> indicates they want the rule phrased briefly and the example formatted in `First_Hit_Run_Away_Distance` style, not long explanatory text.
- The user finally clarified: `不是啊，新增的变量要这样子First_Hit_Run_Away_Distance  --注释` -> indicates the intended default is a variable name in that mixed-case/underscore style, followed by a same-line `-- 注释` comment.

Key steps:
- Read `C:\Users\admin\.codex\AGENTS.md` and patched the global preference section directly.
- Confirmed the file exists and then verified the exact inserted line with `Select-String` after each edit.
- Shortened the rule after the user said the first version was too long.
- Corrected the example after the user clarified the intended naming style.

Failures and how to do differently:
- The first two edits over-explained the rule and used the wrong example shape (too much emphasis on uppercase variable names / overly verbose explanation).
- Future edits of this preference should keep the rule to one compact sentence and mirror the user’s exact example style: `First_Hit_Run_Away_Distance  -- 注释`.

Reusable knowledge:
- The global Codex user rules live in `C:\Users\admin\.codex\AGENTS.md`.
- The file can be edited safely and verified with `Select-String` without touching project Git.
- PowerShell displayed some encoding corruption in the file output, but the relevant English/example line was still readable and verifiable.

References:
- [1] Final rule written at `C:\Users\admin\.codex\AGENTS.md:46`: `新增常量/变量命名用 \\`First_Hit_Run_Away_Distance\\` 风格，并同行加注释：\\`First_Hit_Run_Away_Distance  -- 注释\\`。`
- [2] Verification command used repeatedly: `Select-String -LiteralPath 'C:\Users\admin\.codex\AGENTS.md' -Pattern 'First_Hit_Run_Away_Distance' -Context 0,0`
- [3] Earlier user correction showing desired format: `First_Hit_Run_Away_Distance  --注释`
