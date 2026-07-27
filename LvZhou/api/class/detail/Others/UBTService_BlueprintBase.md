---
title: UBTService_BlueprintBase
language: cpp
---

# UBTService_BlueprintBase

Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes!
 
   When service receives Deactivation event, all latent actions associated this instance are being removed.
   This prevents from resuming activity started by Activation, but does not handle external events.
   Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.

> Inheritance: UBTService

## Variables

| Name | Type | Description |
|------|------|-------------|
| AIOwner | AAIController * | Cached AIController owner of BehaviorTreeComponent. |
| ActorOwner | AActor * | Cached actor owner of BehaviorTreeComponent. |
| bShowPropertyDetails | uint32 | show detailed information about properties |
| bShowEventDetails | uint32 | show detailed information about implemented events |

## Functions

### ReceiveTick

tick function

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveSearchStart

task search enters branch of tree

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveActivation

service became active

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveDeactivation

service became inactive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveTickAI

Alternative AI version of ReceiveTick function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveSearchStartAI

Alternative AI version of ReceiveSearchStart function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveActivationAI

Alternative AI version of ReceiveActivation function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveDeactivationAI

Alternative AI version of ReceiveDeactivation function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### IsServiceActive

check if service is currently being active

**Return:** bool