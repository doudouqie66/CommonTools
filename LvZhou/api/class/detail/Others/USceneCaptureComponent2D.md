---
title: USceneCaptureComponent2D
language: cpp
---

# USceneCaptureComponent2D

Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.

> Inheritance: USceneCaptureComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ProjectionType | TEnumAsByte < ECameraProjectionMode :: Type > |  |
| FOVAngle | float | Camera field of view (in degrees). |
| OrthoWidth | float | The desired width (in world units) of the orthographic view (ignored in Perspect |
| TextureTarget | UTextureRenderTarget2D * | Output render target of the scene capture that can be read in materals. |
| CaptureSource | TEnumAsByte < enum ESceneCaptureSource > |  |
| CompositeMode | TEnumAsByte < enum ESceneCaptureCompositeMode > | When enabled, the scene capture will composite into the render target instead of |
| PostProcessSettings | FPostProcessSettings |  |
| PostProcessBlendWeight | float | Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect. |
| bUseCustomProjectionMatrix | bool | Whether a custom projection matrix will be used during rendering. Use with cauti |
| CustomProjectionMatrix | FMatrix | The custom projection matrix to use |
| bEnableClipPlane | bool | Enables a clip plane while rendering the scene capture which is useful for porta |
| ClipPlaneBase | FVector | Base position for the clip plane, can be any position on the plane. |
| ClipPlaneNormal | FVector | Normal for the plane. |
| bCameraCutThisFrame | uint32 | True if we did a camera cut this frame. Automatically reset to false at every ca |

## Functions

### AddOrUpdateBlendable

Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendableObject | TScriptInterface < IBlendableInterface >  |  |
| InWeight | float |  |

**Return:** void  

### CaptureScene

Render the scene to the texture target immediately.  
	  This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.

**Return:** void