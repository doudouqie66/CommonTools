---
title: FSkeletalMeshOptimizationSettings
---

# FSkeletalMeshOptimizationSettings

FSkeletalMeshOptimizationSettings - The settings used to optimize a skeletal mesh LOD.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ReductionMethod | TEnumAsByte < enum SkeletalMeshOptimizationType > | The method to use when optimizing the skeletal mesh LOD |
| NumOfTrianglesPercentage | float | If ReductionMethod equals SMOT_NumOfTriangles this value is the ratio of triangl |
| MaxDeviationPercentage | float | If ReductionMethod equals SMOT_MaxDeviation this value is the maximum deviation  |
| ScreenSize | int32 | If ReductionMethod equals SMOT_ScreenSize this value is the screen size in pixel |
| WeldingThreshold | float | The welding threshold distance. Vertices under this distance will be welded. |
| bRecalcNormals | bool | Whether Normal smoothing groups should be preserved. If false then NormalsThresh |
| NormalsThreshold | float | If the angle between two triangles are above this value, the normals will not be |
| SilhouetteImportance | TEnumAsByte < enum SkeletalMeshOptimizationImportance > | How important the shape of the geometry is. |
| TextureImportance | TEnumAsByte < enum SkeletalMeshOptimizationImportance > | How important texture density is. |
| ShadingImportance | TEnumAsByte < enum SkeletalMeshOptimizationImportance > | How important shading quality is. |
| SkinningImportance | TEnumAsByte < enum SkeletalMeshOptimizationImportance > | How important skinning quality is. |
| BoneReductionRatio | float | The ratio of bones that will be removed from the mesh |
| MaxBonesPerVertex | int32 | Maximum number of bones that can be assigned to each vertex. |
| bTransferMorphTarget | bool | Specify if morph targets should be transfered to the LOD or not |
| BonesToRemove_DEPRECATED | TArray < FBoneReference > |  |
| BaseLOD | int32 | Index to which LOD model you want as source when generating the LOD |
| LODChainLastIndex | int32 |  |
| bUseVertexWeights | bool | Vertex colors are converted to weights. The weights are used 	- Red: Vertices wi |
| bUseVertexWeightsForMaterial | bool |  |
| bSimplifyMaterials | bool | Specify if material should be baked or not. |
| MaterialLODSettings_DEPRECATED | FSimplygonMaterialLODSettings |  |
| MaterialSettings | FMaterialProxySettings |  |
| bForceRebuild | bool | This is a transient property used to pass "force build" option from UI to FLODUt |
| BakePose_DEPRECATED | UAnimSequence * |  |