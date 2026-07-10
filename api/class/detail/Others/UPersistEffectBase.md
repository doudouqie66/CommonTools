---
title: UPersistEffectBase
language: cpp
---

# UPersistEffectBase

PersistEffectBase, PersistEffectSkill和PersistEffectBuff的基类

> Inheritance: UBasicPersistEffect -> IGameplayTaskOwnerInterface -> ILimitationInterface -> IOwnershipChainInterface

## Functions

### HasAuthority

检查当前对象是否运行在服务器端
	  生效范围: 服务器&客户端

**Return:** bool 否运行在服务器端

### IsAutonomous

检查当前对象是否运行在主控客户端
	  生效范围: 服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bConsiderObReplay | bool | 是否包含观战和回放时的主控端 |

**Return:** const bool  否运行在主控客户端

### RefreshValidTime

刷新PersistEffect的生效时间
	  生效范围: 服务器

**Return:** void 

### SetTickEnable

设置PersistEffect是否每帧执行Tick函数，在服务器调用只会开启服务器的Tick，在客户端调用只会开启客户端的Tick
	  生效范围: 服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### SetApplyTime

设置PersistEffect的生效时间
	  生效范围: 服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float |  |

**Return:** void  

### GetApplyTime

获取PersistEffect的生效时间
	  生效范围: 服务器&客户端

**Return:** float 

### GetTimeStamp

获取当前服务器时间戳
	  生效范围: 服务器&客户端

**Return:** float 

### HasTag

检查当前技能或Buff是否有某个类型的Tag
	  生效范围SC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tag | FGameplayTag | 要检查的Tag |

**Return:** bool  是否有对应的Tag

### GetRemainingTime

获取剩余时间

**Return:** float 剩余时间

### GetOwnerActor

获取PersistEffect所属的Actor
	  生效范围: 服务器&客户端

**Return:** AActor * 

### GetOwnerComponent

获取PersistEffect所属的组件
	  生效范围: 服务器&客户端

**Return:** UPersistBaseComponent *