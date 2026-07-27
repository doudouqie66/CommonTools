---
title: UFloatingPawnMovement
language: cpp
---

# UFloatingPawnMovement

FloatingPawnMovement is a movement component that provides simple movement for any Pawn class.
  Limits on speed and acceleration are provided, while gravity is not implemented.
 
  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
  During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

> Inheritance: UPawnMovementComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxSpeed | float | Maximum velocity magnitude allowed for the controlled Pawn. |
| Acceleration | float | Acceleration applied by input (rate of change of velocity) |
| Deceleration | float | Deceleration applied when there is no input (rate of change of velocity) |
| TurningBoost | float | Setting affecting extra force applied when changing direction, making turns have |
| FloatingMoveSpeedScale | float | Engine Modify Start 	  	 Maximum velocity magnitude allowed for the controlled P |
| bPositionCorrected | uint32 | Set to true when a position correction is applied. Used to avoid recalculating v |