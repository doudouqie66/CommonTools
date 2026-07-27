---
title: UParticleModuleOrbit
language: cpp
---

# UParticleModuleOrbit

> Inheritance: UParticleModuleOrbitBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| ChainMode | TEnumAsByte < enum EOrbitChainMode > | Orbit modules will chain together in the order they appear in the module stack.  |
| OffsetAmount | FRawDistributionVector | The amount to offset the sprite from the particle position. |
| OffsetOptions | FOrbitOptions | The options associated with the OffsetAmount look-up. |
| RotationAmount | FRawDistributionVector | The amount (in 'turns') to rotate the offset about the particle position. 	 		0. |
| RotationOptions | FOrbitOptions | The options associated with the RotationAmount look-up. |
| RotationRateAmount | FRawDistributionVector | The rate (in 'turns') at which to rotate the offset about the particle positon.  |
| RotationRateOptions | FOrbitOptions | The options associated with the RotationRateAmount look-up. |