---
title: UProceduralFoliageSpawner
language: cpp
---

# UProceduralFoliageSpawner

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| RandomSeed | int32 | The seed used for generating the randomness of the simulation. |
| TileSize | float | Length of the tile (in cm) along one axis. The total area of the tile will be Ti |
| NumUniqueTiles | int32 | The number of unique tiles to generate. The final simulation is a procedurally d |
| MinimumQuadTreeSize | float | Minimum size of the quad tree used during the simulation. Reduce if too many ins |
| FoliageTypes | TArray < FFoliageTypeObject > | The types of foliage to procedurally spawn. |
| bNeedsSimulation | bool |  |

## Functions

### Simulate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NumSteps | int32 |  |

**Return:** void