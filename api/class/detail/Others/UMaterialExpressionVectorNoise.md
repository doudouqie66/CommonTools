---
title: UMaterialExpressionVectorNoise
language: cpp
---

# UMaterialExpressionVectorNoise

> Inheritance: UMaterialExpression

## Variables

| Name | Type | Description |
|------|------|-------------|
| Position | FExpressionInput | 2 to 3 dimensional vector |
| NoiseFunction | TEnumAsByte < enum EVectorNoiseFunction > | Noise function, affects performance and look |
| Quality | int32 | For noise functions where applicable, lower numbers are faster and lower quality |
| bTiling | uint32 | Whether tile the noise pattern, useful for baking to seam-free repeating texture |
| TileSize | uint32 | How many units in each tile (if Tiling is on)  	   For Perlin noise functions, T |