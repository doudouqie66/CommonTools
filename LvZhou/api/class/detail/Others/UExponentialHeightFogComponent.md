---
title: UExponentialHeightFogComponent
language: cpp
---

# UExponentialHeightFogComponent

Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| FogDensity | float | Global density factor. |
| CustomHightFogDensity | TArray < FCustomHeightFog > |  |
| bUseCustomFog | bool |  |
| CustomFogLow_Height | float |  |
| CustomFogLow_DensityCoefficient | float |  |
| CustomFogLow_Color | FLinearColor |  |
| CustomFogHigh_Height | float |  |
| CustomFogHigh_DensityCoefficient | float |  |
| CustomFogHigh_Color | FLinearColor |  |
| FogInscatteringColor | FLinearColor |  |
| InscatteringColorCubemap | UTextureCube * | Cubemap that can be specified for fog color, which is useful to make distant, he |
| InscatteringColorCubemapAngle | float | Angle to rotate the InscatteringColorCubemap around the Z axis. |
| InscatteringTextureTint | FLinearColor | Tint color used when InscatteringColorCubemap is specified, for quick edits with |
| FullyDirectionalInscatteringColorDistance | float | Distance at which InscatteringColorCubemap should be used directly for the Insca |
| NonDirectionalInscatteringColorDistance | float | Distance at which only the average color of InscatteringColorCubemap should be u |
| DirectionalInscatteringExponent | float | Controls the size of the directional inscattering cone, which is used to approxi |
| DirectionalInscatteringStartDistance | float | Controls the start distance from the viewer of the directional inscattering, whi |
| DirectionalInscatteringColor | FLinearColor | Controls the color of the directional inscattering, which is used to approximate |
| FogHeightFalloff | float | Height density factor, controls how the density increases as height decreases.   |
| FogMaxOpacity | float | Maximum opacity of the fog.   	  A value of 1 means the fog can become fully opa |
| StartDistance | float | Distance from the camera that the fog will start, in world units. |
| FogCutoffDistance | float | Scene elements past this distance will not have fog applied.  This is useful for |
| Priority | int32 | Priority to be rendered with, useful if more than one exponential fogs are visib |
| bEnableVolumetricFog | bool | Whether to enable Volumetric fog.  Scalability settings control the resolution o |
| VolumetricFogScatteringDistribution | float | Controls the scattering phase function - how much incoming light scatters in var |
| VolumetricFogAlbedo | FColor | The height fog particle reflectiveness used by volumetric fog.  	  Water particl |
| VolumetricFogEmissive | FLinearColor | Light emitted by height fog.  This is a density so more light is emitted the fur |
| VolumetricFogExtinctionScale | float | Scales the height fog particle extinction amount used by volumetric fog.  Values |
| VolumetricFogDistance | float | Distance over which volumetric fog should be computed.  Larger values extend the |
| VolumetricFogStaticLightingScatteringIntensity | float |  |
| bOverrideLightColorsWithFogInscatteringColors | bool | Whether to use FogInscatteringColor for the Sky Light volumetric scattering colo |
| VolumetricFogStartDistance | float | Distance over which volumetric fog should be computed.  Larger values extend the |
| VolumetricFogNoiseTexture | UTexture2D * |  |
| VolumetricFogNoiseTransform | FTransform |  |

## Functions

### SetFogDensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetCustomFogHeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float  |  |
| index | int32 |  |

**Return:** void  

### SetCustomFogDensityCoefficient

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float  |  |
| index | int32 |  |

**Return:** void  

### SetCustomFogInscatteringColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FLinearColor  |  |
| index | int32 |  |

**Return:** void  

### SetFogInscatteringColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FLinearColor |  |

**Return:** void  

### SetInscatteringColorCubemap

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | UTextureCube * |  |

**Return:** void  

### SetInscatteringColorCubemapAngle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetFullyDirectionalInscatteringColorDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetNonDirectionalInscatteringColorDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetInscatteringTextureTint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FLinearColor |  |

**Return:** void  

### SetDirectionalInscatteringExponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetDirectionalInscatteringStartDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetDirectionalInscatteringColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FLinearColor |  |

**Return:** void  

### SetFogHeightFalloff

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetFogMaxOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetStartDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetFogCutoffDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetVolumetricFog

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetVolumetricFogScatteringDistribution

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

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

### SetVolumetricFogDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetVolumetricFogStartDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetVolumetricFogNoiseTexture

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | UTexture2D * |  |

**Return:** void  

### SetVolumetricFogNoiseTransform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transform | FTransform |  |

**Return:** void