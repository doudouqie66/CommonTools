---
title: FSurfelRayTracingSettings
---

# FSurfelRayTracingSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAllowSurfelRayTracing | uint32 | Whether to allow surfel ray tracing for ray traced dynamic indirect lighting and |
| SurfelVoxelSize | FVector | The size in unreal unit of a voxel. |
| SurfelHierarchyDimension | FIntVector | The size of the dimension of Surfel Bricks. Each brick contain 4x4x4 voxels. |
| IrradianceVolumeCellSize | FVector | The cell world size of the dimension of Surfel Irradiance Volume. |
| IrradianceVolumeDimension | FIntVector | The size of the dimension of Surfel Irradiance Volume. |
| IrradianceVolumeMipLevels | uint32 | The number of mip levels of Surfel Irradiance Volume. |
| IrradianceMipScale | FVector4 | The brick world size scale of each mip levels of Surfel Irradiance Volume. |
| IrradianceVolumeOffset | FVector | The position offset of Surfel Irradiance Volume. |
| IrradianceVolumeCellDim | int32 | The number of positions where a probe can be in the Irradiance Volume Cell. Valu |
| SurfelInjectSingleSize | int32 | The size n of inject single mesh to Hierarchical Surfel of Surfel Bricks. Each b |
| SurfelInjectSingleDistance | float | The distance within which a primitive can be inject into the surfel. |
| SurfelPoolInitScale | int32 | The init size of the sparse surfel pool. Default 1x is 16 MB. Turn larger the po |
| bSupportEmissive | uint32 | Whether emissive object should affect GI |
| bSupportTOD | uint32 | Whether GI should support time of day, turning this off will cause significant d |