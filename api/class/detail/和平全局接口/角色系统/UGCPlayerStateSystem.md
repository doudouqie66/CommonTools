---
title: UGCPlayerStateSystem
language: lua
---

# UGCPlayerStateSystem

玩家数据/状态系统接口库

## Functions

### IsAlive

是否存活
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** boolean 

### IsExit

是否离开游戏（主动退出，非断线）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** boolean 

### GetUGCVIPLevel

获取 VIP Level
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** number 

### GetPlayerAccountInfo

获取玩家的账号数据
生效范围：服务器 & 客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** FPlayerAccountInfo 

### GetPlayerBattleInfo

获取玩家的战斗数据
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** FPlayerBattleInfo 

### SavePlayerArchiveData

保存玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）!!!!注意，不能在对局结算之后保存存档数据，在对局结算后调用此接口无法成功保存存档数据
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID |
| ArchiveData | table | 存档数据 |

**Return:** boolean 

### GetPlayerArchiveData

获取玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家 UID |

**Return:** table 存档数据

### ClearPlayerArchiveData

清理玩家存档数据（GM 指令，仅开发环境生效）
生效范围：客户端

### GetPlayerPlatformGender

获取玩家账号性别
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlatformGender | number | 从DS获取的玩家性别 |
| UID | number | 玩家UID |

**Return:** number 玩家账号性别，0 - 隐藏，1 - 男，2 - 女

### GetTeamID

获取 TeamID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number |  |

**Return:** number 

### GetPlayerKeyInt64

获取 64 位玩家 PlayerKey
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | PlayerState |  |

**Return:** number 

### GetPlayerKey

获取字符串玩家 PlayerKey
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerState | PlayerState |  |

**Return:** string