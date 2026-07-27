---
title: FMeshBuildSettings
---

# FMeshBuildSettings

Settings applied when building a mesh.

## Variables

| Name | Type | Description |
|------|------|-------------|
| bUseMikkTSpace | bool | If true, degenerate triangles will be removed. |
| bRecomputeNormals | bool | If true, normals in the raw mesh are ignored and recomputed. |
| bRecomputeTangents | bool | If true, tangents in the raw mesh are ignored and recomputed. |
| bRemoveDegenerates | bool | If true, degenerate triangles will be removed. |
| bBuildAdjacencyBuffer | bool | Required for PNT tessellation but can be slow. Recommend disabling for larger me |
| bBuildReversedIndexBuffer | bool | Required to optimize mesh in mirrored transform. Double index buffer size. |
| bIgnoreTriangleOrderOptimization | bool |  |
| bUseHighPrecisionTangentBasis | bool | If true, Tangents will be stored at 16 bit vs 8 bit precision. |
| bUseFullPrecisionUVs | bool | If true, UVs will be stored at full floating point precision. |
| bGenerateLightmapUVs | bool |  |
| MinLightmapResolution | int32 |  |
| SrcLightmapIndex | int32 |  |
| DstLightmapIndex | int32 |  |
| BuildScale_DEPRECATED | float |  |
| BuildScale3D | FVector | The local scale applied when building the mesh |
| DistanceFieldResolutionScale | float | Scale to apply to the mesh when allocating the distance field volume texture. 	  |
| bGenerateDistanceFieldAsIfTwoSided | bool | Whether to generate the distance field treating every triangle hit as a front fa |
| DistanceFieldBias_DEPRECATED | float |  |
| DistanceFieldReplacementMesh | UStaticMesh * |  |