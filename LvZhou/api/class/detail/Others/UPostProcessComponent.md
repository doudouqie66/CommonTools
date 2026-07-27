---
title: UPostProcessComponent
language: cpp
---

# UPostProcessComponent

PostProcessComponent. Enables Post process controls for blueprints.
 	Will use a parent UShapeComponent to provide volume data if available.

> Inheritance: USceneComponent -> IInterface_PostProcessVolume

## Variables

| Name | Type | Description |
|------|------|-------------|
| Settings | FPostProcessSettings | Post process settings to use for this volume. |
| Priority | float | Priority of this volume. In the case of overlapping volumes the one with the hig |
| BlendRadius | float | World space radius around the volume that is used for blending (only if not unbo |
| BlendWeight | float | 0:no effect, 1:full effect |
| bEnabled | uint32 | Whether this volume is enabled or not. |
| bUnbound | uint32 | set this to false to use the parent shape component as volume bounds. True affec |

## Functions

### AddOrUpdateBlendable

Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendableObject | TScriptInterface < IBlendableInterface >  |  |
| InWeight | float |  |

**Return:** ENGINE_API void  

### AddWeatherCompTag

**Return:** void