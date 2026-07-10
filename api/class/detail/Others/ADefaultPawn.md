---
title: ADefaultPawn
language: cpp
---

# ADefaultPawn

DefaultPawn implements a simple Pawn with spherical collision and built-in flying movement.
  @see UFloatingPawnMovement

> Inheritance: APawn

## Variables

| Name | Type | Description |
|------|------|-------------|
| BaseTurnRate | float | Base turn rate, in degsec. Other scaling may affect final turn rate. |
| BaseLookUpRate | float | Base lookup rate, in degsec. Other scaling may affect final lookup rate. |
| MovementComponent | UPawnMovementComponent * | DefaultPawn movement component |
| CollisionComponent | USphereComponent * | DefaultPawn collision component |
| MeshComponent | UStaticMeshComponent * | The mesh associated with this Pawn. |
| bAddDefaultMovementBindings | uint32 | If true, adds default input bindings for movement and camera look. |

## Functions

### MoveForward

Input callback to move forward in local space (or backward if Val is negative).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Val | float | Amount of movement in the forward direction (or backward if negative). |

**Return:** void  

### MoveRight

Input callback to strafe right in local space (or left if Val is negative).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Val | float | Amount of movement in the right direction (or left if negative). |

**Return:** void  

### MoveUp_World

Input callback to move up in world space (or down if Val is negative).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Val | float | Amount of movement in the world up direction (or down if negative). |

**Return:** void  

### TurnAtRate

Called via input to turn at a given rate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float | This is a normalized rate, i.e. 1.0 means 100% of desired turn rate |

**Return:** void  

### LookUpAtRate

Called via input to look up at a given rate (or down if Rate is negative).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float | This is a normalized rate, i.e. 1.0 means 100% of desired turn rate |

**Return:** void