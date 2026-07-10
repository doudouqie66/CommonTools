---
title: UGCPawnAttrSystem
language: lua
---

# UGCPawnAttrSystem

【废弃】角色属性系统接口库

## Functions

### SetHealth

【废弃】请使用 UGCAttributeSystem
设置血量(不会超过最大血量)
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| Health | number | 血量 |

### GetHealth

【废弃】请使用 UGCAttributeSystem
获取当前血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 血量

### SetHealthMax

【废弃】请使用 UGCAttributeSystem
设置血量上限（当前血量不会变化）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| HealthMax | number | 最大血量 |

### GetHealthMax

【废弃】请使用 UGCAttributeSystem
获取血量上限
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 最大血量

### SetSignal

【废弃】请使用 UGCAttributeSystem
设置信号值（不会超过最大值）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| Signal | number | 信号值 |

### GetSignal

【废弃】请使用 UGCAttributeSystem
获取信号值
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 信号值

### GetSignalMax

【废弃】请使用 UGCAttributeSystem
获取信号值上限
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 最大信号值

### SetEnergy

【废弃】请使用 UGCAttributeSystem
设置能量值（设置的值不能超过能量值上限[默认100]）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| Energy | number | 能量值 |

### GetEnergy

【废弃】请使用 UGCAttributeSystem
获取能量值
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 能量值

### GetEnergyMax

【废弃】请使用 UGCAttributeSystem
获取能量值上限
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 最大能量值

### SetSpeedScale

【废弃】请使用 UGCAttributeSystem
设置移动速度总系数，影响走路、冲刺、蹲下、趴下与游泳速度
注：该接口已废弃，请改用其他各移动状态的速度修改接口
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| SpeedScale | number | 移动速度总系数 |

### GetSpeedScale

【废弃】请使用 UGCAttributeSystem
获取移动速度总系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 移动速度总系数

### GetWalkSpeedScale

【废弃】请使用 UGCAttributeSystem
获取走路移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 走路移动速度系数

### SetWalkSpeedScale

【废弃】请使用 UGCAttributeSystem
设置走路移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| WalkSpeedScale | number | 走路移动速度系数 |

### GetSprintSpeedScale

【废弃】请使用 UGCAttributeSystem
获取疾跑移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 疾跑移动速度系数

### SetSprintSpeedScale

【废弃】请使用 UGCAttributeSystem
设置疾跑移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| SprintSpeedScale | number | 疾跑移动速度系数 |

### GetCrouchSpeedScale

【废弃】请使用 UGCAttributeSystem
获取蹲下移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 蹲下移动速度系数

### SetCrouchSpeedScale

【废弃】请使用 UGCAttributeSystem
设置蹲下移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| CrouchSpeedScale | number | 蹲下移动速度系数 |

### GetProneSpeedScale

【废弃】请使用 UGCAttributeSystem
获取趴下移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 趴下移动速度系数

### SetProneSpeedScale

【废弃】请使用 UGCAttributeSystem
设置趴下移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ProneSpeedScale | number | 趴下移动速度系数 |

### GetSwimSpeedScale

【废弃】请使用 UGCAttributeSystem
获取游泳移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 游泳移动速度系数

### SetSwimSpeedScale

【废弃】请使用 UGCAttributeSystem
设置游泳移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| SwimSpeedScale | number | 游泳移动速度系数 |

### GetCurrentFOVTPP

【废弃】请使用 UGCAttributeSystem
获取当前第三人称视角FOV
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 当前FOV

### SetCurrentFOVTPP

【废弃】请使用 UGCAttributeSystem
设置当前第三人称视角FOV
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| CurrentFOV | number | FOV |

### GetCanSwitchFPP

【废弃】请使用 UGCAttributeSystem
获取是否可以切换至第一人称视角
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** boolean 是否可切换至第一人称

### SetCanSwitchFPP

【废弃】请使用 UGCAttributeSystem
设置是否可以切换至第一人称视角
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| CanSwitchFPP | boolean | 是否可切换至第一人称 |

### GetCurrentFOVFPP

【废弃】请使用 UGCAttributeSystem
获取当前第一人称视角FOV
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 当前第一人称FOV

### SetCurrentFOVFPP

【废弃】请使用 UGCAttributeSystem
设置当前第一人称视角FOV 
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| CurrentFOV_FPP | number | FOV |

### GetHearRadius

【废弃】请使用 UGCAttributeSystem
获取听觉半径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 半径

### GetPickUpRadius

【废弃】请使用 UGCAttributeSystem
获取拾取半径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 半径

### GetShowPlayerName

【废弃】请使用 UGCAttributeSystem
获取是否显示玩家名称
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** boolean 显示玩家名称

### SetShowPlayerName

【废弃】请使用 UGCAttributeSystem
设置是否显示玩家名称
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| ShowPlayerName | boolean | 显示玩家名称 |

### GetIsAI

【废弃】请使用 UGCAttributeSystem
获取是否AI
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** boolean 是否AI

### GetPlayerName

【废弃】请使用 UGCAttributeSystem
获取玩家名称
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** string 玩家名称

### GetPlayerKey

【废弃】请使用 UGCAttributeSystem
获取字符串玩家PlayerKey
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** string 玩家PlayerKey

### GetPlayerKeyInt64

【废弃】请使用 UGCAttributeSystem
获取64位玩家Key
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 玩家Key

### GetPlayerUID

【废弃】请使用 UGCAttributeSystem
获取玩家UID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** string 玩家 UID

### GetPlayerTeamIndex

【废弃】请使用 UGCAttributeSystem
获取玩家队伍中序号（非TeamID，而是玩家在队伍中的序号）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 玩家UID

### GetJumpType

【废弃】请使用 UGCAttributeSystem
获取跳跃类型
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** ECharacterJumpType 跳跃类型

### GetJumpHeight

【废弃】请使用 UGCAttributeSystem
获取跳跃高度
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 跳跃高度

### GetJumpZVelocity

【废弃】请使用 UGCAttributeSystem
获取跳跃时的初速度
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 跳跃时的初速度

### SetJumpZVelocity

【废弃】请使用 UGCAttributeSystem
设置跳跃时的初速度
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| JumpZVelocity | number | 跳跃时的初速度 |

### GetStandHalfHeight

【废弃】请使用 UGCAttributeSystem
获取站立半高
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 站立半高

### GetStandRadius

【废弃】请使用 UGCAttributeSystem
获取站立半径
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 站立半径

### GetCrouchHalfHeight

【废弃】请使用 UGCAttributeSystem
获取蹲伏半高
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 蹲伏半高

### GetProneHalfHeight

【废弃】请使用 UGCAttributeSystem
获取匍匐半高
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 匍匐半高

### GetTeamID

【废弃】请使用 UGCAttributeSystem
获取TeamID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 队伍ID