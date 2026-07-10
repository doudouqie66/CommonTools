---
title: UMaterialExpressionSingleLayerWaterMaterialOutput
language: cpp
---

# UMaterialExpressionSingleLayerWaterMaterialOutput

Material output expression for writing single layer water volume material properties.

> Inheritance: UMaterialExpressionCustomOutput

## Variables

| Name | Type | Description |
|------|------|-------------|
| ScatteringCoefficients | FExpressionInput | Input for scattering coefficient describing how light scatter around and is abso |
| AbsorptionCoefficients | FExpressionInput | Input for scattering coefficient describing how light bounce is absorbed. Valid  |
| PhaseG | FExpressionInput | Input for phase function 'g' parameter describing how much forward(g>0) or backw |
| ColorScaleBehindWater | FExpressionInput | Input for custom color multiplier for scene color behind water. Can be used for  |