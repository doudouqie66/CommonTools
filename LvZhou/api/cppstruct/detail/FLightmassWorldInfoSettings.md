---
title: FLightmassWorldInfoSettings
---

# FLightmassWorldInfoSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| StaticLightingLevelScale | float | Warning: Setting this to less than 1 will greatly increase build times! 	  Scale |
| NumIndirectLightingBounces | int32 | Number of light bounces to simulate for point  spot  directional lights, startin |
| NumSkyLightingBounces | int32 | Number of skylight and emissive bounces to simulate. 	  Lightmass uses a non-dis |
| IndirectLightingQuality | float | Warning: Setting this higher than 1 will greatly increase build times! 	  Can be |
| IndirectLightingSmoothness | float | Smoothness factor to apply to indirect lighting.  This is useful in some lightin |
| EnvironmentColor | FColor | Represents a constant color light surrounding the upper hemisphere of the level, |
| EnvironmentIntensity | float | Scales EnvironmentColor to allow independent color and brightness controls. |
| EmissiveBoost | float | Scales the emissive contribution of all materials in the scene.  Currently disab |
| DiffuseBoost | float | Scales the diffuse contribution of all materials in the scene. |
| VolumeLightingMethod | TEnumAsByte < enum EVolumeLightingMethod > | Technique to use for providing precomputed lighting at all positions inside the  |
| VolumetricLightmapDetailCellSize | float | Size of an Volumetric Lightmap voxel at the highest density (used around geometr |
| VolumetricLightmapMaximumBrickMemoryMb | float | Maximum amount of memory to spend on Volumetric Lightmap Brick data.  High densi |
| VolumeLightSamplePlacementScale | float | Scales the distances at which volume lighting samples are placed.  Volume lighti |
| bUseVolumeLightmapStreaming | uint32 |  |
| bUseAmbientOcclusion | uint32 | If true, AmbientOcclusion will be enabled. |
| bGenerateAmbientOcclusionMaterialMask | uint32 | Whether to generate textures storing the AO computed by Lightmass. 	  These can  |
| DirectIlluminationOcclusionFraction | float | How much of the AO to apply to direct lighting. |
| IndirectIlluminationOcclusionFraction | float | How much of the AO to apply to indirect lighting. |
| OcclusionExponent | float | Higher exponents increase contrast. |
| FullyOccludedSamplesFraction | float | Fraction of samples taken that must be occluded in order to reach full occlusion |
| MaxOcclusionDistance | float | Maximum distance for an object to cause occlusion on another object. |
| bVisualizeMaterialDiffuse | uint32 | If true, override normal direct and indirect lighting with just the exported dif |
| bVisualizeAmbientOcclusion | uint32 | If true, override normal direct and indirect lighting with just the AO term. |
| bCompressLightmaps | uint32 | Whether to compress lightmap textures.  Disabling lightmap texture compression w |
| bUseSimpleLightmap | uint32 | Whether to use simple lightmap on the mobile platform. |
| LightmapResolutionScale | float |  |