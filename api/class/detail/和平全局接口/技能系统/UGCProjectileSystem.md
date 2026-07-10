---
title: UGCProjectileSystem
language: lua
---

# UGCProjectileSystem

抛体系统接口库

## Functions

### SpawnProjectile

生成抛体
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ProjectileSpawnInfo | ProjectileSpawnInfo | 抛体生成参数 |

**Return:** APVEProjectileBase 抛体对象实例

### GetDestroyAfterHit

获取抛体命中之后是否销毁
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APVEProjectileBase | 抛体 |

**Return:** boolean 是否命中后销毁

### SetDestroyAfterHit

设置抛体命中之后是否销毁
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APVEProjectileBase | 抛体 |
| bNewDestroyAfterHit | boolean | 是否销毁 |

### GetPMComp

获取抛体运动组件
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APVEProjectileBase | 抛体 |

**Return:** boolean 抛体运动组件

### SetMoveAfterImpactWithNoLost

设置抛体命中之后是否继续移动
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APVEProjectileBase | 抛体 |
| bNeedUpdateImmide | boolean | 是否更新组件速度 |

### GetLastUpdateCompBeforeStop

停止前最后更新的组件
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Projectile | APVEProjectileBase | 抛体 |

**Return:** boolean 最后更新的组件