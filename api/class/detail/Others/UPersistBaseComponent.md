---
title: UPersistBaseComponent
language: cpp
---

# UPersistBaseComponent

技能Buff组件

> Inheritance: UGameplayTasksComponent -> IObjectPoolInterface

## Functions

### RegisterPersistEffectWithSlot

生效范围：服务器
	  将PersistEffect注册到目标槽位中

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Slot | FGameplayTag  | 槽位 |
| InPE | UPersistEffectBase *  | 注册到槽位的PersistEffect |
| bShouldUnapply | bool | 是否将原来槽位上的PersistEffect进行Unapply |

**Return:** bool  注册是否成功

### UnRegisterPersistEffectWithSlot

生效范围：服务器
	  将目标槽位中的PersistEffect解除注册

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Slot | FGameplayTag  | 槽位 |
| bShouldUnapply | bool |  |

**Return:** bool  解除注册是否成功

### GetPersistEffectBySlot

生效范围：服务器&客户端
	  获取目标槽位中的PersistEffect

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Slot | FGameplayTag | 槽位 |

**Return:** UPersistEffectBase *  槽位上的PersistEffect