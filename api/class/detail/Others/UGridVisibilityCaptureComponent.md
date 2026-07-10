---
title: UGridVisibilityCaptureComponent
language: cpp
---

# UGridVisibilityCaptureComponent

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| FOVAngle | float | Camera field of view (in degrees). |
| CaptureViewSize | FIntPoint |  |
| NearClipPlane | float |  |
| GridMesh | UStaticMesh * |  |
| GridMeshSizeScale | FVector |  |
| GridMeshLocationOffset | FVector |  |
| bForceLowestLOD | uint32 |  |
| bHiddenFoliage | uint32 |  |
| OcclusionDepthDiffThreshold | float |  |
| bShouldRenderGridMeshInMainPass | uint32 |  |
| MaxNumProcessWaitingResultCmdsPerFrame | int32 |  |
| MaxNumProcessWaitingCalculateCmdsPerFrame | int32 |  |
| GridSize | FIntPoint |  |
| RenderTargetToCreateRenderer | UTextureRenderTarget2D * |  |
| GridMeshComp | UInstancedStaticMeshComponent * |  |

## Functions

### InitGridIDVisibilityCalculation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InGridLocations | TArray < FVector > & |  |

**Return:** void  

### CalculateGridIDVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GridID | int32  |  |
| CameraLocations | TArray < FGridVisibilityCameraInfo > &  |  |
| PotentialGrids | TArray < int32 > & |  |

**Return:** void  

### FinishGridIDVisibilityCalculation

**Return:** void