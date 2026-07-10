---
title: UCameraComponent
language: cpp
---

# UCameraComponent

Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides.
   The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| FieldOfView | float | The horizontal field of view (in degrees) in perspective mode (ignored in Orthog |
| FirstPersonFieldOfView | float | The horizontal field of view (in degrees) used for primitives tagged as "IsFirst |
| FirstPersonScale | float | The scale to apply to primitives tagged as "IsFirstPerson". This is used to scal |
| FirstPersonScaleCurveNearValue | float |  |
| FirstPersonScaleMaxLength | float |  |
| FirstPersonScaleCurvePow | float |  |
| bEnableFirstPersonFieldOfView | uint8 | True if the first person field of view should be used for primitives tagged as " |
| bEnableFirstPersonScale | uint8 | True if the first person scale should be used for primitives tagged as "IsFirstP |
| OrthoWidth | float | The desired width (in world units) of the orthographic view (ignored in Perspect |
| OrthoNearClipPlane | float | The near plane distance of the orthographic view (in world units) |
| OrthoFarClipPlane | float | The far plane distance of the orthographic view (in world units) |
| AspectRatio | float |  |
| WidthHeight | FVector2D |  |
| bConstrainAspectRatio | uint32 |  |
| bUseFieldOfViewForLOD | uint32 |  |
| bLockToHmd | uint32 | True if the camera's orientation and position should be locked to the HMD |
| bUsePawnControlRotation | uint32 | If this camera component is placed on a pawn, should it use the viewcontrol rota |
| bEnableModifyAdditiveOffset | uint32 |  |
| ProjectionMode | TEnumAsByte < ECameraProjectionMode :: Type > |  |
| PostProcessBlendWeight | float | Indicates if PostProcessSettings should be used when using this Camera to view t |
| PostProcessSettings | FPostProcessSettings | Post process settings to use for this camera. Don't forget to check the properti |
| bUseControllerViewRotation_DEPRECATED | uint32 | DEPRECATED: use bUsePawnControlRotation instead |

## Functions

### SetFieldOfView

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFieldOfView | float |  |

**Return:** void  

### SetFirstPersonFieldOfView

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFirstPersonFieldOfView | float |  |

**Return:** void  

### SetFirstPersonScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFirstPersonScale | float |  |

**Return:** void  

### SetFirstPersonScaleParams

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFirstPersonScale | float  |  |
| InFPScaleCurveNearValue | float  |  |
| InFPScaleMaxLen | float  |  |
| InFPScaleCurvePow | float |  |

**Return:** void  

### SetEnableFirstPersonFieldOfView

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInEnableFirstPersonFieldOfView | bool |  |

**Return:** void  

### SetEnableFirstPersonScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInEnableFirstPersonScale | bool |  |

**Return:** void  

### SetActive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewActive | bool  |  |
| bReset | bool |  |

**Return:** void  

### ApplyDrawDistanceOffset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFieldOfView | float |  |

**Return:** void  

### SetOrthoWidth

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOrthoWidth | float |  |

**Return:** void  

### SetOrthoNearClipPlane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOrthoNearClipPlane | float |  |

**Return:** void  

### SetOrthoFarClipPlane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOrthoFarClipPlane | float |  |

**Return:** void  

### SetAspectRatio

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAspectRatio | float |  |

**Return:** void  

### SetWidthHeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWidthHeight | FVector2D |  |

**Return:** void  

### SetConstraintAspectRatio

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInConstrainAspectRatio | bool |  |

**Return:** void  

### SetUseFieldOfViewForLOD

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInUseFieldOfViewForLOD | bool |  |

**Return:** void  

### SetProjectionMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InProjectionMode | ECameraProjectionMode :: Type |  |

**Return:** void  

### SetPostProcessBlendWeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPostProcessBlendWeight | float |  |

**Return:** void  

### GetCameraView

Returns camera's Point of View.
	  Called by Camera class. Subclass and postprocess to add any effects.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float  |  |
| DesiredView | FMinimalViewInfo & |  |

**Return:** void  

### AddOrUpdateBlendable

Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendableObject | TScriptInterface < IBlendableInterface >  |  |
| InWeight | float |  |

**Return:** void  

### RemoveBlendable

Removes a blendable.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendableObject | TScriptInterface < IBlendableInterface > |  |

**Return:** void  

### SetbEnableModifyAdditiveOffset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEnable | bool |  |

**Return:** void  

### GetEnableModifyAdditiveOffset

**Return:** bool 

### AddAdditiveOffset

Applies the given additive offset, preserving any existing offset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transform | FTransform &  |  |
| FOV | float |  |

**Return:** void  

### ClearAdditiveOffset

Removes any additive offset.

**Return:** void 

### GetAddtiveInfo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OutIsAddtive | bool &  |  |
| OutAddtiveOffset | float &  |  |
| OutAddtiveTrans | FTransform & |  |

**Return:** void