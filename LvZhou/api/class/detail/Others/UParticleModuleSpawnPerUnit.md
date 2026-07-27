---
title: UParticleModuleSpawnPerUnit
language: cpp
---

# UParticleModuleSpawnPerUnit

> Inheritance: UParticleModuleSpawnBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| UnitScalar | float | The scalar to apply to the distance traveled. 	 	The value from SpawnPerUnit is  |
| SpawnPerUnit | FRawDistributionFloat | The amount to spawn per meter distribution. 	 	The value is retrieved using the  |
| bIgnoreSpawnRateWhenMoving | uint32 | If true, process the default spawn rate when not moving... 	 	When not moving, s |
| MovementTolerance | float | The tolerance for moving vs. not moving w.r.t. the bIgnoreSpawnRateWhenMoving fl |
| MaxFrameDistance | float | The maximum valid movement for a single frame. 	 	If 0.0, then the check is not  |
| bIgnoreMovementAlongX | uint32 | If true, ignore the X-component of the movement |
| bIgnoreMovementAlongY | uint32 | If true, ignore the Y-component of the movement |
| bIgnoreMovementAlongZ | uint32 | If true, ignore the Z-component of the movement |