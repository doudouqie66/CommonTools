---
title: UParticleModuleLocationPrimitiveBase
language: cpp
---

# UParticleModuleLocationPrimitiveBase

> Inheritance: UParticleModuleLocationBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Positive_X | uint32 | Whether the positive X axis is valid for spawning. |
| Positive_Y | uint32 | Whether the positive Y axis is valid for spawning. |
| Positive_Z | uint32 | Whether the positive Z axis is valid for spawning. |
| Negative_X | uint32 | Whether the negative X axis is valid for spawning. |
| Negative_Y | uint32 | Whether the negative Y axis is valid for spawning. |
| Negative_Z | uint32 | Whether the negative Zaxis is valid for spawning. |
| SurfaceOnly | uint32 | Whether particles will only spawn on the surface of the primitive. |
| Velocity | uint32 | Whether the particle should get its velocity from the position within the primit |
| VelocityScale | FRawDistributionFloat | The scale applied to the velocity. (Only used if 'Velocity' is checked). |
| StartLocation | FRawDistributionVector | The location of the bounding primitive relative to the position of the emitter. |