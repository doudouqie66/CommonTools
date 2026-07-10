---
title: UOverlapCheckAreaComponent
language: cpp
---

# UOverlapCheckAreaComponent

区域重叠检测组件，能够检测到某个范围内开启重叠检测的Actor

> Inheritance: UActorComponent -> IRegionObjectInterface -> IComponentHibernationNotifyInterface

## Functions

### CheckOverlapActor

生效范围：S
	  触发一次区域重叠检测

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float |  |

**Return:** void  

### StartCheck

生效范围：S
	  开始检测

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIgnoreActorList | TArray < AActor * >  |  |
| bStopIfStarted | bool |  |

**Return:** void  

### StopCheck

生效范围：S
	  停止检测

**Return:** void 

### AddIgnoreActors

生效范围：S
	  添加要忽略的Actor列表

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Ignores | TArray < AActor * > | 要添加的Actor列表 |

**Return:** void  

### RemoveIgnoreActor

生效范围：S
	  移除忽略的Actor列表

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Ignore | AActor * |  |

**Return:** int32