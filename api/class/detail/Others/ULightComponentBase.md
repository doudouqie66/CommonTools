---
title: ULightComponentBase
language: cpp
---

# ULightComponentBase

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| LightGuid | FGuid | GUID used to associate a light component with precomputed shadowing information  |
| Brightness_DEPRECATED | float |  |
| Intensity | float | Total energy that the light emits.   	  For pointspot lights with inverse square |
| LightColor | FColor | Filter color of the light. 	  Note that this can change the light's effective in |
| bAffectsWorld | uint32 | Whether the light can affect the world, or whether it is disabled. 	  A disabled |
| CastShadows | uint32 | Whether the light should cast any shadows. |
| CastStaticShadows | uint32 | Whether the light should cast shadows from static objects.  Also requires Cast S |
| CastDynamicShadows | uint32 | Whether the light should cast shadows from dynamic objects.  Also requires Cast  |
| bAffectTranslucentLighting | uint32 | Whether the light affects translucency or not.  Disabling this can save GPU time |
| bCastVolumetricShadow | uint32 | Whether the light shadows volumetric fog.  Disabling this can save GPU time. |
| RequiredDeviceLevel | int32 |  |
| IndirectLightingIntensity | float | Scales the indirect lighting contribution from this light.  	  A value of 0 disa |
| VolumetricScatteringIntensity | float | Intensity of the volumetric scattering from this light.  This scales Intensity a |

## Functions

### SetCastShadows

Sets whether this light casts shadows

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### GetLightColor

Gets the light color as a linear color

**Return:** FLinearColor 

### SetCastVolumetricShadow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void