---
title: UMaterialExpressionSceneTexture
language: cpp
---

# UMaterialExpressionSceneTexture

> Inheritance: UMaterialExpression

## Variables

| Name | Type | Description |
|------|------|-------------|
| Coordinates | FExpressionInput | UV in 0..1 range |
| SceneTextureId | TEnumAsByte < ESceneTextureId > | Which scene texture (screen aligned texture) we want to make a lookup into |
| bClampUVs | bool | Clamps texture coordinates to the range 0 to 1. Incurs a performance cost. |
| bFiltered | bool | Whether to use point sampled texture lookup (default) or using [bi-linear] filte |