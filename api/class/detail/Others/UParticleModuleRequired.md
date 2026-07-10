---
title: UParticleModuleRequired
language: cpp
---

# UParticleModuleRequired

> Inheritance: UParticleModule

## Variables

| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface * | The material to utilize for the emitter at this LOD level. |
| EmitterOrigin | FVector |  |
| EmitterRotation | FRotator |  |
| EmitterOrbitOrigin | FVector |  |
| EmitterRotateAxis | EEmitterRotationMode |  |
| EmitterOrbitRadius | float |  |
| EmitterOrbitSpeed | float |  |
| EmitterInitialDegree | float |  |
| EmitterInitialRotation | float |  |
| EmitterSelfRotateAxis | EEmitterSelfRotationMode |  |
| EmitterSelfRotationSpeed | float |  |
| ScreenAlignment | TEnumAsByte < EParticleScreenAlignment > | The screen alignment to utilize for the emitter at this LOD level. 	 	One of the |
| MinFacingCameraBlendDistance | float | The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_Square |
| MaxFacingCameraBlendDistance | float | The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_FacingCameraPos |
| bUseLocalSpace | uint32 | If true, update the emitter in local space |
| bKillOnDeactivate | uint32 | If true, kill the emitter when the particle system is deactivated |
| bKillOnCompleted | uint32 | If true, kill the emitter when it completes |
| SortMode | TEnumAsByte < enum EParticleSortMode > | The sorting mode to use for this emitter. 	 	PSORTMODE_None				- No sorting requ |
| bConsiderOrbitOffsetWhenSort | uint32 |  |
| bUseLegacyEmitterTime | uint32 | If true, the EmitterTime for the emitter will be calculated by 	 	modulating the |
| bRemoveHMDRoll | uint32 | If true, removes the HMD view roll (e.g. in VR) |
| EmitterDuration | float | How long, in seconds, the emitter will run before looping. |
| EmitterDurationLow | float | The low end of the emitter duration if using a range. |
| bEmitterDurationUseRange | uint32 | If true, select the emitter duration from the range  	 		[EmitterDurationLow..Em |
| bDurationRecalcEachLoop | uint32 | If true, recalculate the emitter duration on each loop. |
| EmitterLoops | int32 | The number of times to loop the emitter. 	 	0 indicates loop continuously |
| SpawnRate | FRawDistributionFloat | The rate at which to spawn particles |
| ParticleBurstMethod | TEnumAsByte < EParticleBurstMethod > | The method to utilize when burst-emitting particles |
| BurstList | TArray < struct FParticleBurst > | The array of burst entries. |
| EmitterDelay | float | Indicates the time (in seconds) that this emitter should be delayed in the parti |
| EmitterDelayLow | float | The low end of the emitter delay if using a range. |
| bEmitterDelayUseRange | uint32 | If true, select the emitter delay from the range  	 		[EmitterDelayLow..EmitterD |
| bDelayFirstLoopOnly | uint32 | If true, the emitter will be delayed only on the first loop. |
| InterpolationMethod | TEnumAsByte < EParticleSubUVInterpMethod > | The interpolation method to used for the SubUV image selection. 	 	One of the fo |
| SubImages_Horizontal | int32 | The number of sub-images horizontally in the texture |
| SubImages_Vertical | int32 | The number of sub-images vertically in the texture |
| bScaleUV | uint32 | Whether to scale the UV or not - ie, the model wasn't setup with sub uvs |
| RandomImageTime | float | The amount of time (particle-relative, 0.0 to 1.0) to 'lock' on a random sub ima |
| RandomImageChanges | int32 | The number of times to change a random image over the life of the particle. |
| bOverrideSystemMacroUV | uint32 | Override the system MacroUV settings |
| MacroUVPosition | FVector | Local space position that UVs generated with the ParticleMacroUV material node w |
| MacroUVRadius | float | World space radius that UVs generated with the ParticleMacroUV material node wil |
| bUseMaxDrawCount | uint32 | If true, use the MaxDrawCount to limit the number of particles rendered. 	 	NOTE |
| MaxDrawCount | int32 | The maximum number of particles to DRAW for this emitter. 	 	If set to 0, it wil |
| UVFlippingMode | EParticleUVFlipMode | Controls UV Flipping for this emitter. |
| CutoutTexture | UTexture2D * | Texture to generate bounding geometry from. |
| BoundingMode | TEnumAsByte < enum ESubUVBoundingVertexCount > | More bounding vertices results in reduced overdraw, but adds more triangle overh |
| OpacitySourceMode | TEnumAsByte < enum EOpacitySourceMode > |  |
| AlphaThreshold | float | Alpha channel values larger than the threshold are considered occupied and will  |
| CutoutSubImagesX | int32 |  |
| CutoutSubImagesY | int32 | The number of sub-images vertically in the texture |
| bEnableCutOut | bool |  |
| EmitterNormalsMode | TEnumAsByte < enum EEmitterNormalsMode > | Normal generation mode for this emitter LOD. |
| NormalsSphereCenter | FVector | When EmitterNormalsMode is ENM_Spherical, particle normals are created to face a |
| NormalsCylinderDirection | FVector | When EmitterNormalsMode is ENM_Cylindrical,  	  particle normals are created to  |
| bOrbitModuleAffectsVelocityAlignment | uint32 | Ensures that movement generated from the orbit module is applied to velocity-ali |
| NamedMaterialOverrides | TArray < FName > | Named material overrides for this emitter.  		Overrides this emitter's material( |
| UBOBoundingGeometry | TArray < FVector2D > |  |
| bUseComputeRaster | uint32 |  |