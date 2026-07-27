---
title: UBTTask_BlueprintBase
language: cpp
---

# UBTTask_BlueprintBase

Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes!
 
   When task receives Abort event, all latent actions associated this instance are being removed.
   This prevents from resuming activity started by Execute, but does not handle external events.
   Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

> Inheritance: UBTTaskNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| AIOwner | AAIController * | Cached AIController owner of BehaviorTreeComponent. |
| ActorOwner | AActor * | Cached actor owner of BehaviorTreeComponent. |
| bShowPropertyDetails | uint32 | show detailed information about properties |

## Functions

### ReceiveExecute

entry point, task will stay active until FinishExecute is called.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveAbort

if blueprint graph contains this event, task will stay active until FinishAbort is called

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor * |  |

**Return:** void  

### ReceiveTick

tick function

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerActor | AActor *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### ReceiveExecuteAI

Alternative AI version of ReceiveExecute

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveAbortAI

Alternative AI version of ReceiveAbort

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveTickAI

Alternative AI version of tick function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn *  |  |
| DeltaSeconds | float |  |

**Return:** void  

### FinishExecute

finishes task execution with Success or Fail result

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bSuccess | bool |  |

**Return:** void  

### FinishAbort

aborts task execution

**Return:** void 

### SetFinishOnMessage

task execution will be finished (with result 'Success') after receiving specified message

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MessageName | FName |  |

**Return:** void  

### SetFinishOnMessageWithId

task execution will be finished (with result 'Success') after receiving specified message with indicated ID

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MessageName | FName  |  |
| RequestID | int32 |  |

**Return:** void  

### IsTaskExecuting

check if task is currently being executed

**Return:** bool 

### IsTaskAborting

check if task is currently being aborted

**Return:** bool