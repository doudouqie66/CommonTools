---
title: UGameplayTask
language: cpp
---

# UGameplayTask

> Inheritance: UObject -> IGameplayTaskOwnerInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| InstanceName | FName | This name allows us to find the task later so that we can end it. |
| ResourceOverlapPolicy | ETaskResourceOverlapPolicy |  |
| ChildTask | UGameplayTask * | child task instance |

## Functions

### ReadyForActivation

Called to trigger the actual task once the delegates have been set up

**Return:** void 

### EndTask

Called explicitly to end the task (usually by the task itself). Calls OnDestroy. 

**Return:** void