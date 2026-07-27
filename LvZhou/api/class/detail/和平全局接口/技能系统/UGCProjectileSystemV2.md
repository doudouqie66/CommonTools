---
title: UGCProjectileSystemV2
language: lua
---

# UGCProjectileSystemV2

技能抛体系统接口库

## Functions

### CreateProjectile

发射技能抛体
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ProjectileClass | UClass | 抛体类型 |
| Owner | AActor | 新生成抛体的所属对象 |
| Location | FVector | 生成坐标 |
| Direction | FVector | 初始方向 |
| Speed | number | 初始速度 |
| GravityScale | number | 初始重力系数 |
| DamageValue | number | 抛体的伤害值 |
| DamageType | FRestrictedDamageTypeData | 抛体的伤害类型 |

**Return:** APESkillProjectileBase 抛体实例

### CreateProjectileSimple

发射技能抛体（不传递伤害）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ProjectileClass | UClass | 抛体类型 |
| Owner | AActor | 新生成抛体的所属对象 |
| Location | FVector | 生成坐标 |
| Direction | FVector | 初始方向 |
| Speed | number | 初始速度 |
| GravityScale | number | 初始重力系数 |
| Target | number | 抛体的伤害值 |

**Return:** APESkillProjectileBase 抛体实例

### SetDirection

设置抛体速度方向
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |
| NewDirection | FVector | 新方向 |

### SetSpeed

设置抛体速度大小
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |
| NewSpeed | number | 新速度 |

### SetGravityScale

设置抛体重力系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |
| NewGravityScale | number | 新重力系数 |

### SetDamage

设置抛体伤害，会覆盖所有的伤害值，伤害方式会调整为常量
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |
| NewDamage | number | 伤害值 |

### SetTarget

设置抛体目标
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |
| NewTarget | APawn | 新的目标单位 |

### GetProjectileMovementComponent

获取抛体移动组件
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |

**Return:** UProjectileMovementComponent 抛体组件类

### GetDirection

获取抛体速度方向
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |

**Return:** FVector 当前速度方向

### GetSpeed

获取抛体速度大小
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |

**Return:** number 新速度

### GetGravityScale

获取抛体重力系数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |

**Return:** number 新重力系数

### GetTarget

获取抛体目标
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APESkillProjectileBase | 抛体实例 |

**Return:** APawn 新的目标单位

### GetProjectileListByGroupKey

获取抛体组中的抛体
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | APESkillProjectileBase | 发射抛体的角色 |
| GroupKey | string | 抛体组Key |

**Return:** APESkillProjectileBase[] 抛体组中的抛体