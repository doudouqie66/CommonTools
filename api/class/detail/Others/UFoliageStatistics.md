---
title: UFoliageStatistics
language: cpp
---

# UFoliageStatistics

> Inheritance: UBlueprintFunctionLibrary

## Functions

### FoliageOverlappingSphereCount

Counts how many foliage instances overlap a given sphere
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| StaticMesh | UStaticMesh *  |  |
| CenterPosition | FVector  | The center position of the sphere |
| Radius | float |  The radius of the sphere. |

**Return:** int32  

### FoliageOverlappingBoxCount

Gets the number of instances overlapping a provided box

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| StaticMesh | UStaticMesh *  | Mesh to count |
| Box | FBox | Box to overlap |

**Return:** int32