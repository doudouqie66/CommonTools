---
title: UPaperTileSet
language: cpp
---

# UPaperTileSet

A tile set is a collection of tiles pulled from a texture that can be used to fill out a tile map.
 
  @see UPaperTileMap, UPaperTileMapComponent

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| TileSize | FIntPoint |  |
| TileSheet | UTexture2D * |  |
| AdditionalSourceTextures | TArray < UTexture * > |  |
| BorderMargin | FIntMargin |  |
| PerTileSpacing | FIntPoint |  |
| DrawingOffset | FIntPoint |  |
| WidthInTiles | int32 |  |
| HeightInTiles | int32 |  |
| AllocatedWidth | int32 |  |
| AllocatedHeight | int32 |  |
| PerTileData | TArray < FPaperTileMetadata > |  |
| Terrains | TArray < FPaperTileSetTerrain > |  |
| TileWidth_DEPRECATED | int32 |  |
| TileHeight_DEPRECATED | int32 |  |
| Margin_DEPRECATED | int32 |  |
| Spacing_DEPRECATED | int32 |  |
| BackgroundColor | FLinearColor | The background color displayed in the tile set viewer |