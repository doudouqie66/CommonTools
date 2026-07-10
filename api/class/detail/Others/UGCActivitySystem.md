---
title: UGCActivitySystem
language: lua
---

# UGCActivitySystem

活动系统库（需要启用活动GamePart）

## Variables

| Name | Type | Description |
|------|------|-------------|
| UGCActivitySystem.OnActivityInfoReadyDelegate |  | 活动信息准备好时触发的委托 生效范围：客户端&&服务器 |
| UGCActivitySystem.OnUpdateValidActivityIDsDelegate |  | 更新有效活动时触发的委托 活动系统会按照每个活动配置的生效周期来定期更新有效活动 生效范围：客户端&&服务器 |

## Functions

### IsActivityInfoReady

活动信息是否已准备好
生效范围：客户端&&服务器

**Return:** bool 活动信息是否已准备好

### GetAllActivityInfos

获取所有活动的信息
生效范围：客户端&&服务器

**Return:** UGCActivityInfo[] 所有活动信息

### GetActivityInfo

获取指定活动ID的活动信息
生效范围：客户端&&服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActivityID | int | 活动ID |

**Return:** UGCActivityInfo 活动信息

### GetValidActivityIDs

获取所有有效的活动ID
生效范围：客户端&&服务器

**Return:** int[] 

### GetNearestPeriodIndex

获取指定活动距当前时间最近的生效周期序号，
如果已经没有符合条件的开启周期，则返回最后一个生效周期的序号
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActivityID | int | 活动ID |

**Return:** int 活动开启周期序号, 0表示永久时间，-1表示活动不存在或未开启