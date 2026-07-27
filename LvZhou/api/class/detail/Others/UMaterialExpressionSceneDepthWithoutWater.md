---
title: UMaterialExpressionSceneDepthWithoutWater
language: cpp
---

# UMaterialExpressionSceneDepthWithoutWater

> Inheritance: UMaterialExpression

## Variables

| Name | Type | Description |
|------|------|-------------|
| InputMode | TEnumAsByte < enum EMaterialSceneAttributeInputMode :: Type > | Coordinates - UV coordinates to apply to the scene depth lookup. 	 OffsetFractio |
| Input | FExpressionInput | Based on the input mode the input will be treated as either: 	 UV coordinates to |
| ConstInput | FVector2D | only used if Input is not hooked up |
| FallbackDepth | float | Depth to fall back to in case the needed texture isn't available on a particular |