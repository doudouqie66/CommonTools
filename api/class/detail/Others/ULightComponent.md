---
title: ULightComponent
language: cpp
---

# ULightComponent

> Inheritance: ULightComponentBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Temperature | float | Color temperature in Kelvin of the blackbody illuminant. 	 White (D65) is 6500K. |
| MaxDrawDistance | float |  |
| MaxDistanceFadeRange | float |  |
| bUseTemperature | uint32 | false: use white (D65) as illuminant. |
| ShadowMapChannel_DEPRECATED | int32 | Legacy shadowmap channel from the lighting build, now stored in FLightComponentM |
| MinRoughness | float | Min roughness effective for this light. Used for softening specular highlights. |
| SpecularScale | float | Multiplier on specular highlights. Use only with great care! Any value besides 1 |
| bLocalLightDisableDiffuse | uint32 | Local light disable diffuse |
| ShadowResolutionScale | float | Scales the resolution of shadowmaps used to shadow this light.  By default shado |
| LightPriority | int32 | Light priority for mobile light grid |
| ShadowBias | float | Controls how accurate self shadowing of whole scene shadows from this light are. |
| ShadowSharpen | float | Amount to sharpen shadow filtering |
| ContactShadowLength | float | Length of screen space ray trace for sharp contact shadows. Zero is disabled. |
| InverseSquaredFalloff_DEPRECATED | uint32 |  |
| bCacheStaticShadows | uint32 |  |
| CastTranslucentShadows | uint32 | Whether the light is allowed to cast dynamic shadows from translucency. |
| bCastShadowsFromCinematicObjectsOnly | uint32 | Whether the light should only cast shadows from components marked as bCastCinema |
| bAffectDynamicIndirectLighting | uint32 | Whether the light should be injected into the Light Propagation Volume |
| LightingChannels | FLightingChannels | Channels that this light should affect.   	  These channels only apply to opaque |
| LightFunctionMaterial | UMaterialInterface * | The light function material to be applied to this light. 	  Note that only non-l |
| LightFunctionScale | FVector | Scales the light function projection.  X and Y scale in the directions perpendic |
| IESTexture | UTextureLightProfile * | IES texture (light profiles from real world measured data) |
| bUseIESBrightness | uint32 | true: take light brightness from IES profile, false: use the light brightness -  |
| IESBrightnessScale | float | Global scale for IES brightness contribution. Only available when "Use IES Brigh |
| LightFunctionFadeDistance | float | Distance at which the light function should be completely faded to DisabledBrigh |
| DisabledBrightness | float | Brightness factor applied to the light when the light function is specified but  |
| bEnableLightShaftBloom | uint32 | Whether to render light shaft bloom from this light.  	  For directional lights, |
| BloomScale | float | Scales the additive color. |
| BloomThreshold | float | Scene color must be larger than this to create bloom in the light shafts. |
| BloomTint | FColor | Multiplies against scene color to create the bloom color. |
| bUseRayTracedDistanceFieldShadows | bool | Whether to use ray traced distance field area shadows.  The project setting bGen |
| RayStartOffsetDepthScale | float | Controls how large of an offset ray traced shadows have from the receiving surfa |

## Functions

### SetIntensity

Set intensity of the light

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
| NewLightColor | FLinearColor  |  |
| bSRGB | bool |  |

**Return:** void  

### SetTemperature

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTemperature | float |  |

**Return:** void  

### SetLightFunctionMaterial

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionMaterial | UMaterialInterface * |  |

**Return:** void  

### SetLightFunctionScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionScale | FVector |  |

**Return:** void  

### SetLightFunctionFadeDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionFadeDistance | float |  |

**Return:** void  

### SetLightFunctionDisabledBrightness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetAffectDynamicIndirectLighting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetAffectTranslucentLighting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetEnableLightShaftBloom

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetBloomScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetBloomThreshold

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetBloomTint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | FColor |  |

**Return:** void  

### SetIESTexture

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | UTextureLightProfile * |  |

**Return:** void  

### SetShadowBias

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### ForceUpdateShadowState

**Return:** void 

### SetSpecularScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetLocalLightDisableDiffuse

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | bool |  |

**Return:** void