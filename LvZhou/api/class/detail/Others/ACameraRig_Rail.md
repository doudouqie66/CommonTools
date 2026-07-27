---
title: ACameraRig_Rail
language: cpp
---

# ACameraRig_Rail

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| CurrentPositionOnRail | float | Defines current position of the mount point along the rail, in terms of normaliz |
| TransformComponent | USceneComponent * | Root component to give the whole actor a transform. |
| RailSplineComponent | USplineComponent * | Spline component to define the rail path. |
| RailCameraMount | USceneComponent * | Component to define the attach point for cameras. Moves along the rail. |
| PreviewMesh_Rail | USplineMeshComponent * | Preview meshes for visualization |
| PreviewRailMeshSegments | TArray < USplineMeshComponent * > |  |
| PreviewRailStaticMesh | UStaticMesh * |  |
| PreviewMesh_Mount | UStaticMeshComponent * |  |