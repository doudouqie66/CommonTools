---
title: UGCSimpleCharacterSystem
language: lua
---

# UGCSimpleCharacterSystem

怪物小动物系统接口库

## Functions

### GetHealth

获取当前血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |

**Return:** number 血量

### SetHealth

设置当前血量（不会超过血量最大值）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |
| Health | number | 血量 |

### GetHealthMax

获取当前最大血量
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |

**Return:** number 血量

### SetHealthMax

设置当前最大血量（当前血量不会随之变大，但如果超过最大血量，则会变小）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |
| HealthMax | number | 最大血量 |

### GetSpeedScale

获取移动速度系数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |

**Return:** number 移动系数

### SetSpeedScale

设置移动速度系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |
| SpeedScale | number | 移动系数 |

### IsInvincible

获取是否无敌
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |

**Return:** boolean 是否无敌

### SetInvincible

设置是否无敌
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |
| IsInvincible | boolean | 是否无敌 |

### IsAlive

获取是否存活
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SimpleCharacter | ASTExtraSimpleCharacterBase | 小动物/ ASTExtraSimpleCharacter @怪物 |

**Return:** boolean 是否存活