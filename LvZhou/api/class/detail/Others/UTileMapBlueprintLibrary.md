---
title: UTileMapBlueprintLibrary
language: cpp
---

# UTileMapBlueprintLibrary

A collection of utility methods for working with tile map components
 
  @see UPaperTileMap, UPaperTileMapComponent

> Inheritance: UBlueprintFunctionLibrary

## Functions

### GetTileUserData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tile | FPaperTileInfo |  |

**Return:** FName  

### GetTileTransform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tile | FPaperTileInfo |  |

**Return:** FTransform  

### BreakTile

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tile | FPaperTileInfo  |  |
| TileIndex | int32 &  |  |
| TileSet | UPaperTileSet * &  |  |
| bFlipH | bool &  |  |
| bFlipV | bool &  |  |
| bFlipD | bool & |  |

**Return:** void  

### MakeTile

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TileIndex | int32  |  |
| TileSet | UPaperTileSet *  |  |
| bFlipH | bool  |  |
| bFlipV | bool  |  |
| bFlipD | bool |  |

**Return:** FPaperTileInfo