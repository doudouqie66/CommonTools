---
title: UAnimSingleNodeInstance
language: cpp
---

# UAnimSingleNodeInstance

> Inheritance: UAnimInstance

## Functions

### SetLooping

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsLooping | bool |  |

**Return:** void  

### SetPlayRate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPlayRate | float |  |

**Return:** void  

### SetReverse

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInReverse | bool |  |

**Return:** void  

### SetPosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPosition | float  |  |
| bFireNotifies | bool |  |

**Return:** void  

### SetPositionWithPreviousTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPosition | float  |  |
| InPreviousTime | float  |  |
| bFireNotifies | bool |  |

**Return:** void  

### SetBlendSpaceInput

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendInput | FVector & |  |

**Return:** void  

### SetPlaying

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsPlaying | bool |  |

**Return:** void  

### GetLength

**Return:** float 

### PlayAnim

For AnimSequence specific

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsLooping | bool  |  |
| InPlayRate | float  |  |
| InStartPosition | float |  |

**Return:** void  

### StopAnim

**Return:** void 

### SetAnimationAsset

Set New Asset - calls InitializeAnimation, for now we need MeshComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAsset | UAnimationAsset *  |  |
| bIsLooping | bool  |  |
| InPlayRate | float |  |

**Return:** void  

### GetAnimationAsset

Get the currently used asset

**Return:** UAnimationAsset * 

### SetPreviewCurveOverride

Set pose value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PoseName | FName &  |  |
| Value | float  |  |
| bRemoveIfZero | bool |  |

**Return:** void