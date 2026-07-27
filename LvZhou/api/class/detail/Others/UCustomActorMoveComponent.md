---
title: UCustomActorMoveComponent
language: cpp
---

# UCustomActorMoveComponent

一个给ActivityBaseActor移动功能的组件，用于移动所挂载的ActivityBaseActor

> Inheritance: UActorComponent

## Functions

### StartMove

生效范围：S
	  开始移动

**Return:** void 

### StopMove

生效范围：S
	  结束移动

**Return:** void 

### SetMoveSpeed

生效范围：S
	  设置移动速度

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSpeed | float | 速度 |

**Return:** void  

### SetGlideTime

生效范围：S
	  设置固定的滑行时间, 而不是使用起始点到终点位置除以速度得到这个数值

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GlideTime | float | 滑行时间 |

**Return:** void  

### SetPosition

生效范围：S
	  设置移动的起始点和终点

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStart | FVector  | 起点 |
| InEnd | FVector | 终点 |

**Return:** void  

### IsMoving

生效范围：SC
	  获取Actor是否在移动
	  return 是否在移动

**Return:** bool