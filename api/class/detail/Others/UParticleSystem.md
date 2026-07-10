---
title: UParticleSystem
language: cpp
---

# UParticleSystem

A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters
  in a system, the designer can create elaborate particle effects that are held in a single system. Once created using
  Cascade, a ParticleSystem can then be inserted into a level or created in script.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| SystemUpdateMode | TEnumAsByte < enum EParticleSystemUpdateMode > |  |
| UpdateTime_FPS | float | UpdateTime_FPS	- the frame per second to update at in FixedTime mode |
| UpdateTime_Delta | float | UpdateTime_Delta	- internal |
| WarmupTime | float | WarmupTime - the time to warm-up the particle system when first rendered	 	  War |
| WarmupTickRate | float | WarmupTickRate - the time step for each tick during warm up. 		Set to 0 to use t |
| bEnableSeparateRendering | bool |  |
| Emitters | TArray < UParticleEmitter * > | Emitters	- internal - the array of emitters in the system |
| PreviewComponent | UParticleSystemComponent * | The component used to preview the particle system in Cascade |
| CurveEdSetup | UInterpCurveEdSetup * | Used for curve editor to remember curve-editing setup. |
| bOrientZAxisTowardCamera | uint32 | If true, the system's Z axis will be oriented toward the camera |
| LODDistanceCheckTime | float | How often (in seconds) the system should perform the LOD distance check. |
| bUseDeviceConstBias | bool |  |
| bUseUltraDeviceBias | bool |  |
| bUseDeviceQualityBias | bool |  |
| bUsePCDeviceConstBias | bool |  |
| bUseCustomCullDistance | bool |  |
| bUseAbsoluteDistance | bool | default false ,use for cull distance not affected by r.ViewDistanceScale |
| CustomCullDistance | float | default 0 ,use for mobile particle distance cull |
| CustomPCCullDistance | float | default -1 then use same distance as mobile do |
| CullDistanceCheckTime | float |  |
| LODMethod | TEnumAsByte < enum ParticleSystemLODMethod > | The method of LOD level determination to utilize for this particle system 	 	  P |
| LODDistances | TArray < float > | The array of distances for each LOD level in the system. 	 	Used when LODMethod  |
| bRegenerateLODDuplicate | uint32 | Internal value that tracks the regenerate LOD levels preference. 	 	If true, whe |
| LODSettings | TArray < struct FParticleSystemLOD > |  |
| bUseFixedRelativeBoundingBox | uint32 | Whether to use the fixed relative bounding box or calculate it every frame. |
| FixedRelativeBoundingBox | FBox | Fixed relative bounding box for particle system. |
| SecondsBeforeInactive | float | Number of seconds of emitter not being rendered that need to pass before it 	  n |
| bShouldResetPeakCounts | uint32 | EDITOR ONLY: Indicates that Cascade would like to have the PeakActiveParticles c |
| bHasPhysics | uint32 | Set during load time to indicate that physics is used... |
| bUseRealtimeThumbnail | uint32 | Inidicates the old 'real-time' thumbnail rendering should be used |
| ThumbnailImageOutOfDate | uint32 | Internal: Indicates the PSys thumbnail image is out of date |
| Delay | float | How long this Particle system should delay when ActivateSystem is called on it. |
| DelayLow | float | The low end of the emitter delay if using a range. |
| bUseDelayRange | uint32 | If true, select the emitter delay from the range  	 		[DelayLow..Delay] |
| bAllowGcCluster | uint8 |  |
| bAllowRenderDataUpdateLag | uint8 |  |
| bAllowManagedTicking | uint8 |  |
| bAutoDeactivate | bool |  |
| MinTimeBetweenTicks | uint32 |  |
| InsignificantReaction | EParticleSystemInsignificanceReaction | The reaction this system takes when all emitters are insignificant. |
| InsignificanceDelay | float | Time delay between all emitters becoming insignificant and the systems insignifi |
| MaxSignificanceLevel | EParticleSignificanceLevel | The maximum level of significance for emitters in this system. Any emitters with |
| bAllowTickOptimization | uint8 |  |
| bAllowSlowTickWhenInVisiable | uint8 |  |
| bAllowSlowTickWhenFarAway | uint8 |  |
| MacroUVPosition | FVector | Local space position that UVs generated with the ParticleMacroUV material node w |
| MacroUVRadius | float | World space radius that UVs generated with the ParticleMacroUV material node wil |
| OcclusionBoundsMethod | TEnumAsByte < enum EParticleSystemOcclusionBoundsMethod > | Which occlusion bounds method to use for this particle system. 	 	EPSOBM_None -  |
| CustomOcclusionBounds | FBox | The occlusion bounds to use if OcclusionBoundsMethod is set to EPSOBM_CustomBoun |
| SoloTracking | TArray < struct FLODSoloTrack > |  |
| NamedMaterialSlots | TArray < FNamedEmitterMaterial > | Array of named material slots for use by emitters of this system.  		Emitters ca |
| bInitParticlesOnCanNotEverRender | uint8 |  |
| AvailableDeviceLevel | int32 |  |

## Functions

### ContainsEmitterType

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TypeData | UClass * |  |

**Return:** bool