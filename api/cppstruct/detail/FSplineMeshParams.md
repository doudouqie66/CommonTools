---
title: FSplineMeshParams
---

# FSplineMeshParams

Structure that holds info about spline, passed to renderer to deform UStaticMesh.
  Also used by Lightmass, so be sure to update Lightmass::FSplineMeshParams and the static lighting code if this changes!

## Variables

| Name | Type | Description |
|------|------|-------------|
| StartPos | FVector | Start location of spline, in component space. |
| StartTangent | FVector | Start tangent of spline, in component space. |
| StartScale | FVector2D | X and Y scale applied to mesh at start of spline. |
| StartRoll | float | Roll around spline applied at start |
| StartOffset | FVector2D | Starting offset of the mesh from the spline, in component space. |
| EndPos | FVector | End location of spline, in component space. |
| EndTangent | FVector | End tangent of spline, in component space. |
| EndScale | FVector2D | X and Y scale applied to mesh at end of spline. |
| EndRoll | float | Roll around spline applied at end. |
| EndOffset | FVector2D | Ending offset of the mesh from the spline, in component space. |