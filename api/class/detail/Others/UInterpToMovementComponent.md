---
title: UInterpToMovementComponent
language: cpp
---

# UInterpToMovementComponent

Move the root component between a series of points over a given time  
 
  @see UMovementComponent

> Inheritance: UMovementComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Duration | float | How long to take to move from the first point to the last (or vice versa) |
| bPauseOnImpact | uint32 | If true, will pause movement on impact. If false it will behave as if the end of |
| BehaviourType | EInterpToBehaviourType | Movement behaviour of the component |
| bForceSubStepping | uint32 | If true, forces sub-stepping to break up movement into discrete smaller steps to |
| MaxSimulationTimeStep | float | Max time delta for each discrete simulation step. 	  Lowering this value can add |
| MaxSimulationIterations | int32 | Max number of iterations used for each discrete simulation step. 	  Increasing t |
| ControlPoints | TArray < FInterpControlPoint > | List of control points to visit. |

## Functions

### StopSimulating

Clears the reference to UpdatedComponent, fires stop event, and stops ticking.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HitResult | FHitResult & |  |

**Return:** void  

### RestartMovement

Reset to start. Sets time to zero and direction to 1.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InitialDirection | float |  |

**Return:** void  

### FinaliseControlPoints

Initialise the control points array. Call after adding control points if they are add after begin play .

**Return:** void