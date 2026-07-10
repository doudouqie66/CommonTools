---
title: APhysicsVolume
language: cpp
---

# APhysicsVolume

PhysicsVolume: A bounding volume which affects actor physics.
  Each AActor is affected at any time by one PhysicsVolume.

> Inheritance: AVolume

## Variables

| Name | Type | Description |
|------|------|-------------|
| TerminalVelocity | float | Terminal velocity of pawns using CharacterMovement when falling. |
| Priority | int32 | Determines which PhysicsVolume takes precedence if they overlap (higher number = |
| FluidFriction | float | This property controls the amount of friction applied by the volume as pawns usi |
| bWaterVolume | uint32 | True if this volume contains a fluid like water |
| bPhysicsOnContact | uint32 | By default, the origin of an AActor must be inside a PhysicsVolume for it to aff |