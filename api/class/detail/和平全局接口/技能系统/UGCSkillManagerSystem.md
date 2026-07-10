---
title: UGCSkillManagerSystem
language: lua
---

# UGCSkillManagerSystem

【废弃】技能管理系统接口库

## Functions

### GetSkillManagerComponent

【废弃】请使用 UGCPersistEffectSystem
获取技能组件
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |

**Return:** SkillManagerComponent 技能组件

### UseSkill

【废弃】请使用 UGCPersistEffectSystem
使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillName | string | 技能短名 |

### StopSkill

【废弃】请使用 UGCPersistEffectSystem
停止技能
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillName | string | 技能短名 |

### TriggerSkillEvent

【废弃】请使用 UGCPersistEffectSystem
使用技能（自定义触发事件类型）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillName | string | 技能短名 |
| EventType | UTSkillEventType | 事件类型 |

### UseSkillByPath

【废弃】请使用 UGCPersistEffectSystem
根据技能路径使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |

### StopSkillByPath

【废弃】请使用 UGCPersistEffectSystem
根据技能路径停止技能
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |

### TriggerSkillEventByPath

【废弃】请使用 UGCPersistEffectSystem
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |
| EventType | UTSkillEventType | 事件类型 |

### StopAllSkill

【废弃】请使用 UGCPersistEffectSystem
停止所有技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |

### AddSkill

【废弃】请使用 UGCPersistEffectSystem
添加技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillClassPath | string | 技能完整路径 |

### RemoveSkill

【废弃】请使用 UGCPersistEffectSystem
移除技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillClassPath | string | 技能完整路径 |

### IsSkillRunning

【废弃】请使用 UGCPersistEffectSystem
当前是否有技能在执行
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |

**Return:** boolean 是否有技能在执行

### GetSkillCD

【废弃】请使用 UGCPersistEffectSystem
获取技能冷却
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |

**Return:** number 技能冷却时间

### SetSkillActive

【废弃】请使用 UGCPersistEffectSystem
激活技能
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |
| NewActive | boolean | 技能状态 |

### TriggerStringEvent

【废弃】请使用 UGCPersistEffectSystem
向技能抛出一个字符串类型的事件
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |
| EventString | string | 字符串事件 |

### TriggerUAEEvent

【废弃】请使用 UGCPersistEffectSystem
向技能抛出一个预定义的事件
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | Actor 对象 |
| SkillPath | string | 技能完整路径 |
| EventType | UAESkillEvent | 预定义事件 |