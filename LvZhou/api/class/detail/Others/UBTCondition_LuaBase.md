---
title: UBTCondition_LuaBase
language: cpp
---

# UBTCondition_LuaBase

Base class for lua based condition nodes. Do NOT use it for creating native c++ classes!
 
   Unlike task and attachments, condition have two execution chains:
    ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated
   which makes automatic latent action cleanup impossible. Keep in mind, that
   you HAVE TO verify is given chain is still active after resuming from any
   latent action (like Delay, Timelines, etc).
 
   Helper functions:
   - IsConditionExecutionActive (true after ExecutionStart, until ExecutionFinish)
   - IsConditionObserverActive (true after ObserverActivated, until ObserverDeactivated)

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| AIOwner | AAIController * | Cached AIController owner of BehaviorTreeComponent. |
| ObservedKeyNames | TArray < FName > | blackboard key names that should be observed |
| bCheckConditionOnlyBlackBoardChanges | uint32 | Applies only if Condition has any FBlackboardKeySelector property and if conditi |
| bIsObservingBB | uint32 | gets set to true if condition declared BB keys it can potentially observe |

## Functions

### ReceiveTickAI

tick function

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveExecutionStartAI

called on execution of underlying node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveExecutionFinishAI

called when execution of underlying node is finished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| NodeResult | EBTNodeResult :: Type |  |

**Return:** void  

### ReceiveObserverActivatedAI

called when observer is activated (flow controller)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveObserverDeactivatedAI

called when observer is deactivated (flow controller)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### PerformConditionCheckAI

called when testing if underlying node can be executed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** bool  

### IsConditionExecutionActive

check if condition is part of currently active branch

**Return:** bool 

### IsConditionObserverActive

check if condition's observer is currently active

**Return:** bool