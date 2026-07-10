---
title: UPixelProjectedReflectionComponent
language: cpp
---

# UPixelProjectedReflectionComponent

UPixelProjectedReflectionComponent

> Inheritance: USceneCaptureComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| PreviewBox | UBoxComponent * |  |
| NormalDistortionStrength | float | Controls the strength of normals when distorting the planar reflection. |
| SkyDistanceFadeoutStart | float | Receiving pixels at this distance from the reflection plane will begin to fade o |
| SkyDistanceFadeoutEnd | float | Receiving pixels at this distance from the reflection plane will have completely |
| DistanceFromPlaneFadeStart_DEPRECATED | float |  |
| DistanceFromPlaneFadeEnd_DEPRECATED | float |  |
| DistanceFromPlaneFadeoutStart | float | Receiving pixels at this distance from the reflection plane will begin to fade o |
| DistanceFromPlaneFadeoutEnd | float | Receiving pixels at this distance from the reflection plane will have completely |
| AngleFromPlaneFadeStart | float | Receiving pixels whose normal is at this angle from the reflection plane will be |
| AngleFromPlaneFadeEnd | float | Receiving pixels whose normal is at this angle from the reflection plane will ha |
| HeightAdjustmentVolumes | TArray < APixelProjectedReflectionHeightAdjustmentVolume * > |  |
| VisibilityVolumes | TArray < APixelProjectedReflectionVisibilityVolume * > |  |