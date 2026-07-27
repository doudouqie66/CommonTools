# 和平精英绿洲启元 UGC 项目

## 项目上下文

- **编辑器**：和平精英绿洲启元编辑器
- **项目类型**：UGC 玩法项目
- **主语言**：Lua

## 文档库（唯一来源，禁止联网搜索）

**所有文档查询只走本地 Obsidian vault `D:\LvZhou\LvZhou\`，不要访问在线网站。本地比在线更快、更准确。**

| 路径 | 内容 |
|------|------|
| `D:\LvZhou\LvZhou\wiki\` | 编辑器 Wiki 文章（.md，约 290 篇） |
| `D:\LvZhou\LvZhou\api\class\` | API 类文档（JSON） |
| `D:\LvZhou\LvZhou\api\cppenum\` | 枚举定义（JSON） |
| `D:\LvZhou\LvZhou\api\cppstruct\` | 数据结构（JSON） |
| `D:\LvZhou\LvZhou\api\globalfunc\` | 全局函数（JSON） |

## 文档查询规则（必须遵守）

**每次编写代码前，必须先 Grep 本地文档，以本地文档为准，禁止凭经验猜测或访问在线网站。**

查询流程：
1. 根据需求关键词，Grep 搜索 `D:\LvZhou\LvZhou\wiki\` 下的 .md 文件
2. 如需查 API 细节，Grep `D:\LvZhou\LvZhou\api\` 对应目录
3. Read 找到的文件，确认 API 签名、参数、返回值后再写代码
4. 文档未覆盖的内容，明确告知用户，不要编造
5. **任何时候不确定或不知道，直接说"不确定"/"不知道"，不要强行推测或编造答案**

常用搜索示例：
```
Grep "技能" --glob "*.md" "D:\LvZhou\LvZhou\wiki"
Grep "BuffAction" --glob "*.md" "D:\LvZhou\LvZhou\wiki"
Grep "ClassName" --glob "*.json" "D:\LvZhou\LvZhou\api\class"
```

## 编码偏好

- Prefer the smallest possible change for all code edits.
- Change as little code as practical.
- Keep code concise and simple.
- Avoid unnecessary nil checks; only add them when they protect a real risk.
- Avoid extracting helper functions unless reuse is clearly justified; inline is preferred.
- 新增常量/变量命名用 `First_Hit_Run_Away_Distance` 风格，并同行加注释：`First_Hit_Run_Away_Distance  -- 注释`。
- Lua 脚本中 `--` 后面的单行注释必须使用中文。
- Lua 脚本中每个方法/函数定义前都必须添加功能注释，格式为：
  `--[[----------------------功能说明------------------------]]`
  注释内容要简短描述该方法用途，例如：
  `--[[----------------------给玩家增加经验------------------------]]`

## Git 操作限制

- 除非用户明确、特地要求使用 Git，否则不要执行任何 Git 相关命令。
- 不要用 Git 做状态检查、差异检查、提交历史查看、分支查看、文件还原或任何其他操作。
- 如需查看文件内容或确认变更，使用普通文件系统命令读取实际文件，不要依赖 Git。

## 运行日志查询偏好

- 需要查项目运行日志时，统一从 `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\Saved\Logs` 下面进入对应项目目录，再查看该项目内最新日期的日志。

## MCP 连接偏好

- 当用户要求使用 MCP、连通 MCP、查看编辑器状态、操作绿洲/UE 编辑器，或需要查询编辑器内资产/场景信息时，优先连接本机 MCP 服务。
- 编辑器的 MCP Server 入口：菜单栏 → **窗口 → 开发者工具 → MCP Server**，打开控制面板查看运行状态和端口号。
- 当前实际端口为 `http://127.0.0.1:12463`（与官方默认 33444 不同，以此为准）。
- 连接前先做只读探测：确认端口可用，并通过 MCP `initialize` / `tools/list` 获取服务能力。
- 编辑器 MCP 目前提供以下工具：
  - `ue_read`：只读查询编辑器上下文、API、schema、枚举、子类等。
  - `ue_plan_submit`：提交编辑器写操作计划（PRV 安全策略）。
  - `ue_py`：在编辑器中执行 Python。
- 覆盖的编辑器模块：场景与 Actor 管理、技能编辑器、物品编辑器、行为树、蓝图编辑器、UI 编辑器(UMG)、数据表、实体编辑器、资产查找与视窗控制。
- 做只读查询时优先使用 `ue_read`。
- 做会修改编辑器状态的操作前，必须先查询相关 API/上下文，再提交 `ue_plan_submit`，最后用 `ue_py` 执行；不要直接猜 API 或直接写入。
- 如果 MCP 连不上或工具列表异常，明确告知用户连接失败原因，不要假装已经连通。
- MCP 目前处于早期实验阶段，每次操作前建议保存工程，逐步验证，操作后人工检查关键内容。
- 排错时查看调用日志：MCP Server 面板 → **Open Log Folder**，日志路径 `Saved/log/MCP_YYYYMMDD.log`。
