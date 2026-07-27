thread_id: 019f5ad3-cc03-70a1-a033-21832dc4d591
updated_at: 2026-07-13T09:51:09+00:00
rollout_path: C:\Users\admin\.codex\sessions\2026\07\13\rollout-2026-07-13T17-34-22-019f5ad3-cc03-70a1-a033-21832dc4d591.jsonl
cwd: \\?\C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\HunHuan

# 讲解并定位项目里的玩家存档读取/写入时机，以及如何让 `Version` 进入统一存档流程

Rollout context: 用户在 `C:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\HunHuan` 项目里先问“玩家数据存档”是什么，又进一步问如何只写一个纯 Lua 脚本去修改 `archive.Version` 并保存，最后追问“项目里面是从哪里读取数据，然后什么时候存储数据”“一般读取和存档应该在什么时候”。助理按本地文档和现有 Lua 代码做了只读排查，并新增了一个独立工具脚本 `Script/Common/ArchiveVersionHelper.lua`。后续还定位了项目主线的读写链路：登录时 `LoadFromArchive`，字段 setter 里即时 `SaveToArchive`，死亡/离场时兜底保存血量，结算前不要再调用 `SavePlayerArchiveData`。

## Task 1: 解释玩家存档和修改 `Version`

Outcome: success

Preference signals:
- 用户明确说“比如我想要建一个脚本，然后这个脚本里面就是可以去改这个version，然后还有保存的，纯纯的一个lua脚本，应该怎么写呢应该、” -> 说明用户偏好可直接拿来用的最小 Lua 脚本，而不是只讲概念。
- 用户随后接受“试一下1” -> 说明当给出多个实现路径时，用户愿意先选一个最小、独立、纯脚本方案。

Key steps:
- 查本地文档 `D:\LvZhou\LvZhou\wiki\玩家数据存档.md` 和 API `D:\LvZhou\LvZhou\api\class\detail\和平全局接口\角色系统\UGCPlayerStateSystem.json`，确认 `GetPlayerArchiveData` / `SavePlayerArchiveData` 是整表读写，且 `SavePlayerArchiveData` 不能在结算后调用。
- 新增 `Script/Common/ArchiveVersionHelper.lua`，提供 `SetVersionByUID(UID, Version)` 和 `SetVersion(PlayerPawn, Version)` 两个入口：先读存档，再 `archive.Version = Version`，最后 `SavePlayerArchiveData` 写回。
- 检查新文件内容后，向用户说明用法：`UGCGameSystem.UGCRequire("Script.Common.ArchiveVersionHelper")` 后调用 `SetVersion(playerPawn, 2)` 或 `SetVersionByUID(UID, 2)`。

Failures and how to do differently:
- 机器环境里没有 `lua` / `luac` 命令，无法做真正的 Lua 语法检查，只能做静态文本核对；未来若要验证这类脚本，需要依赖项目内可执行的 Lua 环境或编辑器内运行。
- 这类“只改一个字段后保存”的独立工具虽然可用，但如果主线存档系统没把该字段纳入统一保存表，后续仍可能被别处覆盖掉；因此不能把工具脚本当成最终长期方案。

Reusable knowledge:
- `UGCPlayerStateSystem.SavePlayerArchiveData(UID, ArchiveData)` 写的是整张表，不要只传 `{ Version = 2 }`，否则其他字段会被覆盖。
- `GetPlayerArchiveData` / `SavePlayerArchiveData` 都是服务器侧使用。
- 项目里的主线存档最好统一接入 `UGCPlayerState`，否则独立工具改完后可能被别的保存路径覆盖。

References:
- [1] 新增文件：`Script/Common/ArchiveVersionHelper.lua`
- [2] 工具函数：`SetVersionByUID(UID, Version)` / `SetVersion(PlayerPawn, Version)`
- [3] 文档依据：`D:\LvZhou\LvZhou\wiki\玩家数据存档.md`
- [4] API 依据：`D:\LvZhou\LvZhou\api\class\detail\和平全局接口\角色系统\UGCPlayerStateSystem.json`

## Task 2: 定位项目里存档读取/保存时机

Outcome: success

Preference signals:
- 用户问“你看下我的项目里面，是从哪里读取数据，然后什么时候存储数据的” -> 说明用户希望答案基于项目真实代码链路，而不是泛泛而谈。
- 用户继续追问“你看下我的项目里面”“一般读取和存档应该在什么时候呢” -> 说明用户偏好把结论落到具体时机和操作原则上。

Key steps:
- 搜索 `Script` 和 `ExtendResource` 下的 `GetPlayerArchiveData` / `SavePlayerArchiveData` / `LoadFromArchive` / `SaveToArchive` / `ArchiveUID` / `bArchiveLoaded` / `GetPlayerUID`。
- 顺着主链路确认：`Script\Blueprint\UGCGameMode.lua` 的 `UGC_PlayerLoginEvent` 等待 `PC.Pawn` 就绪后调用 `PlayerState:LoadFromArchive(tonumber(UID))`。
- 打开 `Script\Blueprint\UGCPlayerState.lua`，确认 `LoadFromArchive()` 内部先 `GetPlayerArchiveData(UID, 1)`，再按 `ARCHIVE_KEYS` 恢复字段；`SaveToArchive()` 重新组表后调用 `UGCPlayerStateSystem.SavePlayerArchiveData(UID, data, 1)`。
- 核对 setter 触发保存：`SetHunHuan`、`SetRegenPercent`、`SetHP`、`SetBaseAttack`、`SetBaseMaxHp`、`SetAutoPickButtonHidden`、`SetAutoAttackButtonHidden`、`SetFeiButton0Hidden`、`SetYXWD_InvincibleBuff`、`SetLotteryState`、`SetSignInEvent`、`SetUnlockedTitles`、`SetEquippedTitleID`、`SetProbability_Bonus` 等都会立刻保存。
- 进一步确认血量兜底保存点：`UGCGameMode:UGC_PlayerKilledEvent`、`UGCGameMode:OnPawnDefeat`、`UGCPlayerPawn:ReceiveEndPlay` 都会调用 `SaveCurrentHP()`，最终写回存档。
- 额外检查扩展包：`GiftPackComponent.lua` 和 `LotteryComponent.lua` 也会读写同一份 Archive，且是“先读整表，再补字段，再整表写回”。

Failures and how to do differently:
- `UGCPlayerState.lua` 当前主线保存表里没有 `Version` 字段；因此即使独立工具能写入 `Version`，后续任何 `SaveToArchive()` 都可能把它丢掉。未来如果要长期保留新字段，必须把它纳入 `ARCHIVE_KEYS` 和对应 getter/setter。
- 项目里有多个保存入口，扩展包（礼包/抽奖）和主线状态系统都在写同一张 Archive；未来新增字段时要注意整表覆盖风险，避免不同模块互相踩字段。

Reusable knowledge:
- 主线读档时机：玩家登录、`Pawn` 可用后读一次，而不是在 Tick 或频繁重读。
- 主线写档时机：字段变化就保存；死亡、Pawn 销毁、离场等关键节点再兜底一次。
- `UGCPlayerState:SaveToArchive()` 不是“增量更新”，而是基于注册表重建完整存档表；只有在 `ARCHIVE_KEYS` 中登记的字段才会被持久化。
- 结算之后再保存会有丢档风险，文档和接口注释都明确提醒不要在对局结算后调用 `SavePlayerArchiveData`。

References:
- [1] `Script\Blueprint\UGCGameMode.lua:230-247`：登录后延迟到 Pawn 准备好再 `LoadFromArchive`
- [2] `Script\Blueprint\UGCPlayerState.lua:87-147`：`LoadFromArchive` / `SaveToArchive` 主体实现
- [3] `Script\Blueprint\UGCPlayerState.lua:156-378`：一系列 setter 调用 `SaveToArchive`
- [4] `Script\Blueprint\UGCGameMode.lua:347-385`：死亡/失败事件保存当前血量
- [5] `Script\Blueprint\UGCPlayerPawn.lua:899-905`：Pawn 离场时保存当前血量
- [6] `ExtendResource\GiftPack\OfficialPackage\Script\GiftPack\Blueprint\GiftPackComponent.lua:266-310`
- [7] `ExtendResource\Lottery\OfficialPackage\Script\Lottery\Blueprint\LotteryComponent.lua:1659-1715`

## Task 3: 给出一般性的存读档节奏建议

Outcome: success

Preference signals:
- 用户问“一般读取和存档应该在什么时候呢” -> 说明用户需要可直接落地的时机建议，不只是代码位置。

Key steps:
- 将项目实际链路总结为：登录时读一次、过程里按事件保存、死亡/离场兜底、结算前最后保存。
- 明确否定“只在游戏结束时保存”和“每帧保存”两种极端方案。

Failures and how to do differently:
- 如果后续要把 `Version` 稳定加入主线存档，不应只靠独立工具；需要回到 `UGCPlayerState.lua` 做统一字段注册。

Reusable knowledge:
- 推荐节奏：`玩家登录 -> 等 PlayerController / PlayerState / Pawn 就绪 -> 读取 Archive -> 恢复状态 -> 过程变化即时保存 -> 死亡/离场兜底 -> 结算前最终保存`。
- 不要高频 `Tick` 保存；不要只靠结算点保存；不要在 `SendPlayerSettlement` 之后再保存。

References:
- [1] `UGC_PlayerLoginEvent` 的延迟读档流程
- [2] `SaveCurrentHP()` 的死亡/离场兜底保存
- [3] 文档和接口注释中关于“结算后不要保存”的提示
