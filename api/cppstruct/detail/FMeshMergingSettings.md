---
title: FMeshMergingSettings
---

# FMeshMergingSettings

Mesh merging settings

## Variables

| Name | Type | Description |
|------|------|-------------|
| bGenerateLightMapUV | bool | Whether to generate lightmap UVs for a merged mesh |
| TargetLightMapResolution | int32 | Target lightmap resolution |
| bComputedLightMapResolution | bool | Whether or not the lightmap resolution should be computed by summing the lightma |
| bImportVertexColors_DEPRECATED | bool | Whether we should import vertex colors into merged mesh |
| bPivotPointAtZero | bool | Whether merged mesh should have pivot at world origin, or at first merged compon |
| bMergePhysicsData | bool | Whether to merge physics data (collision primitives) |
| bAssignLODGroup | bool |  |
| LODGroupIndex | int32 |  |
| bMergeMaterials | bool | Whether to merge source materials into one flat material, ONLY available when me |
| MaterialSettings | FMaterialProxySettings | Material simplification |
| bBakeVertexDataToMesh | bool | Whether or not vertex data such as vertex colours should be baked into the resul |
| bUseVertexDataForBakingMaterial | bool | Whether or not vertex data such as vertex colours should be used when baking out |
| bUseTextureBinning | bool |  |
| bReuseMeshLightmapUVs | bool | Whether to attempt to re-use the source mesh's lightmap UVs when baking the mate |
| bMergeEquivalentMaterials | bool | Whether to attempt to merge materials that are deemed equivalent. This can cause |
| OutputUVs | EUVOutput | Whether to output the specified UV channels into the merged mesh (only if the so |
| GutterSize | int32 | Whether to output the specified UV channels into the merged mesh (only if the so |
| bCalculateCorrectLODModel_DEPRECATED | bool |  |
| LODSelectionType | EMeshLODSelectionType |  |
| ExportSpecificLOD_DEPRECATED | int32 |  |
| SpecificLOD | int32 |  |
| bUseLandscapeCulling | bool | Whether or not to use available landscape geometry to cull away invisible triang |
| bIncludeImposters | bool |  |
| bAllowDistanceField | bool | Whether to allow distance field to be computed for this mesh. Disable this to sa |
| FilteredMinBoundsRadius | float |  |
| bDisableBorderSmear | bool |  |
| BorderSmearReplaceColor | FLinearColor |  |
| CustomOutputSize | FIntPoint |  |
| bExportNormalMap_DEPRECATED | bool | Whether to export normal maps for material merging |
| bExportMetallicMap_DEPRECATED | bool | Whether to export metallic maps for material merging |
| bExportRoughnessMap_DEPRECATED | bool | Whether to export roughness maps for material merging |
| bExportSpecularMap_DEPRECATED | bool | Whether to export specular maps for material merging |
| MergedMaterialAtlasResolution_DEPRECATED | int32 | Merged material texture atlas resolution |