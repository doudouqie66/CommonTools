---
title: UParticleModuleLocationPrimitiveCylinder
language: cpp
---

# UParticleModuleLocationPrimitiveCylinder

> Inheritance: UParticleModuleLocationPrimitiveBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| RadialVelocity | uint32 | If true, get the particle velocity form the radial distance inside the primitive |
| StartRadius | FRawDistributionFloat | The radius of the cylinder. |
| StartHeight | FRawDistributionFloat | The height of the cylinder, centered about the location. |
| HeightAxis | TEnumAsByte < enum CylinderHeightAxis > | Determine particle particle system axis that should represent the height of the  |