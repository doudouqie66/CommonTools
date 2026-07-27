---
title: UHierarchicalInstancedStaticMeshComponent
language: cpp
---

# UHierarchicalInstancedStaticMeshComponent

> Inheritance: UInstancedStaticMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SortedInstances | TArray < int32 > |  |
| NumBuiltInstances | int32 |  |
| BuiltInstanceBounds | FBox |  |
| UnbuiltInstanceBounds | FBox |  |
| UnbuiltInstanceBoundsList | TArray < FBox > |  |
| UnbuiltInstanceIndexList | TArray < int32 > |  |
| bEnableDensityScaling | uint32 |  |
| OcclusionLayerNumNodes | int32 |  |
| CacheMeshExtendedBounds | FBoxSphereBounds |  |
| bDisableCollision | bool |  |
| MinInstancesToSplitNode | int32 | Culling by Num |
| OptimiMinInstancesToSplitNode | int32 | Culling by Num For Optimization FClusterTree |
| IsOpenTreeOptimi | bool | Mark Use OptimiMinInstancesToSplitNode With FClusterTree |
| bEnableScaleOpt | bool |  |
| AverageScale | FVector |  |

## Functions

### RemoveInstances

Removes all the instances with indices specified in the InstancesToRemove array. Returns true on success.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstancesToRemove | TArray < int32 > & |  |

**Return:** bool