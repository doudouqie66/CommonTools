---
title: FStaticMeshSourceModel
---

# FStaticMeshSourceModel

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

  Source model from which a renderable static mesh is built.

## Variables

| Name | Type | Description |
|------|------|-------------|
| BuildSettings | FMeshBuildSettings | Settings applied when building the mesh. |
| ReductionSettings | FMeshReductionSettings | Reduction settings to apply when building render data. |
| RemeshingSettings_DEPRECATED | FSimplygonRemeshingSettings |  |
| bHasBeenSimplified | bool |  |
| OptimizationSettings | FGroupedStaticMeshOptimizationSettings |  |
| LODDistance_DEPRECATED | float | Allow per-LOD overriding of lightmap resolution  	UPROPERTY(EditAnywhere, Catego |
| ScreenSize | float | ScreenSize to display this LOD. 	  The screen size is based around the projected |
| SourceImportFilename | FString | The file path that was used to import this LOD. |
| bImportWithBaseMesh | bool | Weather this LOD was imported in the same file as the base mesh. |