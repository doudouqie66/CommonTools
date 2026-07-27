---
title: USkyLightComponent
language: cpp
---

# USkyLightComponent

> Inheritance: ULightComponentBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceType | TEnumAsByte < enum ESkyLightSourceType > | Indicates where to get the light contribution from. |
| Cubemap | UTextureCube * | Cubemap to use for sky lighting if SourceType is set to SLS_SpecifiedCubemap. |
| SourceCubemapAngle | float | Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubema |
| CubemapResolution | int32 | Maximum resolution for the very top processed cubemap mip. Must be a power of 2. |
| SkyDistanceThreshold | float | Distance from the sky light at which any geometry should be treated as part of t |
| bCaptureEmissiveOnly | bool | Only capture emissive materials. Skips all lighting making the capture cheaper.  |
| bLowerHemisphereIsBlack | bool | Whether all distant lighting from the lower hemisphere should be set to LowerHem |
| LowerHemisphereColor | FLinearColor |  |
| OcclusionMaxDistance | float | Max distance that the occlusion of one point will affect another. 	  Higher valu |
| Contrast | float | Contrast S-curve applied to the computed AO.  A value of 0 means no contrast inc |
| OcclusionExponent | float | Exponent applied to the computed AO.  Values lower than 1 brighten occlusion ove |
| MinOcclusion | float | Controls the darkest that a fully occluded area can get.  This tends to destroy  |
| OcclusionTint | FColor | Tint color on occluded areas, artistic control. |
| OcclusionCombineMode | TEnumAsByte < enum EOcclusionCombineMode > | Controls how occlusion from Distance Field Ambient Occlusion is combined with Sc |
| bForceHide | uint8 | Whether to hide the primitive in game, if the primitive is Visible. |
| BlendDestinationCubemap | UTextureCube * |  |

## Functions

### SetIntensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewIntensity | float |  |

**Return:** void  

### SetIndirectLightingIntensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewIntensity | float |  |

**Return:** void  

### SetVolumetricScatteringIntensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewIntensity | float |  |

**Return:** void  

### SetLightColor

Set color of the light

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightColor | FLinearColor |  |

**Return:** void  

### SetCubemap

Sets the cubemap used when SourceType is set to SpecifiedCubemap, and causes a skylight update on the next tick.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewCubemap | UTextureCube * |  |

**Return:** void  

### SetCubemapBlend

Creates sky lighting from a blend between two cubemaps, which is only valid when SourceType is set to SpecifiedCubemap. 
	  This can be used to seamlessly transition sky lighting between different times of day.
	  The caller should continue to update the blend until BlendFraction is 0 or 1 to reduce rendering cost.
	  The caller is responsible for avoiding pops due to changing the source or destination.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceCubemap | UTextureCube *  |  |
| DestinationCubemap | UTextureCube *  |  |
| InBlendFraction | float |  |

**Return:** void  

### SetOcclusionTint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTint | FColor & |  |

**Return:** void  

### SetOcclusionContrast

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOcclusionContrast | float |  |

**Return:** void  

### SetOcclusionExponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOcclusionExponent | float |  |

**Return:** void  

### SetMinOcclusion

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinOcclusion | float |  |

**Return:** void  

### SetForceHide

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInForceHide | bool |  |

**Return:** void  

### RecaptureSky

Recaptures the scene for the skylight.
	  This is useful for making sure the sky light is up to date after changing something in the world that it would capture.
	  Warning: this is very costly and will definitely cause a hitch.

**Return:** void