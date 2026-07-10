---
title: ULandscapeSplineSegment
language: cpp
---

# ULandscapeSplineSegment

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Connections | FLandscapeSplineSegmentConnection |  |
| SplineInfo | FInterpCurveVector | Actual data for spline. |
| Points | TArray < FLandscapeSplineInterpPoint > | Spline points |
| Bounds | FBox | Bounds of points |
| LocalMeshComponents | TArray < USplineMeshComponent * > | Spline meshes |
| LayerName | FName | Name of blend layer to paint when applying spline to landscape 	  If "none", no  |
| bRaiseTerrain | uint32 | If the spline is above the terrain, whether to raise the terrain up to the level |
| bLowerTerrain | uint32 | If the spline is below the terrain, whether to lower the terrain down to the lev |
| SplineMeshes | TArray < FLandscapeSplineMeshEntry > | Spline meshes from this list are used in random order along the spline. |
| bEnableCollision | uint32 | Whether to generate collision for the Spline Meshes. |
| bCastShadow | uint32 | Whether the Spline Meshes should cast a shadow. |
| RandomSeed | int32 | Random seed used for choosing which order to use spline meshes. Ignored if only  |
| LDMaxDrawDistance | float | Max draw distance for all the mesh pieces used in this spline |
| TranslucencySortPriority | int32 | Translucent objects with a lower sort priority draw behind objects with a higher |
| bPlaceSplineMeshesInStreamingLevels | uint32 | Whether spline meshes should be placed in landscape proxy streaming levels (true |
| bSelected | uint32 |  |
| bNavDirty | uint32 |  |
| ForeignWorlds | TArray < TSoftObjectPtr < UWorld > > | World references for mesh components stored in other streaming levels |
| ModificationKey | FGuid | Key for tracking whether this segment has been modified relative to the mesh com |