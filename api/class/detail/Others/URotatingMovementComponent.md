---
title: URotatingMovementComponent
language: cpp
---

# URotatingMovementComponent

Performs continuous rotation of a component at a specific rotation rate.
  Rotation can optionally be offset around a pivot point.
  Collision testing is not performed during movement.

> Inheritance: UMovementComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| RotationRate | FRotator | How fast to update rollpitchyaw of the component we update. |
| PivotTranslation | FVector | Translation of pivot point around which we rotate, relative to current rotation. |
| bRotationInLocalSpace | uint32 | Whether rotation is applied in local or world space. |
| bCirculatingRotation | bool |  |
| RotationAngle | FRotator |  |
| OriginRotator | FRotator |  |
| bCircleFlag | bool |  |