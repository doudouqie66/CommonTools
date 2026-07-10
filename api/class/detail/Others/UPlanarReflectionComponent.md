---
title: UPlanarReflectionComponent
language: cpp
---

# UPlanarReflectionComponent

UPlanarReflectionComponent

> Inheritance: USceneCaptureComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| PreviewBox | UBoxComponent * |  |
| NormalDistortionStrength | float | Controls the strength of normals when distorting the planar reflection. |
| PrefilterRoughnessY | float | The vertical roughness value to prefilter the planar reflection texture with, us |
| PrefilterRoughnessDistanceY | float | The vertical distance at which the prefilter roughness value will be achieved. |
| ScreenPercentage | int32 | Downsample percent, can be used to reduce GPU time rendering the planar reflecti |
| ExtraFOV | float | Additional FOV used when rendering to the reflection texture.   	  This is usefu |
| DistanceFromPlaneFadeStart_DEPRECATED | float |  |
| DistanceFromPlaneFadeEnd_DEPRECATED | float |  |
| DistanceFromPlaneFadeoutStart | float | Receiving pixels at this distance from the reflection plane will begin to fade o |
| DistanceFromPlaneFadeoutEnd | float | Receiving pixels at this distance from the reflection plane will have completely |
| AngleFromPlaneFadeStart | float | Receiving pixels whose normal is at this angle from the reflection plane will be |
| AngleFromPlaneFadeEnd | float | Receiving pixels whose normal is at this angle from the reflection plane will ha |
| bRenderSceneTwoSided | bool | Whether to render the scene as two-sided, which can be useful to hide artifacts  |
| bBlurHorizontal | bool | Whether to blur along horizontal direction |
| PrefilterRoughnessX | float | The horizontal roughness value to prefilter the planar reflection texture with,  |
| PrefilterRoughnessDistanceX | float | The horizontal distance at which the prefilter roughness value will be achieved. |
| PrefilterRoughnessLowerBound | float | The Roughness Threshold For Prefilter |
| ScreenSizeCullScale | float | The ScreenSize Cull Scale |
| FrustumOptim | bool | Frustum Cull Range Optimization |
| NoReflectionShadow | bool | Do Not Render Shadow for PlanarRefelction |
| FrameBufferCache | bool | Enable FrameBuffer Cache Or Not |