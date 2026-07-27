---
title: UPawnActionsComponent
language: cpp
---

# UPawnActionsComponent

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ControlledPawn | APawn * |  |
| ActionStacks | TArray < FPawnActionStack > |  |
| ActionEvents | TArray < FPawnActionEvent > |  |
| CurrentAction | UPawnAction * |  |

## Functions

### K2_PerformAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Pawn | APawn *  |  |
| Action | UPawnAction *  |  |
| Priority | TEnumAsByte < EAIRequestPriority :: Type > |  |

**Return:** bool  

### K2_PushAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAction | UPawnAction *  |  |
| Priority | EAIRequestPriority :: Type  |  |
| Instigator | UObject * |  |

**Return:** bool  

### K2_AbortAction

Aborts given action instance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionToAbort | UPawnAction * |  |

**Return:** EPawnActionAbortState :: Type  

### K2_ForceAbortAction

Aborts given action instance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionToAbort | UPawnAction * |  |

**Return:** EPawnActionAbortState :: Type