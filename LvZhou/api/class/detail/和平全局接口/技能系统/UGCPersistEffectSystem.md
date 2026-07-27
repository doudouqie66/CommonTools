---
title: UGCPersistEffectSystem
language: lua
---

# UGCPersistEffectSystem

新技能和Buff系统接口库

## Functions

### AddSkillByClass

给指定拥有新技能组件的目标 Actor 添加技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标Actor |
| SkillClass | UClass|string | 技能蓝图类或蓝图路径 |
| OverrideApplyTime | number | 技能生效时长(可选，默认为技能类中配置的时长) |
| Slot | UGCGameplayTag|string|FGameplayTag | 由Tag标识的技能槽位 |

**Return:** UPersistEffectSkill 技能对象

### RemoveSkillInstance

给指定拥有新技能组件的目标 Actor 移除技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| SkillInstance | UPersistEffectSkill | 技能对象 |

**Return:** boolean 是否移除成功

### GetSkillsByClass

从指定拥有新技能组件的目标 Actor 获取指定类型的技能
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标Actor |
| SkillClass | UClass|string | 技能蓝图类或蓝图路径,为空时获取所有技能 |

**Return:** UPersistEffectSkill[] 技能列表

### GetSkillsByTag

从指定拥有新技能组件的目标 Actor 获取拥有指定 Tag 的技能
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标Actor |
| Tag | UGCGameplayTag|string|FGameplayTag | 需要获取的技能所包含的 Tag,为空时获取所有技能 |

**Return:** UPersistEffectSkill[] 技能列表

### AddBuffByClass

给指定拥有新技能组件的目标 Actor 添加 Buff
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| BuffClass | UClass|string | Buff 蓝图类或蓝图路径 |
| Causer | AActor | Buff释放者（可选，默认为空） |
| OverrideDuration | number | 技能生效时长（可选，默认为-1代表Buff类中配置的时长） |
| StackNum | number | Buff的堆叠层数（可选，默认为 1 层） |

**Return:** UPersistEffectBuff Buff对象

### RemoveBuffByClass

给指定拥有新技能组件的目标 Actor 移除 Buff
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| BuffClass | UClass|string | Buff 蓝图类或蓝图路径 |
| RemoveNum | number | Buff减少堆叠数量（可选，默认-1移除全部层） |
| Causer | AActor | 筛选特定的释放者（可选，默认不筛选） |

**Return:** boolean 是否移除成功

### RemoveBuffByTag

给指定拥有新技能组件的目标 Actor 移除包含某个 Tag 的 Buff
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| Tag | UGCGameplayTag|string|FGameplayTag | 需要移除的 Buff 所包含的 Tag |
| RemoveNum | number | Buff 减少堆叠数量（可选，默认移除全部层） |
| Causer | AActor | 筛选特定的释放者(可选，默认不筛选) |

**Return:** boolean 是否移除成功

### GetBuffsByClass

从指定拥有新技能组件的目标 Actor 获取指定类型的Buff
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标Actor |
| BuffClass | UClass|string | Buff蓝图类或蓝图路径,为空时获取所有Buff |

**Return:** UPersistEffectBuff[] Buff列表

### GetBuffsByTag

从指定拥有新技能组件的目标 Actor 获取拥有指定Tag的Buff
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标Actor |
| Tag | UGCGameplayTag|string|FGameplayTag | 需要获取的 Buff 所包含的 Tag,为空时获取所有Buff |

**Return:** UPersistEffectBuff[] Buff列表

### HasDynamicState

检查指定拥有新技能组件的目标 Actor 是否包含某个 Tag 标识的状态
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要检查的 Tag 标识的状态 |

**Return:** boolean 是否拥有 Tag 标识的状态

### AllowDynamicState

检查指定拥有新技能组件的目标 Actor 是否允许进入某个 Tag 标识的状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要检查的 Tag 标识的状态 |

**Return:** boolean 是否允许进入 Tag 标识的状态

### EnterDynamicState

尝试让拥有新技能组件的目标 Actor 获取指定 Tag 标识的状态，多次获取同一个 Tag 会叠加计数
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要添加的 Tag 标识的状态 |

**Return:** boolean 是否成功

### LeaveDynamicState

尝试从拥有新技能组件的目标 Actor 移除指定 Tag 标识的状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要移除的 Tag 标识的状态 |

**Return:** boolean 是否有剩余的 Tag。若移除 Tag 的一次计数后还有剩余则返回 False，若全部没有剩余则返回 True

### InterruptDynamicState

将拥有新技能组件的目标 Actor 的 Tag 标识的状态移除并触发打断事件
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要打断的 Tag 标识的状态 |

**Return:** boolean 是否成功打断

### SetDynamicStateDisabled

设置由 Tag 标识的状态的是否禁用，Actor 中 Tag 的禁用计数大于 0 时禁用生效
 - bNewDisabled == True：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态进行打断，并为这一组 Tag 的禁用计数 +1
 - bNewDisabled == false：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态禁用计数 -1
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要增加或减少禁用的 Tag 标识的状态 |
| bNewDisabled | boolean | 是否禁用 |
| bInterrupt | boolean | 是否打断，默认为 true |

### ResetDynamicStateDisabled

重置被禁用的由 Tag 标识的状态，重置后目标 Actor 将允许进入这个 Tag 标识的状态
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |
| DynamicStateTag | UGCGameplayTag|string|FGameplayTag | 需要增加或减少禁用的 Tag 标识的状态 |

### GetPersistBaseComponentByContent

从拥有新技能组件的目标 Actor 上获取 PersistBaseComponent 组件
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetActor | AActor | 拥有新技能组件的目标 Actor |

**Return:** @UPersistBaseComponent 组件

### AddOcclusionHighlight

添加透视效果
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetCharacter | ACharacter | 被透视的角色或怪 |
| Causer | AActor | 透视的发起方 |
| Type | EPEBuffOcclusionHighlightType | 透视类型(仅Causer透视/Causer及其队友透视/所有人) |
| Color | FLinearColor | 透视颜色 |

**Return:** number 透视ID，用于移除透视效果,<=0为无效值

### RemoveOcclusionHighlight

移除透视效果
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject | 世界上下文对象 |
| OcclusionID | number | 透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值 |

### AddFresnelEffect

添加菲涅尔效果
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetCharacter | ACharacter | 被透视的角色或怪 |
| Color | FLinearColor | 颜色 |
| Duration | number | 时长 |

### PickTargets

选取参数指定范围内的目标
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor | 发起选目标的角色 |
| StartTransform | FTransform | Picker开始位置 |
| TargetPickerParams | FTargetPickerParams | Picker参数 |
| IgnoreActors | AActor[] | 忽略的Actors |

**Return:** AActor[] 选中的目标