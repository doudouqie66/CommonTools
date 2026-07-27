---
title: FLayerBlendInput
---

# FLayerBlendInput

## Variables

| Name | Type | Description |
|------|------|-------------|
| LayerName | FName |  |
| BlendType | TEnumAsByte < ELandscapeLayerBlendType > |  |
| LayerInput | FExpressionInput |  |
| HeightInput | FExpressionInput |  |
| PreviewWeight | float |  |
| ConstLayerInput | FVector | only used if LayerInput is not hooked up |
| ConstHeightInput | float | only used if HeightInput is not hooked up |