---
title: UEnvQueryGenerator_PathingGrid
language: cpp
---

# UEnvQueryGenerator_PathingGrid

Navigation grid, generates points on navmesh
   with paths tofrom context no further than given limit

> Inheritance: UEnvQueryGenerator_SimpleGrid

## Variables

| Name | Type | Description |
|------|------|-------------|
| PathToItem | FAIDataProviderBoolValue | pathfinding direction |
| NavigationFilter | TSubclassOf < UNavigationQueryFilter > | navigation filter to use in pathfinding |
| ScanRangeMultiplier | FAIDataProviderFloatValue | multiplier for max distance between point and context |