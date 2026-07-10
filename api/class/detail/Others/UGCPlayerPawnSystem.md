---
title: UGCPlayerPawnSystem
language: lua
---

# UGCPlayerPawnSystem

角色系统接口库

## Functions

### HasPawnState

是否在指定状态下
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PawnState | EPawnState | 角色状态 |

**Return:** boolean 

### AllowPawnState

是否允许进入指定状态
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PawnState | EPawnState | 角色状态 |

**Return:** boolean 

### SwitchPoseState

切换 Pose 状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PoseState | ESTEPoseState | 角色状态 |

**Return:** boolean 

### EnterPawnState

进入指定状态
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PawnState | EPawnState | 角色状态 |

**Return:** boolean 

### LeavePawnState

离开指定状态
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PawnState | EPawnState | 角色状态 |

**Return:** boolean 

### DisabledPawnState

禁用指定状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| PawnState | EPawnState | 角色状态 |
| IsDisabled | boolean | 是否禁用 |

### GetIsFPP

获取是否第一人称视角
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn |  |

**Return:** boolean 是不是 FPP 模式

### SetIsFPP

设置是否第一人称视角
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| IsFPP | boolean | 是否第一人称 |
| bForce | boolean | 强制设置人称 |

**Return:** boolean 设置是否成功

### GetIsTPP

获取是否第三人称视角
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn |  |

**Return:** boolean 是否第三人称

### SetIsTPP

设置是否第三人称视角
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| IsTPP | boolean | 是否第三人称 |
| bForce | boolean | 强制设置 TPP 模式 |

**Return:** boolean 设置是否成功

### GetIsInvincible

获取是否无敌
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** boolean 是否无敌

### SetIsInvincible

设置是否无敌
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| IsInvincible | boolean | 是否无敌 |

### TryEnterParachuteState

尝试进入跳伞状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| CheckPawnState | EPawnState[] | 不允许进入跳伞的角色状态 |
| CanOpenParachuteHeight | number | 允许开伞高度 |
| ForceOpenParachuteHeight | number | 强制开伞高度 |
| CloseParachuteHeight | number | 关伞高度 |
| bParachuteAvatarNotShown | boolean | 是否不显示伞包 |

### ExitParachuteState

退出跳伞状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

### HideBoneByBoneName

根据玩家角色的骨骼名称修改骨骼的显隐性
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| BoneName | string | 骨骼名称 |
| bHide | boolean | true隐藏，false显示 |

### SetAvatarVisibility

设置角色Avatar的显隐
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| bHide | boolean | true显示，false隐藏 |
| ExcludingAvatarSlot | EAvatarSlotType[] | 排除的AvatarSlot类型 |

### ChangeAvatarMesh

切换玩家角色使用的全身骨骼体
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| SkeletalMesh | UClass|string | 全身骨骼体蓝图类或路径 |

### RecoverAvatarMesh

恢复玩家角色使用的全身骨骼体
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

### SkipSpawnDeadTombBox

玩家死亡取消生成盒子
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| bIsSkip | boolean | 玩家是否取消生成死亡盒子 |

### GetPartTypeSockets

获取角色骨骼里所有的PartTypeSocket
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Character | ACharacter | 角色 |

**Return:** UPartTypeSocket[] PartTypeSocket列表

### SetDefaultPlayerRespawnPointSelectionMethod

设置玩家的默认复活方式
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Method | EUGCPlayerRespawnPointSelectionMethod | 复活方式 |
| RespawnMethodInfo | FVector | 指定复活位置（仅选择复活方式为指定复活点生效） |

### SetDefaultPlayerSpawnPointSelectionMethod

设置玩家默认的出生方式
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Method | EUGCPlayerSpawnPointSelectionMethod | 出生方式 |
| SpawnMethodInfo | FVector|uint8 | 出生点类型 |
| PlayerStartInfo | boolean | 是否随机出生点ID |

### RespawnPlayer

复活单个角色
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | PlayerKey |
| RespawnDelayTime | number | 复活延时时间，默认为0 |
| IsDestoryAlivePawn | boolean | 是否销毁当前未死亡的角色 |
| DestroyDelayTime | number | 销毁未死亡角色的延时时间，默认为0.01，销毁时间不能设为零，否则角色不销毁 |

### RespawnAllPlayers

复活所有角色
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RespawnDelayTime | number | 复活延时时间，默认为0 |
| IsDestroyAlivePawn | boolean | 是否销毁当前未死亡的角色 |
| DestroyDelayTime | number | 销毁未死亡角色的延时时间，默认为0 |

### SetRescueInterruptable

设置救援队友是否能被打断
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| bCanBeInterrupt | boolean | 是否能被打断 |
| CanBeInterruptWhenOverRadius | number | 施救者可以移动的范围半径(传入的bCanBeInterrupt为true时这个变量才生效) |

### SetRescueOtherDuration

设置救援队友的时长
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| RescueOtherDuration | number | 救援队友的时长 |

### SetRescuingSelfCDTime

设置自救的冷却时间
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| RescuingSelfCDTime | number | 救援队友的冷却时间 |

### ConfirmRescueOther

确认救援队友
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| InTargetPawn | PlayerPawn | 救援对象 |

### ConfirmRescueOtherImmediately

确认救援队友并将队友立即救起
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| InTargetPawn | PlayerPawn | 救援对象 |

### SetIsDirectlyDie

设置玩家倒地后立即死亡
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| bIsDirectlyDie | boolean | 是否倒地后立即死亡 |

### DrawOutline

设置玩家描边
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| bIsDrawOutline | boolean | 是否描边 |
| OutlineThickness | number | 描边粗细 |
| OutlineColor | FLinearColor | 描边颜色 |

### AddOcclusionHighlight

添加透视效果
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetCharacter | ACharacter | 被透视的角色或怪 |
| Causer | AActor | 透视的发起方 |
| Type | EPEBuffOcclusionHighlightType | 透视类型(仅Causer透视/Causer及其队友透视/所有人) |
| Color | FLinearColor | 透视颜色 |

**Return:** number 透视ID，用于移除透视效果,<=0为无效值

### RemoveOcclusionHighlight

移除透视效果
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| OcclusionID | number | 透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值 |

### SetOutputBusVolume

修改角色发出的声音音量
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| Volume | number | 音量大小 |

### SetEightWayUniformSpeedEnabled

设置八向移动相同速度
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| Enable | boolean | 是否启用 |

### SetUpSubViewTargetServer

设置ViewTarget
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | PlayerPawn | 角色 |
| bSetUp | boolean | 是否启用 |
| TargetActor | AActor | 是否启用 |
| BlendTime | number | 缓动时间 |