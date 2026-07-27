---
title: UGCVehicleCommonSystem
language: lua
---

# UGCVehicleCommonSystem

载具系统通用功能接口库

## Functions

### SetVehicleHPMax

设置载具最大血量
本接口不会自动改变载具血量，游戏逻辑中改变载具血量时（比如收到伤害、载具维修等）会考虑载具最大血量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| MaxHP | number | 最大血量 |

### SetVehicleHP

设置载具血量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| HP | number | 血量 |

### SetVehicleFuelPercent

设置载具油量（按照百分比设置）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| FuelPercent | number | 油量百分比 |

### GetVehicleHPMax

获得载具最大血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具最大血量

### GetVehicleHP

获得载具当前血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具当前血量

### GetVehicleFuelMax

获得载具最大油量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 载具最大油量

### GetVehicleFuelConsumeFactor

获得当前油耗系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 当前油耗系数

### GetVehicleFuel

获得当前油量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** number 当前油量

### IsDontConsumeFuel

获得当前是否不耗油
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 当前是否不耗油

### IsDontDamage

获得当前是否不受到伤害
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |

**Return:** boolean 当前是否不受到伤害

### GetWheelHP

获得轮胎血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| WheelIndex | number | 轮胎 ID（从 1 开始） |

**Return:** number 载具轮子血量

### SetWheelHP

设置轮胎血量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Vehicle | ASTExtraVehicleBase | 载具 |
| WheelIndex | number | 轮胎 ID（从 1 开始） |
| HP | number | 载具轮子血量 |

**Return:** boolean 设置是否成功