---
title: UGCPlayerControllerSystem
language: lua
---

# UGCPlayerControllerSystem

玩家控制器系统

## Functions

### DisableJoyStickSprint

禁用摇杆触发疾跑
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

### EnableJoyStickSprint

启用摇杆触发疾跑
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

### GetTeamID

通过 PlayerController 获取 TeamID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

**Return:** number 玩家队伍 ID

### GetPlayerCharacter

获取玩家角色
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

**Return:** ASTExtraBaseCharacter 玩家角色

### TeleportTo

瞬移至坐标
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| X | number | X坐标 |
| Y | number | Y坐标 |
| Z | number | Z坐标 |

### SetControlRotation

设置控制旋转
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| NewRotation | Rotator | 新旋转量 可使用Rotator.New(Roll,Pitch,Yaw)创建,结构{Roll=Roll, Pitch=Pitch, Yaw=Yaw} |

### EnableBulletTrackEffect

启用子弹尾迹特效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

### NotifyBattleBeginPlay

使玩家立刻进入游戏。首先设置PlayerController蓝图上的DelayNotifyBattleBeginPlay，设置之后在切换DS，或者进入游戏的两种情况下的loading图会延长，接着调用本接口，即可立刻跳过loading图进入游戏
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

### IsLocalController

判断是否为主控端
生效范围：客户端&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InController | AController | Pawn |

**Return:** boolean 当前端是否为主控端