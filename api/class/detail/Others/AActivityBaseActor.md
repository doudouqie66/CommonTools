---
title: AActivityBaseActor
language: cpp
---

# AActivityBaseActor

可实现可交互物基础功能的Actor

> Inheritance: AUAERegionActor -> IOwnBlackboardInterface -> IPlayerLogicInterface -> IRelativeMoveMgrInterface -> IDamageableInterface -> IActivityStateInterface -> IGameplayTaskOwnerInterface -> INetContainerterface -> IClientConditionInerterface -> IObjectPoolInterface -> IInteractorInterface -> IUnifiedInteractionInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| OnActivityActorChangeState | FActivityChangeState | 状态变化事件委托 	 @param LeaveState 离开的状态 名 	 @param EnterState 进入的状态名 |

## Functions

### GetCurrentStateName

生效范围：SC
	  获取当前状态名

**Return:** FName 当前状态名

### GetCurrentStateTime

生效范围：SC
	  获取进入当前状态后所经过的时间

**Return:** float 当前状态经过的时间

### JumpToState

生效范围：S
	  跳转到指定状态

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StateName | FName  | 要跳转的状态名 |
| EnterTime | float  | 进入状态的时间 |
| bPause | bool | 是否暂停 |

**Return:** void  

### Pause

生效范围：S
	  暂停当前状态的sequence的播放

**Return:** void 

### Resume

生效范围：S
	  恢复当前状态的sequence的播放

**Return:** void 

### CheckCurrentStateIsEntry

生效范围：SC
	  检查当前状态是否为状态机的入口状态

**Return:** bool 是否为入口状态

### GetCurrentSequnceIsEnd

生效范围：SC
	  检查当前sequence是否播放完毕

**Return:** bool 是否播放完毕