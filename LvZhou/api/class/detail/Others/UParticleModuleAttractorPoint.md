---
title: UParticleModuleAttractorPoint
language: cpp
---

# UParticleModuleAttractorPoint

> Inheritance: UParticleModuleAttractorBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Position | FRawDistributionVector | The position of the point attractor from the source of the emitter. |
| Range | FRawDistributionFloat | The radial range of the attractor. |
| Strength | FRawDistributionFloat | The strength of the point attractor. |
| StrengthByDistance | uint32 | The strength curve is a function of distance or of time. |
| bAffectBaseVelocity | uint32 | If true, the velocity adjustment will be applied to the base velocity. |
| bOverrideVelocity | uint32 | If true, set the velocity. |
| bUseWorldSpacePosition | uint32 | If true, treat the position as world space.  So don't transform the the point to |
| Positive_X | uint32 | Whether particles can move along the positive X axis. |
| Positive_Y | uint32 | Whether particles can move along the positive Y axis. |
| Positive_Z | uint32 | Whether particles can move along the positive Z axis. |
| Negative_X | uint32 | Whether particles can move along the negative X axis. |
| Negative_Y | uint32 | Whether particles can move along the negative Y axis. |
| Negative_Z | uint32 | Whether particles can move along the negative Z axis. |