---
title: UBTDecorator_BlueprintBase
language: cpp
---

# UBTDecorator_BlueprintBase

Base class for blueprint based decorator nodes. Do NOT use it for creating native c++ classes!
 
   Unlike task and services, decorator have two execution chains: 
    ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated
   which makes automatic latent action cleanup impossible. Keep in mind, that
   you HAVE TO verify is given chain is still active after resuming from any
   latent action (like Delay, Timelines, etc).
 
   Helper functions:
   - IsDecoratorExecutionActive (true after ExecutionStart, until ExecutionFinish)
   - IsDecoratorObserverActive (true after ObserverActivated, until ObserverDeactivated)

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| AIOwner | AAIController * | Cached AIController owner of BehaviorTreeComponent. |
| ActorOwner | AActor * | Cached AIController owner of BehaviorTreeComponent. |
| ObservedKeyNames | TArray < FName > | blackboard key names that should be observed |
| bShowPropertyDetails | uint32 | show detailed information about properties |
| bCheckConditionOnlyBlackBoardChanges | uint32 | Applies only if Decorator has any FBlackboardKeySelector property and if decorat |
| bIsObservingBB | uint32 | gets set to true if decorator declared BB keys it can potentially observe |

## Functions

### ReceiveTick

tick function

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveExecutionStart

called on execution of underlying node 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveExecutionFinish

called when execution of underlying node is finished 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor *  |  |
| NodeResult | EBTNodeResult :: Type |  |

**Return:** void  

### ReceiveObserverActivated

called when observer is activated (flow controller) 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveObserverDeactivated

called when observer is deactivated (flow controller) 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### PerformConditionCheck

called when testing if underlying node can be executed, must call FinishConditionCheck

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** bool  

### ReceiveTickAI

Alternative AI version of ReceiveTick

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveExecutionStartAI

Alternative AI version of ReceiveExecutionStart

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveExecutionFinishAI

Alternative AI version of ReceiveExecutionFinish

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| NodeResult | EBTNodeResult :: Type |  |

**Return:** void  

### ReceiveObserverActivatedAI

Alternative AI version of ReceiveObserverActivated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveObserverDeactivatedAI

Alternative AI version of ReceiveObserverDeactivated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### PerformConditionCheckAI

Alternative AI version of ReceiveConditionCheck

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** bool  

### IsDecoratorExecutionActive

check if decorator is part of currently active branch

**Return:** bool 

### IsDecoratorObserverActive

check if decorator's observer is currently active

**Return:** bool