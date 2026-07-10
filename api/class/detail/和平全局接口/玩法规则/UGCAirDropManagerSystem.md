---
title: UGCAirDropManagerSystem
language: lua
---

# UGCAirDropManagerSystem

空投系统接口库

## Functions

### GenerateAirDrop

生成指定ID空投
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ID | number | 空投配置ID |
| DroppingLocation | FVector | 掉落位置 结构Vector={X=0,Y=0,Z=0} |
| DroppingSpeed | number | 掉落速度 |

**Return:** int32 是否生成成功, 实例ID

### GetAllAirDropConfigs

获得所有空投配置
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ID | number | 空投配置ID |

**Return:** OneAirDrop[] 空投配置

### DestroyAirDrop

销毁指定实例ID空投
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InsID | number | 指定实例ID的空投 0.1s 后销毁 |

**Return:** boolean 是否销毁成功

### GetAirDropItemList

获取指定实例ID空投的物品列表
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InsID | number | 空投实例InsID |

**Return:** FPickUpItemData[] 空投的物品列表

### GetAllAirDropInstanceIDs

获取当前场景内所有的实例ID
生效范围：服务器

**Return:** int32[] 空投实例ID列表