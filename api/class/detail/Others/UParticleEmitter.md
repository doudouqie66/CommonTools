---
title: UParticleEmitter
language: cpp
---

# UParticleEmitter

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| EmitterName | FName | The name of the emitter. |
| SubUVDataOffset | int32 |  |
| EmitterRenderMode | TEnumAsByte < enum EEmitterRenderMode > | How to render the emitter particles. Can be one of the following: 	 		ERM_Normal |
| LODLevels | TArray < UParticleLODLevel * > |  |
| ConvertedModules | uint32 |  |
| PeakActiveParticles | int32 |  |
| InitialAllocationCount | int32 | Initial allocation count - overrides calculated peak count if > 0 |
| MediumDetailSpawnRateScale_DEPRECATED | float | Scales the spawn rate of this emitter when the engine is running in medium or lo |
| QualityLevelSpawnRateScale | float |  |
| GPUToCPUEmitterSpawnRateScale | float |  |
| DetailMode | TEnumAsByte < EDetailMode > | If detail mode is >= system detail mode, primitive won't be rendered. |
| bIsSoloing | uint32 | If true, then show only this emitter in the editor |
| bCookedOut | uint32 | If true, then this emitter was 'cooked out' by the cooker.  	 	This means it was |
| bDisabledLODsKeepEmitterAlive | uint32 | When true, if the current LOD is disabled the emitter will be kept alive. Otherw |
| bDisableWhenInsignficant | uint32 | When true, emitters deemed insignificant will have their tick and render disable |
| SignificanceLevel | EParticleSignificanceLevel | The significance level required of this emitter's owner for this emitter to be a |
| bSupportParticleDynamicInstance | uint32 | When true, if r.ParticleDynamicinstance = 1 and the particle emitter type suppor |