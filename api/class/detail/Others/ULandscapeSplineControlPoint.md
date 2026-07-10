---
title: ULandscapeSplineControlPoint
language: cpp
---

# ULandscapeSplineControlPoint

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Location | FVector | Location in Landscape-space |
| Rotation | FRotator | Rotation of tangent vector at this point (in landscape-space) |
| Width | float | Width of the spline at this point. |
| SideFalloff | float | Falloff at the sides of the spline at this point. |
| EndFalloff | float | Falloff at the startend of the spline (if this point is a start or end point, ot |
| ConnectedSegments | TArray < FLandscapeSplineConnection > |  |
| Points | TArray < FLandscapeSplineInterpPoint > | Spline points |
| Bounds | FBox | Bounds of points |
| LocalMeshComponent | UControlPointMeshComponent * | Control point mesh |
| SegmentMeshOffset | float | Vertical offset of the spline segment mesh. Useful for a river's surface, among  |
| LayerName | FName | Name of blend layer to paint when applying spline to landscape 	  If "none", no  |
| bRaiseTerrain | uint32 | If the spline is above the terrain, whether to raise the terrain up to the level |
| bLowerTerrain | uint32 | If the spline is below the terrain, whether to lower the terrain down to the lev |
| Mesh | UStaticMesh * | Mesh to use on the control point |
| MaterialOverrides | TArray < UMaterialInterface * > | Overrides mesh's materials |
| MeshScale | FVector | Scale of the control point mesh |
| bEnableCollision | uint32 | Whether to enable collision for the Control Point Mesh. |
| bCastShadow | uint32 | Whether the Control Point Mesh should cast a shadow. |
| LDMaxDrawDistance | float | Max draw distance for the mesh used on this control point |
| TranslucencySortPriority | int32 | Translucent objects with a lower sort priority draw behind objects with a higher |
| bPlaceSplineMeshesInStreamingLevels | uint32 | Whether control point mesh should be placed in landscape proxy streaming level ( |
| bSelected | uint32 |  |
| bNavDirty | uint32 |  |
| ForeignWorld | TSoftObjectPtr < UWorld > | World reference for if mesh component is stored in another streaming level |
| ModificationKey | FGuid | Key for tracking whether this segment has been modified relative to the mesh com |