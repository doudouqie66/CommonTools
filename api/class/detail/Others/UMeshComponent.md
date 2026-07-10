---
title: UMeshComponent
language: cpp
---

# UMeshComponent

MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles.
 
  @see UStaticMeshComponent
  @see USkeletalMeshComponent

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| OverrideMaterials | TArray < UMaterialInterface * > | Per-Component material overrides.  These must NOT be set directly or a race cond |
| OverlayMaterial | UMaterialInterface * | Translucent material to blend on top of this mesh. Mesh will be rendered twice - |
| IndexedOverlayMaterials | TArray < UMaterialInterface * > | Overlay materials applied to each material slot. |
| IndexedOverrideOutlineMaterials | TArray < UMaterialInterface * > | Override overlay outline materials applied to each material slot. |
| bUseIndexedOverlayMaterials | bool | Whether to use IndexedOverlayMaterials (or OverlayMaterial). |
| bUseOverlayMaterials | bool | Whether to render overlay materials. (Indexed or not) |
| OverlayMaterialMaxDrawDistance | float | The max draw distance for overlay material. A distance of 0 indicates that overl |
| bIsEnableRetrieveDefaultMat | bool |  |

## Functions

### GetMaterials

**Return:** TArray < class UMaterialInterface * > 

### GetMaterialIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialSlotName | FName |  |

**Return:** int32  

### GetMaterialSlotNames

**Return:** TArray < FName > 

### IsMaterialSlotNameValid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialSlotName | FName |  |

**Return:** bool  

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

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlanes | TArray < FPlane > &  |  |
| bBox | bool |  |

**Return:** void  

### DisableMeshClip4Planes

**Return:** void 

### GetOverlayMaterial

Get the overlay material used by this instance

**Return:** UMaterialInterface * 

### SetOverlayMaterial

Change the overlay material used by this instance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewOverlayMaterial | UMaterialInterface * |  |

**Return:** void  

### GetUseIndexedOverlayMaterials

Get UseIndexedOverlayMaterials

**Return:** bool 

### SetUseIndexedOverlayMaterials

Set UseIndexedOverlayMaterials

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewUseIndexedOverlayMaterials | bool |  |

**Return:** void  

### GetUseOverlayMaterials

Get UseOverlayMaterials

**Return:** bool 

### SetUseOverlayMaterials

Set UseOverlayMaterials

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewUseOverlayMaterials | bool |  |

**Return:** void  

### GetIndexedOverlayMaterials

Get IndexedOverlayMaterials

**Return:** TArray < class UMaterialInterface * > 

### SetIndexedOverlayMaterial

Set IndexedOverlayMaterials

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32  |  |
| Material | UMaterialInterface * |  |

**Return:** void  

### SetOverlayMaterialMaxDrawDistance

Change the overlay material max draw distance used by this instance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxDrawDistance | float |  |

**Return:** void  

### GetIndexedOverrideOutlineMaterials

Get IndexedOverrideOutlineMaterials

**Return:** TArray < class UMaterialInterface * > 

### SetIndexedOverrideOutlineMaterials

Set IndexedOverrideOutlineMaterials

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32  |  |
| Material | UMaterialInterface * |  |

**Return:** void  

### PrestreamTextures

Tell the streaming system to start loading all textures with all mip-levels.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Seconds | float  |    Number of seconds to force all mip-levels to be resident |
| bPrioritizeCharacterTextures | bool  | Whether character textures should be prioritized for a while by the streaming system |
| CinematicTextureGroups | int32 |  Bitfield indicating which texture groups that use extra high-resolution mips |

**Return:** void  

### SetScalarParameterValueOnMaterials

Material parameter setting and caching 
	 Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| ParameterValue | float |  |

**Return:** void  

### SetVectorParameterValueOnMaterials

Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| ParameterValue | FVector |  |

**Return:** void