---
title: UStereoLayerComponent
language: cpp
---

# UStereoLayerComponent

A geometry layer within the stereo rendered viewport.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| bLiveTexture | uint32 | True if the stereo layer texture needs to update itself every frame(scene captur |
| bSupportsDepth | uint32 | True if the stereo layer needs to support depth intersections with the scene geo |
| bNoAlphaChannel | uint32 | True if the texture should not use its own alpha channel (1.0 will be substitute |
| Texture | UTexture * | Texture displayed on the stereo layer (is stereocopic textures are supported on  |
| LeftTexture | UTexture * | Texture displayed on the stereo layer for left eye, if stereoscopic textures are |
| bQuadPreserveTextureRatio | uint32 | True if the quad should internally set it's Y value based on the set texture's d |
| QuadSize | FVector2D | Size of the rendered stereo layer quad |
| UVRect | FBox2D | UV coordinates mapped to the quad face |
| CylinderRadius | float | Radial size of the rendered stereo layer cylinder |
| CylinderOverlayArc | float | Arc angle for the stereo layer cylinder |
| CylinderHeight | int | Height of the stereo layer cylinder |
| StereoLayerType | TEnumAsByte < enum EStereoLayerType > | Specifies how and where the quad is rendered to the screen |
| StereoLayerShape | TEnumAsByte < enum EStereoLayerShape > | Specifies which type of layer it is.  Note that some shapes will be supported on |
| Priority | int32 | Render priority among all stereo layers, higher priority render on top of lower  |

## Functions

### SetTexture

Change the texture displayed on the stereo layer quad

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTexture | UTexture * |  |

**Return:** void  

### GetTexture

**Return:** UTexture * 

### SetQuadSize

Change the quad size. This is the unscaled height and width, before component scale is applied.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InQuadSize | FVector2D |  |

**Return:** void  

### GetQuadSize

**Return:** FVector2D 

### SetUVRect

Change the UV coordinates mapped to the quad face

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InUVRect | FBox2D |  |

**Return:** void  

### GetUVRect

**Return:** FBox2D 

### SetPriority

Change the layer's render priority, higher priorities render on top of lower priorities

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPriority | int32 |  |

**Return:** void  

### GetPriority

**Return:** int32 

### MarkTextureForUpdate

**Return:** void