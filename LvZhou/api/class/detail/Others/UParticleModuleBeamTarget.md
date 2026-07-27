---
title: UParticleModuleBeamTarget
language: cpp
---

# UParticleModuleBeamTarget

> Inheritance: UParticleModuleBeamBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| TargetMethod | TEnumAsByte < enum Beam2SourceTargetMethod > | The method flag. |
| TargetName | FName | The target point sources of each beam, when using the end point method. |
| Target | FRawDistributionVector | Default target-point information to use if the beam method is endpoint. |
| bTargetAbsolute | uint32 | Whether to treat the as an absolute position in world space. |
| bLockTarget | uint32 | Whether to lock the Target to the life of the particle. |
| TargetTangentMethod | TEnumAsByte < enum Beam2SourceTargetTangentMethod > | The method to use for the Target tangent. |
| TargetTangent | FRawDistributionVector | The tangent for the Target point for each beam. |
| bLockTargetTangent | uint32 | Whether to lock the Target to the life of the particle. |
| TargetStrength | FRawDistributionFloat | The strength of the tangent from the Target point for each beam. |
| bLockTargetStength | uint32 | Whether to lock the Target to the life of the particle. |
| LockRadius | float | Default target-point information to use if the beam method is endpoint. |