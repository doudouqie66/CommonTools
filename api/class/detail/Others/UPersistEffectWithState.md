---
title: UPersistEffectWithState
language: cpp
---

# UPersistEffectWithState

实现了状态机的PersistEffect，是PersistEffectSkill的基类

> Inheritance: UPersistEffectBase -> IActivityStateInterface -> IClientConditionInerterface

## Functions

### GetCurrentStateName

获取当前状态的名字
	  生效范围: 服务器&客户端

**Return:** FName 

### GetCurrentStateTime

获取状态的运行时间
	  生效范围: 服务器&客户端

**Return:** float 

### JumpToState

获取跳转到指定状态
	  生效范围: 服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StateName | FName  | 跳转的目标状态名 |
| EnterTime | float  | 跳转到目标状态的时间 |
| bPause | bool | 是否暂停sequence播放 |

**Return:** void