---
title: UVolumetricFogBoxComponent
language: cpp
---

# UVolumetricFogBoxComponent

Used to create local volumetric fog.

> Inheritance: UBoxComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| VolumetricFogAlbedo | FColor | The height fog particle reflectiveness used by volumetric fog. 	  Water particle |
| VolumetricFogEmissive | FLinearColor | Light emitted by height fog.  This is a density so more light is emitted the fur |
| VolumetricFogExtinctionScale | float | Scales the height fog particle extinction amount used by volumetric fog.  Values |

## Functions

### SetVolumetricFogExtinctionScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetVolumetricFogAlbedo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | FColor |  |

**Return:** void  

### SetVolumetricFogEmissive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | FLinearColor |  |

**Return:** void