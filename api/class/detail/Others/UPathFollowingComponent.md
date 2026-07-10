---
title: UPathFollowingComponent
language: cpp
---

# UPathFollowingComponent

> Inheritance: UActorComponent -> IAIResourceInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| MovementComp | UNavMovementComponent * | associated movement component |
| MyNavData | ANavigationData * | navigation data for agent described in movement component |

## Functions

### OnActorBump

called when moving agent collides with another actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SelfActor | AActor *  |  |
| OtherActor | AActor *  |  |
| NormalImpulse | FVector  |  |
| Hit | FHitResult & |  |

**Return:** void  

### GetPathActionType

**Return:** EPathFollowingAction :: Type 

### GetPathDestination

**Return:** FVector 

### OnNavDataRegistered

called when NavigationSystem registers new navigation data type while this component
	 	instance has empty MyNavData. This is usually the case for AI agents hand-placed
	 	on levels.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NavData | ANavigationData * |  |

**Return:** void