---
title: AUGCItemSpawner
language: cpp
---

# AUGCItemSpawner

物资刷新系统：物资刷新器

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| ItemConfig | FUGCItemSpawnerItemConfig | 配置刷出的物资类别和数量 |
| bNeedSpawnerManager | bool | 物资刷新点是否能独立运作，还是依赖于物资刷新管理器 |
| bLoopSpawn | bool | 独立运作模式时，物资被拾取后是否会自动生成 |
| SpawnCD | float | 开启循环生成后，物资被拾取后间隔重新刷新 |
| bTraceGround | bool | 物资是否一定刷新在地面上 |
| bRandomRotator | bool | 物资方向是否随机 |
| StartRadius | int32 | 物资刷新位置到刷新点的最小距离 |
| EndRadius | int32 | 物资刷新位置到刷新点的最大距离 |

## Functions

### SpawnItem

生效范围 服务器
	  刷物资

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ItemID | int32  | 物资ID |
| ItemCount | int32 | 物资数量 |

**Return:** AActor *  刷出的物资

### SetItemConfig

生效范围 服务器
	  修改物资刷新配置

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InItemConfig | FUGCItemSpawnerItemConfig | 新的物资刷新配置 |

**Return:** void  

### CleanItems

生效范围 服务器
	  清除刷出的物资

**Return:** void 刷出的物资