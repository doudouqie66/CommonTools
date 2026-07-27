thread_id: 019f7014-0d97-7ce2-9b5c-36c22c473a63
updated_at: 2026-07-17T12:39:31+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\17\rollout-2026-07-17T20-36-33-019f7014-0d97-7ce2-9b5c-36c22c473a63.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\chongzita
git_branch: main

# 为十层塔里的怪物设计“本层三点往返巡逻、不开主动攻击”的实现方案

Rollout context: 用户在 `\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\chongzita` 询问：塔共有十层，希望怪物只在自己层内按路点巡逻，不主动攻击人，只在本层三个点之间来回走，不去别层。对话是按本地 `brainstorming` 技能走的，且先查了本地文档/工程里的怪物与路点写法，再给方案。

## Task 1: 设计十层塔怪物本层巡逻方案

Outcome: success

Preference signals:

- 用户先点名 `brainstorming` 技能再提需求，说明这类功能性/改行为请求应先做设计再动手，别直接开改。
- 用户在被问到“每层一个刷怪点还是手动摆怪”后回答“我摆吧直接”，说明他们倾向于**直观地在场景里摆放对象**，不想被复杂刷怪逻辑打断。
- 用户的原始目标是“怪物在自己的层按照路点巡逻，不主动攻击人”“只会在自己的那一层的三个点来回走，不会到别的点去”，说明未来类似需求应优先把“隔层隔离、非追击、固定三点循环”作为默认验收标准。

Key steps:

- 先按技能要求读取了 `using-superpowers` 与 `brainstorming`，然后再查本地资料，避免凭印象直接给方案。
- 在本地 `D:\LvZhou\LvZhou\wiki` 中命中 `路点移动.md` 和 `让怪物移动起来.md`，确认官方已有“怪物按路点移动”的标准做法。
- 同时查看了工程里的 `Script\Blueprint\Monster\Mons_Spawner.lua`、`Script\Blueprint\Prefabs\Monsters\BaseMonse.lua`、`BaseMonse_Child.lua`，确认当前工程已有 `BP_UGCMobSpawner` 派生刷怪点和基础怪物蓝图脚本可接入。
- 最终给出推荐：每层 1 个 `BP_UGCMobSpawner` + 本层 3 个 `AIWayPointActor`，把路点放进该刷怪点的 `STSpawnerWayPoint.WayPointArr`，寻路方式选 `OneWayLoop`，让怪物在 `1 -> 2 -> 3 -> 2 -> 1` 之间往返；怪物模板用支持 `FollowWaypointPart` 的实体编辑器怪物，并确认行为树启用“巡逻”。

Failures and how to do differently:

- 用户没有要求立即实现，所以只做了设计，不应误以为已经改了工程。
- 一开始不应假设用户一定想手动摆怪后再写自定义巡逻；在这个工程里，文档确认的稳定路径仍是“刷怪点 + 路点数组 + 行为树巡逻”。
- 如果后续真的要支持“纯手摆怪”而非刷怪点生成，需要进一步查路点/移动 API 或实体组件绑定方式，不能直接凭经验补代码。

Reusable knowledge:

- 本地文档已确认：`路点移动` 是官方支持的怪物沿路点移动方案，适合 MOBA/固定路线巡逻。
- `AIWayPointActor` 需要先放到场景中，再把同一层的路点按顺序拖进 `BP_UGCMobSpawner` 下的 `STSpawnerWayPoint.WayPointArr`；数组顺序就是行走顺序。
- `WayPointArr` 里路点顺序决定巡逻顺序；`OneWayLoop` 对应到终点后原路返回并循环，适合“三个点来回走”的塔层巡逻。
- 官方文档提示：若怪物不动，先检查行为树是否启用“巡逻”，以及是否配置了导航网格（NavMesh）。
- `让怪物移动起来.md` 里给出的基础形态是：AIController 在 `OnPossess` 中 `RunBehaviorTree(UE.LoadObject(...))`，黑板里常见 `Target` 变量；但本次需求是“不主动攻击人”，因此不应直接沿用“寻敌 Target -> 移动到玩家”的那条链。

References:

- [1] `D:\LvZhou\LvZhou\wiki\路点移动.md`：明确写到搜索 `AIWayPointActor` 创建路点、把路点拖到 `BP_UGCMobSpawner` 下的 `STSpawnerWayPoint.WayPointArr`，并指出“路点寻路方式”包含 `CircleLoop / OneWay / OneWayReturn / OneWayLoop`。
- [2] `D:\LvZhou\LvZhou\wiki\让怪物移动起来.md`：展示了 `AIController` 在 `OnPossess` 里加载并运行行为树的标准写法，以及“寻敌节点 + 怪物移动节点”的基础追敌结构。
- [3] `D:\LvZhou\LvZhou\wiki\队伍与阵营.md`：说明怪物可通过 `General Camp ID` 设置阵营，且可用 `UGCCampSystem.SetCampForActor` 动态改阵营；如果后续要进一步降低攻击倾向，可结合阵营/仇恨配置检查。
- [4] `Script\Blueprint\Monster\Mons_Spawner.lua`：当前刷怪点脚本类为 `Mons_Spawner_C:BP_UGCMobSpawner_C`。
- [5] `Script\Blueprint\Prefabs\Monsters\BaseMonse.lua` / `BaseMonse_Child.lua`：当前基础怪物脚本类为 `BaseMonse_C:BP_UGC_GenericMobPawn_Base_C`，死亡时会走 `self.UGCPresetCommonDropItemComponent:StartDrop(...)`。
