---
title: UMaterialExpressionSphereMask
language: cpp
---

# UMaterialExpressionSphereMask

> Inheritance: UMaterialExpression

## Variables

| Name | Type | Description |
|------|------|-------------|
| A | FExpressionInput | 1 to 4 dimensional vector, should be the same type as B |
| B | FExpressionInput | 1 to 4 dimensional vector, should be the same type as A |
| Radius | FExpressionInput | in the units that A and B are measured, if not hooked up the internal constant i |
| Hardness | FExpressionInput | 0..1 for the range of 0\% to 100\%, if not hooked up the internal constant is us |
| AttenuationRadius | float | in the unit that A and B are measured |
| HardnessPercent | float | in percent 0%=soft .. 100%=hard |