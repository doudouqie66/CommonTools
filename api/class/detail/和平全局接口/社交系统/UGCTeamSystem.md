---
title: UGCTeamSystem
language: lua
---

# UGCTeamSystem

队伍系统接口库

## Variables

| Name | Type | Description |
|------|------|-------------|
| UGCTeamSystem.NotifyInviteToJoinLobbyTeamDelegate |  | 通知被邀请加入大厅队伍 生效范围：客户端 @param InviteToJoinLobbyTeamToken table @邀请到大厅队伍的 Token。Inv |
| UGCTeamSystem.NotifyRequestToJoinLobbyTeamDelegate |  | 通知请求加入大厅队伍 生效范围：客户端 @param RequestToJoinLobbyTeamToken table @请求加入大厅队伍的 Token。Re |

## Functions

### GetTeamComponent

【废弃】获取队伍组件
生效范围：服务器

**Return:** TeamModeComponent 队伍组件

### ChangePlayerTeamID

改变玩家 TeamID
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |
| TeamID | number | 队伍 ID |

### GetUIDsByTeamID

根据TeamID获取对应队伍里所有的玩家UID
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** @UID 列表

### GetPlayerKeysByTeamID

根据TeamID获取对应队伍里所有的玩家PlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |
| bReturnAsLuaTable | boolean | 是否以LuaTable返回 |

**Return:** @PlayerKey 列表

### GetAIPlayerKeysByTeamID

根据 TeamID 获取对应队伍里所有的假人玩家 AIPlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** @PlayerKey 列表

### GetPlayerControllersByTeamID

根据TeamID获取对应队伍里所有的玩家PlayerController
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** @PlayerController 列表

### GetPlayerPawnsByTeamID

根据TeamID获取对应队伍里所有的玩家PlayerPawn
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** @PlayerPawn 列表

### GetPlayerStatesByTeamID

根据TeamID获取对应队伍里所有的玩家PlayerState
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** @PlayerState 列表

### GetLobbyTeamUIDsByUID

【废弃】请使用 UGCTeamSystem.GetLobbyTeammateUIDsByUID
根据玩家的UID获取其大厅里组队的成员 UID 列表
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID |

**Return:** number[] 玩家 UID 列表

### GetLobbyTeammateUIDsByUID

根据玩家的UID获取其大厅里组队的成员 UID 列表
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID |

**Return:** number[] 玩家 UID 列表

### GetDynamicLobbyTeammateUIDsByUID

根据玩家的UID获取其大厅里组队的成员 UID 列表。跟 UGCTeamSystem.GetLobbyTeammateUIDsByUID 不同的是，此接口会返回动态组队（UGCTeamSystem.InviteToJoinLobbyTeam、UGCTeamSystem.RequestToJoinLobbyTeam）的成员 UID 列表，而 UGCTeamSystem.GetLobbyTeammateUIDsByUID 以及其他接口只会返回从大厅进入战斗对局那一刻的该玩家在大厅组队的成员 UID 列表。
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID |

**Return:** number[] 玩家 UID 列表

### GetLobbyTeamKeysByPlayerKey

【废弃】请使用 UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey
根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** @PlayerKey 列表

### GetLobbyTeammatePlayerKeysByPlayerKey

根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** @PlayerKey 列表

### InviteToJoinLobbyTeam

邀请玩家加入（我的）大厅队伍
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InviteeUID | number | 被邀请玩家 UID |

### RespondToInvitingToJoinLobbyTeam

响应加入大厅队伍的邀请
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ResponseOfBeingInvitedToJoinLobby | EResponseOfBeingInvitedToJoinLobby | 被邀请加入大厅队伍的响应类型：EResponseOfBeingInvitedToJoinLobby |
| InviteToJoinLobbyTeamToken | table | 邀请到大厅队伍的 Token |

### RequestToJoinLobbyTeam

玩家请求加入大厅队伍
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamMemberUID | number | 大厅队伍中的玩家 UID |

### RespondToRequestingToJoinLobbyTeam

队长响应被加入大厅队伍的请求
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ResponseOfBeingRequestedToJoinLobby | EResponseOfBeingRequestedToJoinLobby | 被请求加入大厅队伍的响应类型：EResponseOfBeingRequestedToJoinLobby |
| RequestToJoinLobbyTeamToken | table | 请求加入大厅队伍的 Token |

### QuitLobbyTeam

玩家主动退出大厅队伍
生效范围：客户端

### KickFromLobbyTeam

队长将指定玩家踢出大厅队伍
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetUID | number | 被踢玩家的 UID |

### TransferLobbyTeamLeader

队长转让大厅队长身份给指定玩家
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLeaderUID | number | 新队长的 UID |

### GetTeamIDs

获取所有队伍的 ID
生效范围：服务器

**Return:** @TeamID 列表

### GetPlayerList

获取所有玩家信息列表
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bWithOB? | boolean | 是否包含 OB |

**Return:** number[] 玩家信息列表

### GetTeamSizeByID

【废弃】请使用 UGCTeamSystem.GetTeamSizeByTeamID
获取队伍中的玩家数量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** number 玩家数量

### GetTeamSizeByTeamID

获取队伍中的玩家数量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** number 玩家数量

### GetTeamLeaderKeyByTeamID

通过队伍编号获取队长PlayerKey列表（每个在大厅点击开始游戏的玩家都会被设置为队长，例如四人匹配，队伍里只有一个队长，三人匹配，再随机匹配一个队友，三人里面点击开始游戏的是队长，随机匹配的那个队友也是队长，属于他自己那个小队的队长）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | 队伍 ID |

**Return:** number[] 队长PlayerKey

### GetIsLeaderOrNotByPlayerKey

通过玩家PlayerKey查询身份
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** boolean 是否是队长

### GetAllTeammatePlayerState

获取所有队友的的PlayerState
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bExcludeSelf | boolean | 是否排除玩家自身 |

**Return:** ASTExtraPlayerState[] 

### GetTeammatePlayerStateByPlayerKey

获取指定PlayerKey队友的的PlayerState
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** ASTExtraPlayerState 

### IsTeamIDValid

判断TeamID是否合法
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TeamID | number | TeamID |

**Return:** ASTExtraPlayerState 

### GetTeamIDByPlayerKey

根据PlayerKey获取队伍ID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** number 队伍 ID

### GetTeammateIndexByPlayerKey

根据PlayerKey获取队友ID(头顶标号)
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | ASTExtraPlayerState | 玩家 PlayerState |
| PlayerKey | number | 玩家 PlayerKey |

**Return:** number 队友 ID

### GetAllTeammateIndex

获取所有队友的的队友ID(头顶标号)
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | ASTExtraPlayerState | 玩家 PlayerState |

**Return:** number> 以PlayerKey为键，队友ID为值的表

### GetPlayerKeyByTeammateIndex

根据队友ID(头顶标号)获取队友PlayerKey
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | ASTExtraPlayerState | 玩家 PlayerState |
| TeammateIndex | number | 队友ID |

**Return:** number 队友 PlayerKey