---
title: UNavLocalGridManager
language: cpp
---

# UNavLocalGridManager

Manager for local navigation grids
  
   Builds non overlapping grid from multiple sources, that can be used later for pathfinding.
   Check also: UGridPathFollowingComponent, FNavLocalGridData

> Inheritance: UObject

## Functions

### SetLocalNavigationGridDensity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| CellSize | float |  |

**Return:** bool  

### AddLocalNavigationGridForPoint

creates new grid data for single point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Location | FVector &  |  |
| Radius2D | int32  |  |
| Height | float  |  |
| bRebuildGrids | bool |  |

**Return:** int32  

### AddLocalNavigationGridForPoints

creates single grid data for set of points

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Locations | TArray < FVector > &  |  |
| Radius2D | int32  |  |
| Height | float  |  |
| bRebuildGrids | bool |  |

**Return:** int32  

### AddLocalNavigationGridForBox

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Location | FVector &  |  |
| Extent | FVector  |  |
| Rotation | FRotator  |  |
| Radius2D | int32  |  |
| Height | float  |  |
| bRebuildGrids | bool |  |

**Return:** int32  

### AddLocalNavigationGridForCapsule

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Location | FVector &  |  |
| CapsuleRadius | float  |  |
| CapsuleHalfHeight | float  |  |
| Radius2D | int32  |  |
| Height | float  |  |
| bRebuildGrids | bool |  |

**Return:** int32  

### RemoveLocalNavigationGrid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| GridId | int32  |  |
| bRebuildGrids | bool |  |

**Return:** void  

### FindLocalNavigationGridPath

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Start | FVector &  |  |
| End | FVector &  |  |
| PathPoints | TArray < FVector > & |  |

**Return:** bool