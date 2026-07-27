---
title: UBTAttachment_LuaBase
language: cpp
---

# UBTAttachment_LuaBase

Base class for lua based Attachment nodes. Do NOT use it for creating native c++ classes!
 
   When Attachment receives Deactivation event, all latent actions associated this instance are being removed.
   This prevents from resuming activity started by Activation, but does not handle external events.
   Please use them safely (unregister at abort) and call IsAttachmentActive() when in doubt.

> Inheritance: UBTService

## Variables

| Name | Type | Description |
|------|------|-------------|
| AIOwner | AAIController * | Cached AIController owner of BehaviorTreeComponent. |

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

### ReceiveSearchStartAI

task search enters branch of tree

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveActivationAI

attachment became active

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### ReceiveDeactivationAI

attachment became inactive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OwnerController | AAIController *  |  |
| ControlledPawn | APawn * |  |

**Return:** void  

### IsAttachmentActive

check if attachment is currently being active

**Return:** bool