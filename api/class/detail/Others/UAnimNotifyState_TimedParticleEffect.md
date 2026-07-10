---
title: UAnimNotifyState_TimedParticleEffect
language: cpp
---

# UAnimNotifyState_TimedParticleEffect

> Inheritance: UAnimNotifyState

## Variables

| Name | Type | Description |
|------|------|-------------|
| PSTemplate | UParticleSystem * |  |
| bIsPlayInWorld | bool |  |
| bIsRelativeToMeshSocketInWorld | bool |  |
| SocketName | FName |  |
| LocationOffset | FVector |  |
| RotationOffset | FRotator |  |
| RotationOffsetDisable | uint32 |  |
| ScaleDisable | uint32 |  |
| ScaleMultiplier | FVector |  |
| bDestroyAtEnd | bool |  |
| bEnableAttachMeshChangeIgnoreSocketCheck | bool |  |
| bAdaptToNewFPP | bool |  |
| CacheAttachAdaptMeshComp | TWeakObjectPtr < USkeletalMeshComponent > |  |
| SimulatedActivationOfQualityLevel | int32 |  |
| CurveParamList | TMap < FName , FCurveParams > |  |
| ParticleComp | UParticleSystemComponent * |  |
| bNotifyControlParticleVisible | bool |  |
| bEnableSpawnObjTrackFeature | bool |  |
| bAddAnotherBone_Z_Delta | bool |  |
| Z_Delta_BoneName | FName |  |
| ParticleTag | FName |  |
| SpawnedObjCacheMap | TMap < FName , TWeakObjectPtr < UObject > > |  |
| bSkipSocketNameCheck | bool |  |
| EnableDestoryByUniqueTagAtEnd | bool |  |
| PreviousPSTemplates | TArray < UParticleSystem * > |  |
| PreviousSocketNames | TArray < FName > |  |
| bInDebugMode | bool |  |
| CurrentLocationOffset | FVector |  |
| CurrentRotationOffset | FRotator |  |
| CurrentScaleMultiplier | FVector |  |
| CachedSpawnedParticleComponent | UParticleSystemComponent * |  |

## Functions

### IsEnableSpawnObjTrackFeature

**Return:** bool 

### TryMarkSpawnObjTracker

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent *  |  |
| InSpawnedObj | UObject * |  |

**Return:** void  

### TryClearSpawnObjTracker

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** void  

### IsTrackingObj

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** bool  

### GetOverrideParticleTemplate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent *  |  |
| InPSTemplate | UParticleSystem * |  |

**Return:** UParticleSystem *  

### GetOverrideParticleWorldTransform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent *  |  |
| TargetTransform | FTransform |  |

**Return:** FTransform  

### InnerCheckParticleParentVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| skComp | USkeletalMeshComponent *  |  |
| InPSC | UParticleSystemComponent * |  |

**Return:** void  

### CheckParticleParentVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InComponent | USkeletalMeshComponent * |  |

**Return:** void  

### IsEnableSearchAllDescendants

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** bool  

### SearchChildrenParticleAndDestroy

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Children | TArray < USceneComponent * >  |  |
| MeshComp | USkeletalMeshComponent *  |  |
| AttachAdaptMeshComp | USkeletalMeshComponent * |  |

**Return:** void