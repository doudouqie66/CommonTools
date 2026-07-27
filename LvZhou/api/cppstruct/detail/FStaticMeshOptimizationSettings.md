---
title: FStaticMeshOptimizationSettings
---

# FStaticMeshOptimizationSettings

Old optimization settings.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ReductionMethod | TEnumAsByte < enum EOptimizationType > | The method to use when optimizing the skeletal mesh LOD |
| NumOfTrianglesPercentage | float | If ReductionMethod equals SMOT_NumOfTriangles this value is the ratio of triangl |
| MaxDeviationPercentage | float | If ReductionMethod equals SMOT_MaxDeviation this value is the maximum deviation  |
| WeldingThreshold | float | The welding threshold distance. Vertices under this distance will be welded. |
| bRecalcNormals | bool | Whether Normal smoothing groups should be preserved. If false then NormalsThresh |
| NormalsThreshold | float | If the angle between two triangles are above this value, the normals will not be |
| SilhouetteImportance | uint8 | How important the shape of the geometry is (EImportanceLevel). |
| TextureImportance | uint8 | How important texture density is (EImportanceLevel). |
| ShadingImportance | uint8 | How important shading quality is. |