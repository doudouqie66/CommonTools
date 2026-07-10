---
title: UParticleModuleTrailSource
language: cpp
---

# UParticleModuleTrailSource

> Inheritance: UParticleModuleTrailBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceMethod | TEnumAsByte < enum ETrail2SourceMethod > | The source method for the trail. |
| SourceName | FName | The name of the source - either the emitter or Actor. |
| SourceStrength | FRawDistributionFloat | The strength of the tangent from the source point for each Trail. |
| bLockSourceStength | uint32 | Whether to lock the source to the life of the particle. |
| SourceOffsetCount | int32 | SourceOffsetCount 	 	The number of source offsets that can be expected to be fou |
| SourceOffsetDefaults | TArray < FVector > | Default offsets from the source(s).  	 	If there are < SourceOffsetCount slots,  |
| SelectionMethod | TEnumAsByte < enum EParticleSourceSelectionMethod > | Particle selection method, when using the SourceMethod of Particle. |
| bInheritRotation | uint32 | Interhit particle rotation - only valid for SourceMethod of PET2SRCM_Particle. |