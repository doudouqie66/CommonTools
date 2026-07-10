---
title: UMaterialBillboardComponent
language: cpp
---

# UMaterialBillboardComponent

A 2d material that will be rendered always facing the camera.

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Elements | TArray < FMaterialSpriteElement > | Current array of material billboard elements |

## Functions

### SetElements

Set all elements of this material billboard component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewElements | TArray < FMaterialSpriteElement > & |  |

**Return:** void  

### AddElement

Adds an element to the sprite.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface *  |  |
| DistanceToOpacityCurve | UCurveFloat *  |  |
| bSizeIsInScreenSpace | bool  |  |
| BaseSizeX | float  |  |
| BaseSizeY | float  |  |
| DistanceToSizeCurve | UCurveFloat * |  |

**Return:** void