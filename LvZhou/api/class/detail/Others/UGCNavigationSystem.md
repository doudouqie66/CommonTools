---
title: UGCNavigationSystem
language: lua
---

# UGCNavigationSystem

寻路导航系统接口库

## Functions

### BuildNavmesh

同步生成全地图寻路图, 会阻塞服务器运行
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| AgentName | FName | 作用Agent的寻路图名称一般为"Mannequin" |

### AsyncBuildNavmesh

异步生成全地图寻路图
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| AgentName | FName | 作用Agent的寻路图名称一般为"Mannequin" |

### AddDynamicNavAffect

添加寻路图动态影响区域，标记后可只针对该区域增量更新寻路
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| AgentName | FName | 作用Agent的寻路图名称一般为"Mannequin" |
| InBounds | FBox | 区域大小 |

**Return:** bool 操作结果

### AsyncIncrementalBuild

区域异步增量生成寻路图，和AddDynamicNavAffect配合使用
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| AgentName | FName | 作用Agent的寻路图名称一般为"Mannequin" |

**Return:** bool 操作结果

### ProjectPointToNavigation

投影点到寻路图上的位置
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| Point | FVector | 要投影的点 |
| QueryExtent | FVector | 投影查询范围 |

**Return:** bool,FVector 操作结果, @投影位置

### GetRandomReachablePointInRadius

范围获取随机可寻路到达点位
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |
| Origin | FVector | 查找原点 |
| Radius | float | 查询范围 |

**Return:** bool,FVector 操作结果， @可达位置

### IsNavigationBeingBuilt

寻路图是否构建
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |

**Return:** bool 查询结果

### GetNavigationGenerationFinishedDelegate

获取寻路图生成结束Delegate
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject | 当前世界上下文 |

**Return:** Delegate 寻路图生成结束Delegate