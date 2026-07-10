---
title: UNavMovementComponent
language: cpp
---

# UNavMovementComponent

NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.

> Inheritance: UMovementComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| NavAgentProps | FNavAgentProperties | Properties that define how the component can move. |
| FixedPathBrakingDistance | float | Braking distance override used with acceleration driven path following (bUseAcce |
| bUpdateNavAgentWithOwnersCollision | uint32 | If set to true NavAgentProps' radius and height will be updated with Owner's col |
| bUseAccelerationForPaths | uint32 | If set, pathfollowing will control character movement via acceleration values. I |
| bUseFixedBrakingDistanceForPaths | uint32 | If set, FixedPathBrakingDistance will be used for path following deceleration |
| MovementState | FMovementProperties | Expresses runtime state of character's movement. Put all temporal changes to mov |

## Functions

### StopActiveMovement

Stops applying further movement (usually zeros acceleration).

**Return:** void 

### StopMovementKeepPathing

Stops movement immediately (reset velocity) but keeps following current path

**Return:** void 

### IsCrouching

**Return:** bool true if currently crouching

### IsFalling

**Return:** bool true if currently falling (not flying, in a non-fluid volume, and not on the ground)

### IsMovingOnGround

**Return:** bool true if currently moving on the ground (e.g. walking or driving)

### IsSwimming

**Return:** bool true if currently swimming (moving through a fluid volume)

### IsFlying

**Return:** bool true if currently flying (moving through a non-fluid volume without resting on the ground)