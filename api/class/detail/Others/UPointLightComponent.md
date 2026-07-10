---
title: UPointLightComponent
language: cpp
---

# UPointLightComponent

A light component which emits light from a single point equally in all directions.

> Inheritance: ULightComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Radius_DEPRECATED | float |  |
| AttenuationRadius | float | Bounds the light's visible influence.   	  This clamping of the light's influenc |
| bUseInverseSquaredFalloff | uint32 | Whether to use physically based inverse squared distance falloff, where Attenuat |
| LightFalloffExponent | float | Controls the radial falloff of the light when UseInverseSquaredFalloff is disabl |
| SourceRadius | float | Radius of light source shape. 	  Note that light sources shapes which intersect  |
| SoftSourceRadius | float | Soft radius of light source shape. 	 Note that light sources shapes which inters |
| SourceLength | float | Length of light source shape. 	  Note that light sources shapes which intersect  |
| bSimulateRectLight | uint32 | By luciuszhang: when in rect light mode, source radius is the rect light source  |
| bSimulatePortalLight | uint32 | By luciuszhang: Portal light will be used in lightmass for IdeaBake, it is just  |
| RectLightSourceWidth | float | By luciuszhang: rect light source width. |
| RectLightSourceHeight | float | By luciuszhang: rect light source height. |
| bEnableForVertexPointLight | uint32 |  |
| LightmassSettings | FLightmassPointLightSettings | The Lightmass settings for this object. |

## Functions

### SetAttenuationRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRadius | float |  |

**Return:** void  

### SetLightFalloffExponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFalloffExponent | float |  |

**Return:** void  

### SetSourceRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | float |  |

**Return:** void  

### SetSoftSourceRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | float |  |

**Return:** void  

### SetSourceLength

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetSimulateRectLight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| newValue | bool |  |

**Return:** void  

### SetSimulatePortalLight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| newValue | bool |  |

**Return:** void  

### SetRectLightSourceWidth

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetRectLightSourceHeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void