---
title: UMaterialExpressionLandscapeBlendTA
language: cpp
---

# UMaterialExpressionLandscapeBlendTA

> Inheritance: UMaterialExpressionTerrainBlendBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| UV | FExpressionInput |  |
| DiffuseTexture | FExpressionInput |  |
| NormalTexture | FExpressionInput |  |
| HeightTexture | FExpressionInput |  |
| RoughnessTexture | FExpressionInput |  |
| Layers | TArray < FTerrainLayerTA > |  |
| ConstCoordinate | uint32 | only used if Coordinates is not hooked up |
| ExpressionGUID | FGuid | GUID that should be unique within the material, this is used for parameter renam |