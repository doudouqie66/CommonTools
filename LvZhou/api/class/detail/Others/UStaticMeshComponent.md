---
title: UStaticMeshComponent
language: cpp
---

# UStaticMeshComponent

StaticMeshComponent is used to create an instance of a UStaticMesh.
  A static mesh is a piece of geometry that consists of a static set of polygons.
 
  @see UStaticMesh

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ForcedLodModel | int32 | If 0, auto-select LOD level. if >0, force to (ForcedLodModel-1). |
| PreviousLODLevel | int32 | LOD that was desired for rendering this StaticMeshComponent last frame. |
| MinLOD | int32 | Specifies the smallest LOD that will be used for this component. 	  This is igno |
| MaxLOD | int32 |  |
| StaticMesh | UStaticMesh * | The static mesh that this component uses to render |
| TightBoundsOrigin | FVector |  |
| TightBoundsBoxExtent | FVector |  |
| TightBoundsSphereRadius | float |  |
| CanUseTightBound | bool |  |
| VisibilityCollisionColor | FColor | Whether you want to turn on the collision display preview |
| bEnableSimpleMaterial | bool | If true, WireframeColorOverride will be used. If false, color is determined base |
| bOverrideWireframeColor | uint8 | If true, WireframeColorOverride will be used. If false, color is determined base |
| bOverrideMinLOD | uint8 | Whether to override the MinLOD setting of the static mesh asset with the MinLOD  |
| bOverrideNavigationExport | uint8 | If true, bForceNavigationObstacle flag will take priority over navigation data s |
| bForceNavigationObstacle | uint8 | Allows overriding navigation export behavior per component: full collisions or d |
| bDisallowMeshPaintPerInstance | uint8 | If true, mesh painting is disallowed on this instance. Set if vertex colors are  |
| bIgnoreInstanceForTextureStreaming | uint8 | Ignore this instance of this static mesh when calculating streaming information. |
| bOverrideLightMapRes | uint8 | Whether to override the lightmap resolution defined in the static mesh. |
| bOverrideCullingScreenSize | uint8 |  |
| bCastDistanceFieldIndirectShadow | uint8 | Whether to use the mesh distance field representation (when present) for shadowi |
| bOverrideDistanceFieldSelfShadowBias | uint8 | Whether to override the DistanceFieldSelfShadowBias setting of the static mesh a |
| bUseSubDivisions | uint8 | Whether to use subdivisions or just the triangle's vertices. |
| bUseDefaultCollision | uint8 | Use the collision profile specified in the StaticMesh asset. |
| bForceNotHzbOccluder | uint8 | not a hzb Occluder |
| bUseAsOccluderIgnoreMobility | uint8 |  |
| bCanBeOccludeed | uint8 |  |
| bCustomWaterBeOccludeed | uint8 |  |
| bAllowCopyExpectedQualityFromMesh | uint8 |  |
| OverriddenLightMapRes | int32 | Light map resolution to use on this component, used if bOverrideLightMapRes is t |
| StreamingDistanceMultiplier | float | Allows adjusting the desired streaming distance of streaming textures that uses  |
| LODData | TArray < FStaticMeshComponentLODInfo > | Static mesh LOD data.  Contains static lighting data along with instanced mesh v |
| StreamingTextureData | TArray < FStreamingTextureBuildInfo > | The list of texture, bounds and scales. As computed in the texture streaming bui |
| IsDynamicInstancingParametersEnabled | bool | Is dynamic instancing parameters enabled |
| DynamicInstancingParameters | TMap < FString , FVector4 > | Dynamic instancing parameters |
| LightmassSettings | FLightmassPrimitiveSettings | The Lightmass settings for this object. |
| IdeaBakingSettings | FIdeaBakingPrimitiveSettings | Add by luciuszhang: The IdeaBaking settings for this object. |
| AffectPointLightBPActors | TArray < TWeakObjectPtr < AActor > > |  |
| PointLightStaticMeshLODResources | TArray < FStaticMeshPointLightVertexDataBuffer > |  |
| bEnableISMbatching | uint8 |  |
| bForceUseDynamicElement | uint8 |  |
| LODSectionHiddenFlags | TArray < uint8 > | Hidden Flags for Rendering Section (8 bits = flags, Support 8 Sections), add by  |
| OutlineStaticMesh | UStaticMesh * | Outline Static Mesh |
| SubDivisionStepSize | int32 | Subdivision step size for static vertex lighting. |
| WireframeColorOverride | FColor | Wireframe color to use if bOverrideWireframeColor is true |
| SelectedEditorSection | int32 | The section currently selected in the Editor. Used for highlighting |
| SelectedEditorMaterial | int32 | The material currently selected in the Editor. Used for highlighting |
| SectionIndexPreview | int32 | Index of the section to preview. If set to INDEX_NONE, all section will be rende |
| MaterialIndexPreview | int32 | Index of the material to preview. If set to INDEX_NONE, all section will be rend |
| StaticMeshImportVersion | int32 | The import version of the static mesh when it was assign this is update when: 	  |
| bCustomOverrideVertexColorPerLOD | uint8 | The component has some custom painting on LODs or not. |
| bDisplayVertexColors | uint8 |  |
| DistanceFieldIndirectShadowMinVisibility | float | Controls how dark the dynamic indirect shadow can be. |
| DistanceFieldSelfShadowBias | float | Useful for reducing self shadowing from distance field methods when using world  |
| IrrelevantLights_DEPRECATED | TArray < FGuid > |  |
| StaticMeshDerivedDataKey | FString | Derived data key of the static mesh, used to determine if an update from the sou |
| MaterialStreamingRelativeBoxes | TArray < uint32 > | Material Bounds used for texture streaming. |

## Functions

### OnRep_StaticMesh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldStaticMesh | UStaticMesh * |  |

**Return:** void  

### SetStaticMesh

Change the StaticMesh used by this instance.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMesh | UStaticMesh * |  |

**Return:** bool  

### SetDirty

**Return:** void 

### SetVisibilityCollisionColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CollisionColor | FColor |  |

**Return:** void  

### GetVisibilityCollisionColor

**Return:** FColor 

### K2_GetStaticMesh

**Return:** UStaticMesh * 

### SetOutlineMesh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStaticMesh | UStaticMesh * |  |

**Return:** void  

### SetForcedLodModel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewForcedLodModel | int32 |  |

**Return:** void  

### SetDistanceFieldSelfShadowBias

Sets the component's DistanceFieldSelfShadowBias.  bOverrideDistanceFieldSelfShadowBias must be enabled for this to have an effect.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### GetLocalBounds

Get Local bounds

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Min | FVector &  |  |
| Max | FVector & |  |

**Return:** void  

### SetDynamicInstancingParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialIndex | int  |  |
| Name | FString &  |  |
| Value | FVector4 & |  |

**Return:** int32  

### EnableMeshClipPlane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlane | FPlane &  |  |
| PlaneIndex | int32 |  |

**Return:** void  

### DisableMeshClipPlane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlaneIndex | int32 |  |

**Return:** void  

### EnableMeshClipArc

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlane | FPlane &  |  |
| ClipSphere | FVector4 & |  |

**Return:** void  

### DisableMeshClipArc

**Return:** void 

### EnableMeshClip4Planes

Num of ClipPlanes is 4
	  0: Top Plane
	  1: Down Plane
	  2: Left Plane
	  3: Right Plane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlanes | TArray < FPlane > &  |  |
| bBox | bool |  |

**Return:** void  

### DisableMeshClip4Planes

**Return:** void 

### CheckSwitchSimpleMaterial

**Return:** void