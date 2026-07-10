---
title: UParticleModuleAttractorParticle
language: cpp
---

# UParticleModuleAttractorParticle

> Inheritance: UParticleModuleAttractorBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| EmitterName | FName | The source emitter for attractors |
| Range | FRawDistributionFloat | The radial range of the attraction around the source particle. 	 	Particle-life  |
| bStrengthByDistance | uint32 | The strength curve is a function of distance or of time. |
| Strength | FRawDistributionFloat | The strength of the attraction (negative values repel). 	 	Particle-life relativ |
| bAffectBaseVelocity | uint32 | If true, the velocity adjustment will be applied to the base velocity. |
| SelectionMethod | TEnumAsByte < enum EAttractorParticleSelectionMethod > | The method to use when selecting an attractor target particle from the emitter.  |
| bRenewSource | uint32 | Whether the particle should grab a new particle if it's source expires. |
| bInheritSourceVel | uint32 | Whether the particle should inherit the source veloctiy if it expires. |
| LastSelIndex | int32 |  |