---
title: UDecalComponent
language: cpp
---

# UDecalComponent

A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model.
 
  @see UDecalActor

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| DecalMaterial | UMaterialInterface * | Decal material. |
| SortOrder | int32 | Controls the order in which decal elements are rendered.  Higher values draw lat |
| FadeScreenSize | float |  |
| FadeStartDelay | float | Time in seconds to wait before beginning to fade out the decal. Set fade duratio |
| FadeDuration | float | Time in seconds for the decal to fade out. Set fade duration and start delay to  |
| bDestroyOwnerAfterFade | uint8 | Automatically destroys the owning actor after fully fading out. |
| DecalSize | FVector | Decal size in local space (does not include the component scale), technically re |
| bBakeWithLandscape | uint8 | Whether bake decal to the landscape flatten material |

## Functions

### GetFadeStartDelay

**Return:** float 

### GetFadeDuration

**Return:** float 

### SetFadeOut

Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out.
	 The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material 
	 node to control the look of "fading out."
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartDelay | float  | - Time in seconds to wait before beginning to fade out the decal. |
| Duration | float  | - Time in second for the decal to fade out. |
| DestroyOwnerAfterFade | bool | - Should the owning actor automatically be destroyed after it is completely faded out. |

**Return:** void  

### SetFadeScreenSize

Set the FadeScreenSize for this decal component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFadeScreenSize | float |  |

**Return:** void  

### SetSortOrder

Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### SetDecalMaterial

setting decal material on decal component. This will force the decal to reattach

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDecalMaterial | UMaterialInterface * |  |

**Return:** void  

### GetDecalMaterial

Accessor for decal material

**Return:** UMaterialInterface * 

### CreateDynamicMaterialInstance

Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it

**Return:** UMaterialInstanceDynamic *