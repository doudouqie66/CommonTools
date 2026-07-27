---
title: UParticleModuleCollisionGPU
language: cpp
---

# UParticleModuleCollisionGPU

> Inheritance: UParticleModuleCollisionBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Resilience | FRawDistributionFloat | Dampens the velocity of a particle in the direction normal to the 	  collision p |
| ResilienceScaleOverLife | FRawDistributionFloat | Modulates the resilience of the particle over its lifetime. |
| Friction | float | Friction applied to all particles during a collision or while moving 	  along a  |
| RandomSpread | float | Controls how wide the bouncing particles are distributed (0 = disabled). |
| RandomDistribution | float | Controls bouncing particles distribution (1 = uniform distribution; 2 = squared  |
| RadiusScale | float | Scale applied to the size of the particle to obtain the collision radius. |
| RadiusBias | float | Bias applied to the collision radius. |
| Response | TEnumAsByte < EParticleCollisionResponse :: Type > | How particles respond to a collision event. |
| CollisionMode | TEnumAsByte < EParticleCollisionMode :: Type > |  |