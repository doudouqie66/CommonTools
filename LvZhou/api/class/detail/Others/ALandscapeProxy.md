---
title: ALandscapeProxy
language: cpp
---

# ALandscapeProxy

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| SplineComponent | ULandscapeSplinesComponent * |  |
| LandscapeGuid | FGuid |  |
| BoundingGuid | FGuid |  |
| LandscapeSectionOffset | FIntPoint | Offset in quads from global components grid origin (in quads) |
| MaxLODLevel | int32 | Max LOD level to use when rendering, -1 means the max available |
| MaxLODLevel_PC | int32 | Combined material used to render the landscape |
| LODDistanceFactor_PC | float |  |
| LODStartDistance_PC | float |  |
| LODFalloff_PC | TEnumAsByte < ELandscapeLODFalloff :: Type > |  |
| LODDistanceFactor | float |  |
| LODFalloff | TEnumAsByte < ELandscapeLODFalloff :: Type > |  |
| bUseScreenSizeLOD | bool |  |
| LOD0DistributionSetting | float | The distribution setting used to change the LOD 0 generation, 1.75 is the normal |
| LODDistributionSetting | float | The distribution setting used to change the LOD generation, 2 is the normal dist |
| NearMaxLOD_Baked | uint8 |  |
| NearFactor_Baked | float |  |
| NearExtent_Baked | float |  |
| FarFactor_Baked | float |  |
| LandscapeRoughness | float |  |
| EnableImproveLOD | bool |  |
| ImproveLODValues | TArray < float > | LOD Values |
| NearMaxLOD | uint8 |  |
| NearFactor | float |  |
| NearExtent | float |  |
| FarFactor | float |  |
| StaticLightingLOD | int32 | LOD level to use when running lightmass (increase to 1 or 2 for large landscapes |
| DefaultPhysMaterial | UPhysicalMaterial * | Default physical material, used when no per-layer values physical materials |
| StreamingDistanceMultiplier | float | Allows artists to adjust the distance where textures using UV 0 are streamed ino |
| bCacheHeightData | uint32 |  |
| LandscapeMaterial | UMaterialInterface * | Combined material used to render the landscape |
| LandscapeHoleMaterial | UMaterialInterface * | Material used to render landscape components with holes. If not set, LandscapeMa |
| LandscapeMaterial_ForPC | UMaterialInterface * |  |
| LandscapeHoleMaterial_ForPC | UMaterialInterface * | Material used to render landscape components with holes. If not set, LandscapeMa |
| bOverrideGrassTypes_ForPC | uint8 |  |
| GrassTypes_ForPC | TArray < ULandscapeGrassType * > |  |
| OtherMaterials | TMap < FName , UMaterialInterface * > | Other materials allow LandscapeComponent to change its material in runtime |
| bOverrideGrassTypes | uint8 |  |
| GrassTypes | TArray < ULandscapeGrassType * > |  |
| MinGrassWeightThreshold | float | Minimal weight threshold to generate landscape grass |
| NegativeZBoundsExtension | float | Allows overriding the landscape bounds. This is useful if you distort the landsc |
| PositiveZBoundsExtension | float | Allows overriding the landscape bounds. This is useful if you distort the landsc |
| GrassColor_WorldMaskNoiseTexture | UTexture2D * | Texture used to render grass color |
| GrassColor_UVScale_WorldMaskNoise | FVector2D |  |
| GrassColor_Center_WorldMaskNoise | FVector2D |  |
| LandscapeComponents | TArray < ULandscapeComponent * > | The array of LandscapeComponent that are used by the landscape |
| LandscapeAOTextureDataAsset | ULandscapeAOTextureDataAsset * |  |
| CollisionComponents | TArray < ULandscapeHeightfieldCollisionComponent * > | Array of LandscapeHeightfieldCollisionComponent |
| FoliageComponents | TArray < UHierarchicalInstancedStaticMeshComponent * > |  |
| StillUsed | TSet < UHierarchicalInstancedStaticMeshComponent * > |  |
| bHasLandscapeGrass | bool |  |
| StaticLightingResolution | float | The resolution to cache lighting at, in texelsquad in one axis 	   Total resolut |
| bCastStaticShadow | uint32 |  |
| bCastShadowAsTwoSided | uint32 | Whether this primitive should cast dynamic shadows as if it were a two sided mat |
| bCastFarShadow | uint32 | Whether this primitive should cast shadows in the far shadow cascades. |
| LightingChannels | FLightingChannels | Channels that this Landscape should be in.  Lights with matching channels will a |
| bUseMaterialPositionOffsetInStaticLighting | uint32 | Whether to use the landscape material's vertical world position offset when calc |
| bRenderCustomDepth | uint32 | If true, the Landscape will be rendered in the CustomDepth pass (usually used fo |
| CustomDepthStencilValue | int32 | Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Req |
| LightmassSettings | FLightmassPrimitiveSettings | The Lightmass settings for this object. |
| CollisionMipLevel | int32 |  |
| SimpleCollisionMipLevel | int32 |  |
| CollisionThickness | float | Thickness of the collision surface, in unreal units |
| BodyInstance | FBodyInstance | Collision profile settings for this landscape |
| bGenerateOverlapEvents | uint32 | If true, Landscape will generate overlap events when other components are overla |
| bBakeMaterialPositionOffsetIntoCollision | uint32 | Whether to bake the landscape material's vertical world position offset into the |
| bUseHoleConsistent | uint32 | Set to true before digging, making the physical data consistent with the rendere |
| ComponentSizeQuads | int32 | Data set at creation time |
| SubsectionSizeQuads | int32 | Data set at creation time |
| NumSubsections | int32 | Data set at creation time |
| bUsedForNavigation | uint32 | Data set at creation time  	 Hints navigation system whether this landscape will |
| bMobileMultiLayers | uint32 |  |
| NavigationGeometryGatheringMode | ENavDataGatheringMode |  |
| bUseLandscapeForCullingInvisibleHLODVertices | bool | Flag whether or not this Landscape's surface can be used for culling hidden tria |
| DeformComponentMap | TMap < FIntPoint , int32 > |  |
| DeformWeightTileMap | TArray < uint32 > |  |
| DeformWeightData | TArray < uint8 > |  |
| ExportLOD | int32 | LOD level to use when exporting the landscape to obj or FBX |
| TargetDisplayOrderList | TArray < FName > | Display Order of the targets |
| TargetDisplayOrder | ELandscapeLayerDisplayMode | Display Order mode for the targets |
| bUsePCMaterialToGenerateCollision | bool | Combined material used to render the landscape |
| bIsMovingToLevel | uint32 |  |
| EditorCachedLayerInfos_DEPRECATED | TArray < ULandscapeLayerInfoObject * > |  |
| ReimportHeightmapFilePath | FString |  |
| EditorLayerSettings | TArray < FLandscapeEditorLayerSettings > |  |
| ExtraHeightmapNumber | int32 |  |
| NoWeightBlendMaskNumber | int32 |  |
| HeightmapNameSet | TSet < FString > |  |
| MaskNameSet | TSet < FString > |  |
| VisibleHeightmapNameSet | TSet < FString > |  |
| NoWeightBlendMaskNameSet | TSet < FString > |  |
| LockedHeightmapNameSet | TSet < FString > |  |
| ColorMaskList | TArray < FLandscapeColorMask > |  |
| VisibilityLayerNameSet | TSet < FString > | All Visibility Layer names |
| MaxPaintedLayersPerComponent | int32 |  |
| LayerTextureParameterMapping | TMap < FName , UTexture * > |  |
| DeformWeightMsg | FString |  |
| LandscapeFlattenMaterial | UMaterialInterface * | Flatten material used to render the landscape |
| MaterialBakingType | TEnumAsByte < ELandscapeMaterialBakingType :: Type > |  |
| MaterialFlattenSize | int32 |  |
| FlattenBorderSize | int32 |  |

## Functions

### ChangebUseScreenSizeLOD

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbUseScreenSizeLOD | bool |  |

**Return:** void  

### ChangeLODDistanceFactor

Change the Level of Detail distance factor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InLODDistanceFactor | float |  |

**Return:** void  

### ChangeLOD0DistributionSettingConsoleVariable

**Return:** void 

### ChangeLODDistributionSettingConsoleVariable

**Return:** void 

### EditorApplySpline

Deform landscape using a given spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSplineComponent | USplineComponent *  |  |
| StartWidth | float  | - Width of the spline at the start node, in Spline Component local space |
| EndWidth | float  |  - Width of the spline at the end node, in Spline Component local space |
| StartSideFalloff | float  | - Width of the falloff at either side of the spline at the start node, in Spline Component local space |
| EndSideFalloff | float  | - Width of the falloff at either side of the spline at the end node, in Spline Component local space |
| StartRoll | float  | - Roll applied to the spline at the start node, in degrees. 0 is flat |
| EndRoll | float  | - Roll applied to the spline at the end node, in degrees. 0 is flat |
| NumSubdivisions | int32  | - Number of triangles to place along the spline when applying it to the landscape. Higher numbers give better results, but setting it too high will be slow and may cause artifacts |
| bRaiseHeights | bool  | - Allow the landscape to be raised up to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed |
| bLowerHeights | bool  | - Allow the landscape to be lowered down to the level of the spline. If both bRaiseHeights and bLowerHeights are false, no height modification of the landscape will be performed |
| PaintLayer | ULandscapeLayerInfoObject * | - LayerInfo to paint, or none to skip painting. The landscape must be configured with the same layer info in one of its layers or this will do nothing! |

**Return:** void  

### BakeLandscape

UFUNCTION(BlueprintNativeEvent, BlueprintNativeEvent, CallInEditor, Category = "Improve LOD")

**Return:** void 

### DebugViewLandscapeCollision

**Return:** void 

### FixPCOnlyWeightmapData

**Return:** LANDSCAPE_API void 

### FixPCOnlyWeightmap

**Return:** LANDSCAPE_API void 

### ChangeShowWeightmap

**Return:** LANDSCAPE_API void