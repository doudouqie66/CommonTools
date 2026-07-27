---
title: UCameraModifier
language: cpp
---

# UCameraModifier

A CameraModifier is a base class for objects that may adjust the final camera properties after
  being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier
  can be stateful, and is associated uniquely with a specific APlayerCameraManager.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bDebug | uint32 | If true, enables certain debug visualization features. |
| bExclusive | uint32 | If true, no other modifiers of same priority allowed. |
| Priority | uint8 | Priority value that determines the order in which modifiers are applied. 0 = hig |
| CameraOwner | APlayerCameraManager * | Camera this object is associated with. |
| AlphaInTime | float | When blending in, alpha proceeds from 0 to 1 over this time |
| AlphaOutTime | float | When blending out, alpha proceeds from 1 to 0 over this time |
| Alpha | float | Current blend alpha. |

## Functions

### BlueprintModifyCamera

Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform. 
	  Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float  | Change in time since last update |
| ViewLocation | FVector  | The current camera location. |
| ViewRotation | FRotator  | The current camera rotation. |
| FOV | float  |   The current camera fov. |
| NewViewLocation | FVector &  | (out) The modified camera location. |
| NewViewRotation | FRotator &  | (out) The modified camera rotation. |
| NewFOV | float & |  (out) The modified camera FOV. |

**Return:** void  

### BlueprintModifyPostProcess

Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects.
	  Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float  |  Change in time since last update |
| PostProcessBlendWeight | float &  | (out) Blend weight applied to the entire postprocess structure. |
| PostProcessSettings | FPostProcessSettings & | (out) Post process structure defining what settings and values to override. |

**Return:** void  

### IsDisabled

**Return:** bool Returns true if modifier is disabled, false otherwise.

### GetViewTarget

**Return:** AActor * Returns the actor the camera is currently viewing.

### DisableModifier

Disables this modifier.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bImmediate | bool | - true to disable with no blend out, false (default) to allow blend out |

**Return:** void  

### EnableModifier

Enables this modifier.

**Return:** void