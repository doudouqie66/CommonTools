---
title: FMeshProxySettings
---

# FMeshProxySettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| ScreenSize | int32 | Screen size of the resulting proxy mesh in pixels |
| MaterialSettings | FMaterialProxySettings | Material simplification |
| TextureWidth_DEPRECATED | int32 |  |
| TextureHeight_DEPRECATED | int32 |  |
| bExportNormalMap_DEPRECATED | bool |  |
| bExportMetallicMap_DEPRECATED | bool |  |
| bExportRoughnessMap_DEPRECATED | bool |  |
| bExportSpecularMap_DEPRECATED | bool |  |
| bCalculateCorrectLODModel | bool | Determines whether or not the correct LOD models should be calculated given the  |
| MergeDistance | float | Distance at which meshes should be merged together, this can close gaps like doo |
| HardAngleThreshold | float | Angle at which a hard edge is introduced between faces |
| LightMapResolution | int32 | Lightmap resolution |
| bComputeLightMapResolution | bool | If ticked will compute the lightmap resolution by summing the dimensions for eac |
| bRecalculateNormals | bool | Whether Simplygon should recalculate normals, otherwise the normals channel will |
| bBakeVertexData_DEPRECATED | bool |  |
| bUseLandscapeCulling | bool | Whether or not to use available landscape geometry to cull away invisible triang |
| LandscapeCullingPrecision | TEnumAsByte < ELandscapeCullingPrecision :: Type > | Level of detail of the landscape that should be used for the culling |
| bAssignLODGroup | bool | Choose whether you want to apply LODs to the generated mesh or not. |
| LODGroupIndex | int32 |  |
| bAggregateMeshes | bool |  |
| AggregatorMode | EChartAggregationMode |  |
| bUseCustomHemisphere | bool |  |
| bUseTargetTriangleNumber | bool |  |
| TargetTriangleNumber | int32 |  |
| LODSelectionType | EMeshLODSelectionType |  |
| SpecificLOD | int32 |  |
| bIncludeHISMMesh | bool |  |
| bHalfVoxelSize | bool |  |
| ExpectedQualityLimit | FExpectedQuality | Render quality control for certain devicesplatforms, if limit > actual, primitiv |
| bOverrideVoxelSize | uint8 | If true, Spatial Sampling Distance will not be automatically computed based on g |
| VoxelSize | float | Override when converting multiple meshes for proxy LOD merging. Warning, large g |
| UnresolvedGeometryColor | FColor | Base color assigned to LOD geometry that can't be associated with the source geo |
| bOverrideTransferDistance | bool | Enable an override for material transfer distance |
| MaxRayCastDist | float | Override search distance used when discovering texture values for simplified geo |
| bUseHardAngleThreshold | bool | Enable the use of hard angle based vertex splitting |
| NormalCalculationMethod | TEnumAsByte < EProxyNormalComputationMethod :: Type > | Controls the method used to calculate the normal for the simplified geometry |
| bAllowAdjacency | bool | Whether to allow adjacency buffers for tessellation in the merged mesh |
| bAllowDistanceField | bool | Whether to allow distance field to be computed for this mesh. Disable this to sa |
| bReuseMeshLightmapUVs | bool | Whether to attempt to re-use the source mesh's lightmap UVs when baking the mate |
| bCreateCollision | bool | Whether to generate collision for the merged mesh |
| bAllowVertexColors | bool | Whether to allow vertex colors saved in the merged mesh |
| bGenerateLightmapUVs | bool | Whether to generate lightmap uvs for the merged mesh |