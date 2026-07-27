---
title: UAtmosphericFogComponent
language: cpp
---

# UAtmosphericFogComponent

Used to create fogging effects such as clouds.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SunMultiplier | float | Global scattering factor. |
| FogMultiplier | float | Scattering factor on object. |
| DensityMultiplier | float | Fog density control factor. |
| DensityOffset | float | Fog density offset to control opacity [-1.f ~ 1.f]. |
| DistanceScale | float | Distance scale. |
| AltitudeScale | float | Altitude scale (only Z scale). |
| DistanceOffset | float | Distance offset, in km (to handle large distance) |
| GroundOffset | float | Ground offset. |
| StartDistance | float | Start Distance. |
| SunDiscScale | float | Distance offset, in km (to handle large distance) |
| DefaultBrightness | float | Default light brightness. Used when there is no sunlight placed in the level. Un |
| DefaultLightColor | FColor | Default light color. Used when there is no sunlight placed in the level. |
| bDisableSunDisk | uint32 | Disable Sun Disk rendering. |
| bDisableGroundScattering | uint32 | Disable Color scattering from ground. |
| PrecomputeParams | FAtmospherePrecomputeParameters |  |
| TransmittanceTexture_DEPRECATED | UTexture2D * |  |
| IrradianceTexture_DEPRECATED | UTexture2D * |  |

## Functions

### SetDefaultBrightness

Set brightness of the light

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewBrightness | float |  |

**Return:** ENGINE_API void  

### SetDefaultLightColor

Set color of the light

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightColor | FLinearColor |  |

**Return:** ENGINE_API void  

### SetSunMultiplier

Set SunMultiplier

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSunMultiplier | float |  |

**Return:** ENGINE_API void  

### SetFogMultiplier

Set FogMultiplier

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFogMultiplier | float |  |

**Return:** ENGINE_API void  

### SetDensityMultiplier

Set DensityMultiplier

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDensityMultiplier | float |  |

**Return:** ENGINE_API void  

### SetDensityOffset

Set DensityOffset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDensityOffset | float |  |

**Return:** ENGINE_API void  

### SetDistanceScale

Set DistanceScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDistanceScale | float |  |

**Return:** ENGINE_API void  

### SetAltitudeScale

Set AltitudeScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAltitudeScale | float |  |

**Return:** ENGINE_API void  

### SetStartDistance

Set StartDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewStartDistance | float |  |

**Return:** ENGINE_API void  

### SetDistanceOffset

Set DistanceOffset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDistanceOffset | float |  |

**Return:** ENGINE_API void  

### DisableSunDisk

Set DisableSunDisk

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSunDisk | bool |  |

**Return:** ENGINE_API void  

### DisableGroundScattering

Set DisableGroundScattering

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewGroundScattering | bool |  |

**Return:** ENGINE_API void  

### SetPrecomputeParams

Set PrecomputeParams, only valid in Editor mode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DensityHeight | float  |  |
| MaxScatteringOrder | int32  |  |
| InscatterAltitudeSampleNum | int32 |  |

**Return:** ENGINE_API void  

### StartPrecompute

**Return:** void