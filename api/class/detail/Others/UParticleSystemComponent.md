---
title: UParticleSystemComponent
language: cpp
---

# UParticleSystemComponent

A particle emitter.

> Inheritance: UPrimitiveComponent -> IWTACAggregateInterface -> IObjectPoolInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| TemplateBindingType | EParticleTemplateBindingType |  |
| Template | UParticleSystem * |  |
| SoftTemplate | TSoftObjectPtr < UParticleSystem > |  |
| EmitterMaterials | TArray < UMaterialInterface * > |  |
| SkelMeshComponents | TArray < USkeletalMeshComponent * > | The skeletal mesh components used with the socket location module. 	 	This is to |
| bResetOnDetach | uint8 |  |
| bUpdateOnDedicatedServer | uint8 | whether to update the particle system on dedicated servers |
| bAllowRecycling | uint8 | If true, this Particle System will be available for recycling after it has compl |
| bAutoManageAttachment | uint8 | True if we should automatically attach to AutoAttachParent when activated, and d |
| bWarmingUp | uint8 |  |
| bOverrideLODMethod | uint8 | indicates that the component's LODMethod overrides the Template's |
| bSkipUpdateDynamicDataDuringTick | uint8 | Flag indicating that dynamic updating of render data should NOT occur during Tic |
| LODMethod | TEnumAsByte < enum ParticleSystemLODMethod > | The method of LOD level determination to utilize for this particle system |
| RequiredSignificance | EParticleSignificanceLevel | The significance this component requires of it's emitters for them to be enabled |
| bShouldUseTagGetSkeletalMesh | bool | Array holding name instance parameters for this ParticleSystemComponent. 	 	Para |
| SkeletalMeshTagName | FName |  |
| InstanceParameters | TArray < FParticleSysParam > |  |
| OnParticleSpawn | FParticleSpawnSignature |  |
| OnParticleBurst | FParticleBurstSignature |  |
| OnParticleDeath | FParticleDeathSignature |  |
| OnParticleCollide | FParticleCollisionSignature |  |
| OldPosition | FVector |  |
| PartSysVelocity | FVector |  |
| WarmupTime | float |  |
| WarmupTickRate | float |  |
| OverrideEmitterMeshDataMap | TMap < FName , UStaticMesh * > |  |
| SecondsBeforeInactive | float | Number of seconds of emitter not being rendered that need to pass before it 	  n |
| MaxTimeBeforeForceUpdateTransform | float | Time between forced UpdateTransforms for systems that use dynamically calculated |
| ReplayClips | TArray < UParticleSystemReplay * > | Array of replay clips for this particle system component.  These are serialized  |
| CustomTimeDilation | float | Scales DeltaTime in UParticleSystemComponent::Tick(...) |
| bIsPCPlatformResource | bool | Is PC Redirect Particle Resource |
| AutoAttachParent | TWeakObjectPtr < USceneComponent > | Component we automatically attach to when activated, if bAutoManageAttachment is |
| AutoAttachSocketName | FName | Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachm |
| AutoAttachLocationRule | EAttachmentRule | Options for how we handle our location when we attach to the AutoAttachParent, i |
| AutoAttachRotationRule | EAttachmentRule | Options for how we handle our rotation when we attach to the AutoAttachParent, i |
| AutoAttachScaleRule | EAttachmentRule | Options for how we handle our scale when we attach to the AutoAttachParent, if b |
| bForceNoAsync | bool |  |
| SystemFixedWorldBounds | FBox |  |
| SystemFixedLocalBounds | FBox |  |
| CollisionIgnoreActorList | TArray < AActor * > |  |
| CollisionIgnoreComponentList | TArray < UPrimitiveComponent * > |  |
| CollisionIgnoreInfoLastClearTime | float |  |
| EditorLODLevel | int32 | INTERNAL. Used by the editor to set the LODLevel |
| EditorDetailMode | int32 | Used for applying Cascade's detail mode setting to in-level particle systems |
| AutoAttachLocationType_DEPRECATED | TEnumAsByte < EAttachLocation :: Type > | DEPRECATED: Options for how we handle our location when we attach to the AutoAtt |

## Functions

### GetDuration

Returns duration

**Return:** float 

### SetSystemFixedWorldBounds

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldBounds | FBox |  |

**Return:** void  

### SetSystemFixedLocalBounds

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocalBounds | FBox |  |

**Return:** void  

### ClearSystemFixedBounds

Clear any previously set fixed bounds for the system instance.

**Return:** void 

### SetWarmUp

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WarmUpTime | float  |  |
| WarmUpRate | float |  |

**Return:** void  

### SetAutoAttachParams

DEPRECATED: Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | USceneComponent *  |  Component to attach to. |
| SocketName | FName  | Socket on Parent to attach to. |
| LocationType | EAttachLocation :: Type | Option for how we handle our location when we attach to Parent. |

**Return:** void  

### SetAutoAttachmentParameters

Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | USceneComponent *  |  Component to attach to. |
| SocketName | FName  | Socket on Parent to attach to. |
| LocationRule | EAttachmentRule  | Option for how we handle our location when we attach to Parent. |
| RotationRule | EAttachmentRule  | Option for how we handle our rotation when we attach to Parent. |
| ScaleRule | EAttachmentRule | Option for how we handle our scale when we attach to Parent. |

**Return:** void  

### SetBeamEndPoint

Set the beam end point
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewEndPoint | FVector |  The value to set it to |

**Return:** void  

### SetBeamSourcePoint

Set the beam source point
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewSourcePoint | FVector  | The value to set it to |
| SourceIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### SetBeamSourceTangent

Set the beam source tangent
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewTangentPoint | FVector  | The value to set it to |
| SourceIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### SetBeamSourceStrength

Set the beam source strength
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewSourceStrength | float  | The value to set it to |
| SourceIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### SetBeamTargetPoint

Set the beam target point
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewTargetPoint | FVector  | The value to set it to |
| TargetIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### SetBeamTargetTangent

Set the beam target tangent
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewTangentPoint | FVector  | The value to set it to |
| TargetIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### SetBeamTargetStrength

Set the beam target strength
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to set it on |
| NewTargetStrength | float  | The value to set it to |
| TargetIndex | int32 |  Which beam within the emitter to set it on |

**Return:** void  

### GetBeamEndPoint

Get the beam end point
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get the value of |
| OutEndPoint | FVector & |  |

**Return:** bool  true		EmitterIndex is valid and End point is set - OutEndPoint is valid

### GetBeamSourcePoint

Get the beam source point
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| SourceIndex | int32  |  Which beam within the emitter to get |
| OutSourcePoint | FVector & | Value of source point |

**Return:** bool  true		EmitterIndex and SourceIndex are valid - OutSourcePoint is valid

### GetBeamSourceTangent

Get the beam source tangent
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| SourceIndex | int32  |  Which beam within the emitter to get |
| OutTangentPoint | FVector & | Value of source tangent |

**Return:** bool  true		EmitterIndex and SourceIndex are valid - OutTangentPoint is valid

### GetBeamSourceStrength

Get the beam source strength
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| SourceIndex | int32  |  Which beam within the emitter to get |
| OutSourceStrength | float & | Value of source tangent |

**Return:** bool  true		EmitterIndex and SourceIndex are valid - OutSourceStrength is valid

### GetBeamTargetPoint

Get the beam target point
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| TargetIndex | int32  |  Which beam within the emitter to get |
| OutTargetPoint | FVector & | Value of target point |

**Return:** bool  true		EmitterIndex and TargetIndex are valid - OutTargetPoint is valid

### GetBeamTargetTangent

Get the beam target tangent
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| TargetIndex | int32  |  Which beam within the emitter to get |
| OutTangentPoint | FVector & | Value of target tangent |

**Return:** bool  true		EmitterIndex and TargetIndex are valid - OutTangentPoint is valid

### GetBeamTargetStrength

Get the beam target strength
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterIndex | int32  | The index of the emitter to get |
| TargetIndex | int32  |  Which beam within the emitter to get |
| OutTargetStrength | float & | Value of target tangent |

**Return:** bool  true		EmitterIndex and TargetIndex are valid - OutTargetStrength is valid

### SetEmitterEnable

EnablesDisables a sub-emitter
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterName | FName  |  The name of the sub-emitter to set it on |
| bNewEnableState | bool | The value to set it to |

**Return:** void  

### SetFloatParameter

Change a named float parameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | float |  |

**Return:** void  

### SetVectorParameter

Set a named vector instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | FVector |  |

**Return:** void  

### SetColorParameter

Set a named color instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | FLinearColor |  |

**Return:** void  

### SetActorParameter

Set a named actor instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | AActor * |  |

**Return:** void  

### SetMaterialParameter

Set a named material instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | UMaterialInterface * |  |

**Return:** void  

### SetTemplate

Change the ParticleSystem used by this ParticleSystemComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTemplate | UParticleSystem * |  |

**Return:** void  

### GetNumActiveParticles

Get the current number of active particles in this system

**Return:** int32 

### BeginTrails

Begins all trail emitters in this component.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFirstSocketName | FName  | The name of the first socket for the trail. |
| InSecondSocketName | FName  | The name of the second socket for the trail. |
| InWidthMode | ETrailWidthMode  |  How the width value is applied to the trail. |
| InWidth | float |  The width of the trail. |

**Return:** void  

### EndTrails

Ends all trail emitters in this component.

**Return:** void 

### SetTrailSourceData

Sets the defining data for all trails in this component.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFirstSocketName | FName  | The name of the first socket for the trail. |
| InSecondSocketName | FName  | The name of the second socket for the trail. |
| InWidthMode | ETrailWidthMode  |  How the width value is applied to the trail. |
| InWidth | float |  The width of the trail. |

**Return:** void  

### SetSocketName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName |  |

**Return:** void  

### ManuallyTickComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float |  |

**Return:** void  

### K2_Activate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReset | bool |  |

**Return:** void  

### K2_ActivateSystem

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bFlagAsJustAttached | bool |  |

**Return:** void  

### K2_Deactivate

**Return:** void 

### K2_DeactivateSystem

**Return:** void 

### CreateNamedDynamicMaterialInstance

Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InName | FName  |  |
| SourceMaterial | UMaterialInterface * |  |

**Return:** UMaterialInstanceDynamic *  

### GetNamedMaterial

Returns a named material. If this named material is not found, returns NULL.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InName | FName |  |

**Return:** UMaterialInterface *  

### GenerateParticleEvent

Record a kismet event.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEventName | FName  |  The name of the event that fired. |
| InEmitterTime | float  |  The emitter time when the event fired. |
| InLocation | FVector  |  The location of the particle when the event fired. |
| InDirection | FVector  |  |
| InVelocity | FVector |  The velocity of the particle when the event fired. |

**Return:** void  

### SetVectorRandParameter

Set a named random vector instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | FVector &  |  |
| ParamLow | FVector & |  |

**Return:** void  

### SetFloatRandParameter

Set a named random float instance parameter on this ParticleSystemComponent.
	 	Updates the parameter if it already exists, or creates a new entry if not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | float  |  |
| ParamLow | float |  |

**Return:** void  

### RewindEmitterInstances

**Return:** void