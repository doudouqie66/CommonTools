---
title: UGCWeaponManagerSystem
language: lua
---

# UGCWeaponManagerSystem

武器管理系统接口库

## Functions

### GetWeaponManagerComponent

获取武器管理组件
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** UWeaponManagerComponent 武器管理组件

### GetWeaponBySlot

获取对应插槽的武器实例
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| Slot | ESurviveWeaponPropSlot | 武器槽位 |

**Return:** ASTExtraWeapon 武器

### GetCurrentWeapon

获取当前使用的武器实例
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** ASTExtraWeapon 武器

### GetLastUsedWeapon

获取上一把武器
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** ASTExtraWeapon 武器

### GetCurrentWeaponSlot

获取当前使用武器插槽
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** ESurviveWeaponPropSlot 武器槽位

### SwitchWeaponBySlot

切换对应槽位的武器
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| Slot | ESurviveWeaponPropSlot | 武器槽位 |
| IsUseAnimation | boolean | 是否播放使用动画 |

### CurrentWeaponAttachToBack

收起武器
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

### GetWeaponItemID

获取武器ItemID
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Weapon | ASTExtraWeapon | 武器 |

**Return:** number 物品ID,对应物品表中ID

### GetWeaponName

获取武器名
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Weapon | ASTExtraWeapon | 武器 |

**Return:** string 武器名称

### GetCurrentUsingAmmoID

获取当前消耗弹药
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |

**Return:** number 弹药ID

### SetWeaponSlotVisible

设置武器的可见性
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerPawn | PlayerPawn | 玩家角色 |
| WeaponSlot | ESurviveWeaponPropSlot | 武器槽位 |
| bVisible | boolean | 是否可见 |