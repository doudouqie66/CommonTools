---
title: UAnimFuntionBoneModifyLibrary
language: cpp
---

# UAnimFuntionBoneModifyLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### Prototype_BoneModifyFuntion

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FBPAnimComponentSpacePoseContext &  |  |
| AdditionalPoseBPContext | TArray < FBPAnimComponentSpacePoseContext > &  |  |
| OutBoneModifyData | TArray < FFunctionBoneModifyData > & |  |

**Return:** void  

### GetBoneTransformLocalSpace

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FBPAnimComponentSpacePoseContext &  |  |
| BoneName | FName |  |

**Return:** FTransform  

### GetBoneTransformComponentSpace

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FBPAnimComponentSpacePoseContext &  |  |
| BoneName | FName |  |

**Return:** FTransform