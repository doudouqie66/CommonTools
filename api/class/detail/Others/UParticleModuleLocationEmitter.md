---
title: UParticleModuleLocationEmitter
language: cpp
---

# UParticleModuleLocationEmitter

> Inheritance: UParticleModuleLocationBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| EmitterName | FName | The name of the emitter to use that the source location for particle. |
| SelectionMethod | TEnumAsByte < enum ELocationEmitterSelectionMethod > | The method to use when selecting a spawn target particle from the emitter. 	 	Ca |
| InheritSourceVelocity | uint32 | If true, the spawned particle should inherit the velocity of the source particle |
| InheritSourceVelocityScale | float | Amount to scale the source velocity by when inheriting it. |
| bInheritSourceRotation | uint32 | If true, the spawned particle should inherit the rotation of the source particle |
| InheritSourceRotationScale | float | Amount to scale the source rotation by when inheriting it. |
| bApplySourceOrbitOffset | uint32 | If true, the spawned particle should uses the location with the orbit offset of  |