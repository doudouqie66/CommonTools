---
title: UDirectionalLightComponent
language: cpp
---

# UDirectionalLightComponent

A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.

> Inheritance: ULightComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnableLightShaftOcclusion | uint32 | Whether to occlude fog and atmosphere inscattering with screenspace blurred occl |
| OcclusionMaskDarkness | float | Controls how dark the occlusion masking is, a value of 1 results in no darkening |
| OcclusionDepthRange | float | Everything closer to the camera than this distance will occlude light shafts. |
| LightShaftOverrideDirection | FVector | Can be used to make light shafts come from somewhere other than the light's actu |
| WholeSceneDynamicShadowRadius_DEPRECATED | float |  |
| DynamicShadowDistanceMovableLight | float | How far Cascaded Shadow Map dynamic shadows will cover for a movable light, meas |
| DynamicShadowDistanceStationaryLight | float | How far Cascaded Shadow Map dynamic shadows will cover for a stationary light, m |
| DynamicShadowCascades | int32 | Number of cascades to split the view frustum into for the whole scene dynamic sh |
| CascadeDistributionExponent | float | Controls whether the cascades are distributed closer to the camera (larger expon |
| CascadeTransitionFraction | float | Proportion of the fade region between cascades. 	  Pixels within the fade region |
| ShadowDistanceFadeoutFraction | float | Controls the size of the fade out region at the far extent of the dynamic shadow |
| bUseIndependentShadowBound | uint32 |  |
| ShadowCenterOffset | float | Offset of the CSM shadow center in the viewing direction. |
| ShadowIndependentRadius | float |  |
| bUseInsetShadowsForMovableObjects | uint32 | Stationary lights only: Whether to use per-object inset shadows for movable comp |
| FarShadowCascadeCount | int32 | 0: no DistantShadowCascades, otherwise the count of cascades between WholeSceneD |
| FarShadowDistance | float | Distance at which the far shadow cascade should end.  Far shadows will cover the |
| DistanceFieldShadowDistance | float | Distance at which the ray traced shadow cascade should end.  Distance field shad |
| ForwardShadingPriority | int32 | Forward lighting priority for the single directional light that will be used for |
| LightSourceAngle | float | Light source angle in degrees, used for dynamic shadowing methods. 	  Currently  |
| TraceDistance | float | Determines how far shadows can be cast, in world units.  Larger values increase  |
| LightmassSettings | FLightmassDirectionalLightSettings | The Lightmass settings for this object. |
| bCastModulatedShadows | uint32 | Whether the light should cast modulated shadows from dynamic objects (mobile onl |
| bCastsLandscapeShadow | uint32 |  |
| LandscapeShadowColor | float |  |
| LandscapeShadowOffset | float |  |
| LandscapeShadowSoftHeight | float |  |
| LandscapeShadowPixelPrecision | float |  |
| LandscapeGeometry | ULandscapeGeometryAsset * |  |
| bCastPhotonShadow | uint32 | #if WITH_PHOTON_SHADOW 	 Whether the light should cast photon shadow for charact |
| bCastPhotonPerObjectShadow | uint32 |  |
| SoftShadowSoftness | float |  |
| ShadowBlendFactor | float |  |
| BoundsScale | float |  |
| NearPlaneOffset | float |  |
| FarPlaneOffset | float |  |
| SplitNearOffset | float |  |
| SplitFarOffset | float |  |
| ShadowMapResolution | float |  |
| ModulatedShadowColor | FColor | Color to modulate against the scene color when rendering modulated shadows. (mob |
| ACESParameters | TArray < FACESParameter > |  |
| bUsedAsAtmosphereSunLight | uint32 |  |
| bCastsCloudShadow | uint32 |  |
| CloudShadowTexture | UTexture * |  |
| CloudShadowTileSize | float |  |
| CloudShadowDensity | float |  |
| CloudShadowWinSpeed | FVector2D |  |
| bUseGridShadow | uint32 |  |
| GridShadowSplitSettings | TArray < FGridShadowSplitSettings > |  |

## Functions

### SetCastPhotonPerObjectShadow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | bool |  |

**Return:** void  

### SetDynamicShadowDistanceMovableLight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetDynamicShadowDistanceStationaryLight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetDynamicShadowCascades

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | int32 |  |

**Return:** void  

### SetCascadeDistributionExponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetCascadeTransitionFraction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetShadowDistanceFadeoutFraction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetForwardShadingPriority

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | int32 |  |

**Return:** void  

### SetEnableLightShaftOcclusion

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetOcclusionMaskDarkness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### SetLightShaftOverrideDirection

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | FVector |  |

**Return:** void  

### SetCastsCloudShadow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | bool |  |

**Return:** void  

### SetCloudShadowTexture

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTexture | UTexture * |  |

**Return:** void  

### SetCloudShadowTileSize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | float |  |

**Return:** void  

### SetCloudShadowDensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDensity | float |  |

**Return:** void  

### SetCloudShadowWinSpeed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWinSpeed | FVector2D & |  |

**Return:** void