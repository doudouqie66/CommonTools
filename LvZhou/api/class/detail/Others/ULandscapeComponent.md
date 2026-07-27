---
title: ULandscapeComponent
language: cpp
---

# ULandscapeComponent

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SectionBaseX | int32 | X offset from global components grid origin (in quads) |
| SectionBaseY | int32 | Y offset from global components grid origin (in quads) |
| ComponentSizeQuads | int32 | Total number of quads for this component, has to be >0 |
| SubsectionSizeQuads | int32 | Number of quads for a subsection of the component. SubsectionSizeQuads+1 must be |
| NumSubsections | int32 | Number of subsections in X or Y axis |
| OverrideMaterial | UMaterialInterface * |  |
| OverrideHoleMaterial | UMaterialInterface * |  |
| OverrideMaterial_ForPC | UMaterialInterface * |  |
| OverrideHoleMaterial_ForPC | UMaterialInterface * |  |
| bShouldSerializationGrassWeightDataForPC | bool |  |
| OverrideOtherMaterials | TMap < FName , UMaterialInterface * > |  |
| OverridePhyxMaterial | FOverridePhyxMaterial |  |
| bOverrideGrassTypes | uint8 |  |
| GrassTypes | TArray < ULandscapeGrassType * > |  |
| bOverrideGrassTypes_ForPC | uint8 |  |
| GrassTypes_ForPC | TArray < ULandscapeGrassType * > |  |
| MaterialInstances | TArray < UMaterialInstanceConstant * > |  |
| OtherMaterialInstances | TMap < FName , UMaterialInstanceConstant * > |  |
| WeightmapLayerAllocations | TArray < FWeightmapLayerAllocationInfo > | List of layers, and the weightmap and channel they are stored |
| WeightmapTextures | TArray < UTexture2D * > | Weightmap texture reference |
| MaterialInstances_ForPC | TArray < UMaterialInstanceConstant * > |  |
| WeightmapTextures_ForPC | TArray < UTexture2D * > | Weightmap texture reference |
| VisibilityLayerChannel | int32 | Visibility layer channel in weightmap |
| XYOffsetmapTexture | UTexture2D * | XYOffsetmap texture reference |
| WeightmapScaleBias | FVector4 | UV offset to component's weightmap data from component local coordinates |
| WeightmapSubsectionOffset | float | U or V offset into the weightmap for the first subsection, in texture UV space |
| HeightmapScaleBias | FVector4 | UV offset to Heightmap data from component local coordinates |
| HeightmapTexture | UTexture2D * | Heightmap texture reference |
| MultiVisibilityTextureData | TMap < FString , FVisibilityData > |  |
| VisibleVisibilityLayer | FString |  |
| CachedLocalBox | FBox | Cached local-space bounding box, created at heightmap update time |
| CollisionComponent | TLazyObjectPtr < ULandscapeHeightfieldCollisionComponent > | Reference to associated collision component |
| MapBuildDataId | FGuid | Uniquely identifies this component's built map data. |
| IrrelevantLights_DEPRECATED | TArray < FGuid > | Legacy irrelevant lights |
| CollisionMipLevel | int32 | Heightfield mipmap used to generate collision |
| SimpleCollisionMipLevel | int32 | Heightfield mipmap used to generate simple collision |
| NegativeZBoundsExtension | float | Allows overriding the landscape bounds. This is useful if you distort the landsc |
| PositiveZBoundsExtension | float | Allows overriding the landscape bounds. This is useful if you distort the landsc |
| StaticLightingResolution | float | StaticLightingResolution overriding per component, default value 0 means no over |
| ForcedLOD | int32 | Forced LOD level to use when rendering |
| LODBias | int32 | LOD level Bias to use when rendering |
| MobileVertexHoleMaxLOD | int32 | The max lod level that allow landscape component to use vertex hole. If the lod  |
| LODDeltaVertex | TArray < float > | Subsection's Delta Vertex for fixing LOD level |
| MaxDeltaVertex | float |  |
| StateId | FGuid |  |
| BakedTextureMaterialGuid | FGuid | The Material Guid that used when baking, to detect material recompilations |
| GIBakedBaseColorTexture | UTexture2D * | Pre-baked Base Color texture for use by distance field GI |
| FSOCOccluder | UFlakeOccluder * |  |
| MobileBlendableLayerMask | uint8 | For ES2 |
| MobileMaterialInterface | UMaterialInterface * | Material interface used for ES2. Serialized only when cooking or loading cooked  |
| OtherMobileMaterialInterfaces | TMap < FName , UMaterialInterface * > |  |
| MobileWeightmapTextures | TArray < UTexture2D * > | Generated weightnormal map texture used for ES2. Serialized only when cooking or |
| MobileWeightNormalmapTexture | UTexture2D * |  |
| bMobileMultiLayers | uint32 |  |
| CachedHeightData | TArray < uint16 > |  |
| CachedHaltonBaseIndex | TArray < bool > |  |
| CachedAddHaltonBaseIndexList | TArray < int32 > |  |
| bHasROCData | bool | Has ROCData？ |
| DeformHeightmap | UTexture2D * |  |
| UsedOtherMaterialName | FName |  |
| MaterialInstance_DEPRECATED | UMaterialInstanceConstant * |  |
| MultiHeightmapTexture | TMap < FString , UTexture2D * > |  |
| TempHeightmapTexture | UTexture2D * |  |
| LightingGuid | FGuid | Unique ID for this component, used for caching during distributed lighting |
| LightingLODBias | int32 | LOD level Bias to use when lighting buidling via lightmass, -1 Means automatic L |
| LayerWhitelist | TArray < ULandscapeLayerInfoObject * > |  |
| EditToolRenderData | FLandscapeEditToolRenderData | Pointer to data shared with the render thread, used by the editor tools |
| MobileDataSourceHash | FGuid | Hash of source for ES2 generated data. Used for mobile preview and cook-in-edito |
| OccluderMesh | UStaticMesh * | Specifies the custom occluder mesh for software occlusion |
| bUseFSOCOccluder | bool |  |