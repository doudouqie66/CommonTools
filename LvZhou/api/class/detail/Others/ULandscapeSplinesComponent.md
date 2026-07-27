---
title: ULandscapeSplinesComponent
language: cpp
---

# ULandscapeSplinesComponent

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ControlPoints | TArray < ULandscapeSplineControlPoint * > |  |
| Segments | TArray < ULandscapeSplineSegment * > |  |
| CookedForeignMeshComponents | TArray < UMeshComponent * > |  |
| SplineResolution | float | Resolution of the spline, in distance per point |
| SplineColor | FColor | Color to use to draw the splines |
| ControlPointSprite | UTexture2D * | Sprite used to draw control points |
| SplineEditorMesh | UStaticMesh * | Mesh used to draw splines that have no mesh |
| bShowSplineEditorMesh | uint32 | Whether we are in-editor and showing spline editor meshes |
| ForeignWorldSplineDataMap | TMap < TSoftObjectPtr < UWorld > , FForeignWorldSplineData > |  |