---
title: UStaticMesh
language: cpp
---

# UStaticMesh

A StaticMesh is a piece of geometry that consists of a static set of polygons.
  Static Meshes can be translated, rotated, and scaled, but they cannot have their vertices animated in any way. As such, they are more efficient
  to render than other types of geometry such as USkeletalMesh, and they are often the basic building block of levels created in the engine.
 
  @see AStaticMeshActor, UStaticMeshComponent

> Inheritance: UObject -> IInterface_CollisionDataProvider -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| bSkipHISMBoundCheck | bool |  |
| bHasROCData | bool |  |
| FSOCOccluder | UFlakeOccluder * |  |
| ReplaceMaterial | UMaterialInterface * |  |
| PerLODBiasTypeInfo | TArray < FMeshPerLODBiasArray > | When autonomous or simulated pawn needs special LOD bias |
| bUseLODBiasExt | bool |  |
| bAutoUpdateLODBiasExt | bool |  |
| PerLODBiasTypeInfoExt | TArray < FMeshLODBiasCondition > |  |
| MinLOD | int32 | Minimum LOD to use for rendering.  This is the default setting for the mesh and  |
| Materials_DEPRECATED | TArray < UMaterialInterface * > | Materials used by this static mesh. Individual sections index in to this array. |
| StaticMaterials | TArray < FStaticMaterial > |  |
| LightmapUVDensity | float |  |
| LightMapResolution | int32 |  |
| LightMapCoordinateIndex | int32 | The light map coordinate index |
| DistanceFieldSelfShadowBias | float | Useful for reducing self shadowing from distance field methods when using world  |
| ExpectedQualityLimit | FExpectedQuality |  |
| bGenerateMeshDistanceField | uint32 | Whether to generate a distance field for this mesh, which can be used by Distanc |
| bLazyLoadBulkData | uint32 | Lazy load bulk data for reduce memory used |
| bAllowMinLodBiasCfg | uint32 | allow MinLodBias for global config (r.StaticMeshMinLodBias) |
| bDisableGenerateHLOD | uint32 |  |
| BodySetup | UBodySetup * |  |
| LODForCollision | int32 | Specifies which mesh LOD to use for complex (per-poly) collision.  	 	Sometimes  |
| CullingScreenSize | float | Culling screen size |
| bUseScreenSizeModifier | bool |  |
| ScreenSizeCullingRoughDistance | float | Rough Distance of Screen size Culling |
| bIsGrass | bool | grass flag, we need this special flag since grasses are so important in pubg gam |
| bIsTree | bool |  |
| bStripComplexCollisionForConsole_DEPRECATED | uint32 | If true, strips unwanted complex collision data aka kDOP tree when cooking for c |
| bHasNavigationData | uint32 | If true, mesh will have NavCollision property with additional data for navmesh g |
| bIsStreamable | bool | Streamable flag, determine whether to split the lod serialization, WITH_STREAMIN |
| HiddenStreamFactor | uint8 |  |
| bCompressData | bool |  |
| bUseCoarseGIMip | bool |  |
| NotInlineLODCount | uint8 |  |
| bSupportUniformlyDistributedSampling | uint32 |  |
| LpvBiasMultiplier | float | Bias multiplier for Light Propagation Volume lighting |
| bAllowCPUAccess | bool | If true, will keep geometry data CPU-accessible in cooked builds, rather than up |
| bCustomWaterBeOccludeed | bool |  |
| EncodeBits_Position | int32 |  |
| EncodeBits_TexCoord | int32 |  |
| EncodeBits_Normal | int32 |  |
| EncodeBits_Generic | int32 |  |
| EncodeBits_VertexColor | int32 |  |
| EncodeSpeed | int32 |  |
| DecodeSpeed | int32 |  |
| Sockets | TArray < UStaticMeshSocket * > | Array of named socket locations, set up in editor and used as a shortcut instead |
| PositiveBoundsExtension | FVector | Bound extension values in the positive direction of XYZ, positive value increase |
| NegativeBoundsExtension | FVector | Bound extension values in the negative direction of XYZ, positive value increase |
| ExtendedBounds | FBoxSphereBounds | Original mesh bounds extended with PositiveNegativeBoundsExtension |
| SubLocalBounds | TArray < FBoxSphereBounds > |  |
| OcclusionCullingVertex | TArray < FVector4 > |  |
| IndirectLightingCachePositionOffset | FVector |  |
| bUseQuantization | bool |  |
| ElementToIgnoreForTexFactor | int32 | Index of an element to ignore while gathering streaming texture factors. 	  This |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| NavCollision | UNavCollision * | Pre-build navigation collision |
| SimpleMaterials | TArray < FStaticSimpleMaterial > | Simple material setting |
| bCloseMeshOpt | bool |  |
| UVDensityMultiplier | float |  |
| SourceModels | TArray < FStaticMeshSourceModel > | Imported raw mesh bulk data. |
| MeshDescriptions | UStaticMeshDescriptions * | Container holding mesh descriptions for each LOD |
| SectionInfoMap | FMeshSectionInfoMap | Map of LOD+Section index to per-section info. |
| OriginalSectionInfoMap | FMeshSectionInfoMap | We need the OriginalSectionInfoMap to be able to build mesh in a non destructive |
| LODGroup | FName | The LOD group to which this mesh belongs. |
| bAutoComputeLODScreenSize | uint32 | If true, the screen sizees at which LODs swap are computed automatically. |
| ImportVersion | int32 | The last import version |
| MaterialRemapIndexPerImportVersion | TArray < FMaterialRemapIndex > |  |
| LightmapUVVersion | int32 | The lightmap UV generation version used during the last derived data build |
| Id_DEPRECATED | FGuid | The following is unique identifier for UStaticMesh. for generating cache key. |
| bIsUsedInLandscapeFlaten | bool | Whether to Flaten Landscape |
| FlattenXHalfLength | float | Default to Bound.X0.5 + 100 |
| FlattenYHalfLength | float | Default to Bound.Y0.5 + 100 |
| FlattenZHeight | float | Default to 0 |
| FlattenFallOffDistance | float | Default to 1000 |
| AssetImportData | UAssetImportData * | Importing data and options used for this mesh |
| SourceFilePath_DEPRECATED | FString | Path to the resource used to construct this static mesh |
| SourceFileTimestamp_DEPRECATED | FString | DateTime-stamp of the file from the last import |
| ThumbnailInfo | UThumbnailInfo * | Information for thumbnail rendering |
| EditorCameraPosition | FAssetEditorOrbitCameraPosition | The stored camera position to use as a default for the static mesh editor |
| bCustomizedCollision | bool | If the user has modified collision in any way or has custom collision imported.  |
| bUseFSOCOccluder | bool |  |
| OccluderMesh | UStaticMesh * | Specifies the custom occluder mesh for software occlusion |
| OccluderBadFaceMesh | UStaticMesh * |  |
| OccluderAvgValidRate | float |  |
| OccluderAvgErrorRate | float |  |
| bPreviewDraco | bool |  |
| bUseHighPrecision | bool |  |
| bUseUVAverage | bool |  |
| bOptimizeNormal | bool |  |
| SubBoundsIncludedVertices | TArray < FSubBoundsIncludedVertices > |  |

## Functions

### GetAllSectionTexelDensities

**Return:** ENGINE_API TArray < FSectionTexelDensity > 

### RefreshBulkNotExistsLODCount

**Return:** void 

### GetNumLODs

Returns the number of LODs used by the mesh.

**Return:** ENGINE_API int32 

### GetBounds

Returns the number of bounds of the mesh.
	 

**Return:** ENGINE_API FBoxSphereBounds The bounding box represented as box origin with extents and also a sphere that encapsulates that box

### GetBoundingBox

Returns the bounding box, in local space including bounds extension(s), of the StaticMesh asset

**Return:** ENGINE_API FBox 

### GetNumSections

Returns number of Sections that this StaticMesh has, in the supplied LOD (LOD 0 is the highest)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InLOD | int32 |  |

**Return:** ENGINE_API int32  

### GetMaterial

Gets a Material given a Material Index and an LOD number
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialIndex | int32 |  |

**Return:** ENGINE_API UMaterialInterface *  Requested material

### GetMaterialIndex

Gets a Material index given a slot name
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialSlotName | FName |  |

**Return:** ENGINE_API int32  Requested material

### GenerateLODForHLODMesh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Flags | int |  |

**Return:** ENGINE_API void