---
title: UAnimNotifyState
language: cpp
---

# UAnimNotifyState

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| InOldFPPAnimMode_ChangeToNewFPPMesh | bool |  |
| bEnableBoneRetargetAdaptFeature | bool |  |
| bCheckAnimIsolation | bool |  |
| bCheckAnimIsolation_OnlyNewFPP | bool |  |
| bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode | bool |  |
| bCheckAnimIsolation_OnlyTPP | bool | 仅在TPP（第三人称）下生效，开启后此NotifyState只会在TPP AnimInstance中触发 |

## Functions

### GetNotifyName

Implementable event to get a custom name for the notify

**Return:** FString 

### Received_NotifyBegin

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MeshComp | USkeletalMeshComponent *  |  |
| Animation | UAnimSequenceBase *  |  |
| TotalDuration | float  |  |
| InvokeAnimInstance | UAnimInstance * |  |

**Return:** bool  

### Received_NotifyTick

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MeshComp | USkeletalMeshComponent *  |  |
| Animation | UAnimSequenceBase *  |  |
| FrameDeltaTime | float  |  |
| InvokeAnimInstance | UAnimInstance * |  |

**Return:** bool  

### Received_NotifyEnd

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MeshComp | USkeletalMeshComponent *  |  |
| Animation | UAnimSequenceBase *  |  |
| InvokeAnimInstance | UAnimInstance * |  |

**Return:** bool  

### TryGetNewFPPAdaptSkelMeshComp

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent *  |  |
| InIsInitCall | bool  |  |
| HasRetarget | bool  |  |
| ForceGetFPPMesh | bool |  |

**Return:** USkeletalMeshComponent *  

### TryGetBoneRetargetAdaptSkelMeshComp

For Bone Retarget Feature Start

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent *  |  |
| InIsInitCall | bool |  |

**Return:** USkeletalMeshComponent *  

### ClearBoneRetargetAdaptState

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** void  

### IsBoneRetargetAdaptInitDone

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** bool  

### IsEnableBoneRetargetAdaptFeature

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetSkelMeshComp | USkeletalMeshComponent * |  |

**Return:** bool