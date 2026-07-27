---
title: UGCAttributeSystem
language: lua
---

# UGCAttributeSystem

属性系统接口库

## Functions

### GetGameAttributeValue

获取指定属性数值
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |

**Return:** number 目标数值

### SetGameAttributeValue

设置指定属性数值（自动同步到客户端）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |
| Value | number | 操作数值 |

### GetGameAttributeValueMax

获取指定属性数值的最大值
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |

**Return:** number 目标数值

### GetGameAttributeValueMin

获取指定属性数值的最小值
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |

**Return:** number 目标数值

### AddGameAttributeValue

服务端添加指定属性数值（自动同步到客户端）
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |
| Value | number | 操作数值 |

### AddGameAttributeOperation

对指定属性添加数值修改操作
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |
| OperateType | EAttrOperator | 操作类型 |
| Value | number | 操作数值 |

**Return:** string 操作完成的唯一ID

### RemoveGameAttributeOperation

对指定属性移除特定的数值修改操作
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| OperateUniqueID | string | 操作属性时返回的唯一ID |

### AddGameAttributeChangedDelegate

注册指定属性变化时的回调函数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |
| CallbackFunction | function | 此属性变化时的回调函数 函数形式: function(AttributeOwner, AttrName, CurValue) end |

**Return:** Delegate 属性变化的代理

### RemoveGameAttributeChangedDelegate

清除指定属性变化时的回调函数
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AttributeOwner | AActor | 操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） |
| AttributeType | UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举 | 操作属性的枚举 |
| ChangedDelegate | Delegate | 注册回调函数时返回的代理 |

### GetSourceObjectFromContext

获取伤害事件上下文中的原对象
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** UObject 原对象

### GetVictimFromContext

获取伤害事件上下文中的受害者
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** AActor 受害者

### GetCauserFromContext

获取伤害事件上下文中的攻击者
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** AActor 攻击者(如玩家，怪物, 枪械等)

### GetInstigatorFromContext

获取伤害事件上下文中的攻击者Controller
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** AController 攻击者Controller(如玩家PlayerController，怪物AIController, 枪械所属角色的Controller等)

### GetSourceMagnitudeFromContext

获取伤害事件上下文中的原伤害数值
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** number 伤害数值

### GetDamageTypeFromContext

获取伤害事件上下文中的伤害类型
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** ERestrictedDamageType 伤害类型

### GetDamageTagsFromContext

获取伤害事件上下文中的伤害Tags
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** FName[] 伤害Tags

### GetRecoverTagsFromContext

获取治疗事件上下文中的治疗Tags
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 治疗事件上下文 |

**Return:** FName[] 伤害Tags

### GetRecoveredActorFromContext

获取治疗上下文中的被治疗者
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 治疗事件上下文 |

**Return:** AActor 被治疗者

### GetDamagePositionTypeFromContext

获取伤害事件上下文中的伤害部位类型
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FGameMagnitudeContext | 伤害事件上下文 |

**Return:** EAvatarDamagePosition 伤害部位类型