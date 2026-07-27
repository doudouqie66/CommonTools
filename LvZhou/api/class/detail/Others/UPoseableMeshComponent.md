---
title: UPoseableMeshComponent
language: cpp
---

# UPoseableMeshComponent

UPoseableMeshComponent that allows bone transforms to be driven by blueprint.

> Inheritance: USkinnedMeshComponent

## Functions

### SetBoneTransformByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| InTransform | FTransform &  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** void  

### SetBoneLocationByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| InLocation | FVector  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** void  

### SetBoneRotationByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| InRotation | FRotator  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** void  

### SetBoneScaleByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| InScale3D | FVector  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** void  

### GetBoneTransformByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** FTransform  

### GetBoneLocationByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** FVector  

### GetBoneRotationByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** FRotator  

### GetBoneScaleByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |  |
| BoneSpace | EBoneSpaces :: Type |  |

**Return:** FVector  

### ResetBoneTransformByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** void  

### CopyPoseFromSkeletalComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InComponentToCopy | USkeletalMeshComponent * |  |

**Return:** void