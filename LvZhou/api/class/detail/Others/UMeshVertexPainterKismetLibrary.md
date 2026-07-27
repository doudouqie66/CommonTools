---
title: UMeshVertexPainterKismetLibrary
language: cpp
---

# UMeshVertexPainterKismetLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### PaintVerticesSingleColor

Paints vertex colors on a mesh component in a specified color.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StaticMeshComponent | UStaticMeshComponent *  |  |
| FillColor | FLinearColor &  |  |
| bConvertToSRGB | bool |  |

**Return:** void  

### PaintVerticesLerpAlongAxis

Paints vertex colors on a mesh component lerping from the start to the end color along the specified axis.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StaticMeshComponent | UStaticMeshComponent *  |  |
| StartColor | FLinearColor &  |  |
| EndColor | FLinearColor &  |  |
| Axis | EVertexPaintAxis  |  |
| bConvertToSRGB | bool |  |

**Return:** void  

### RemovePaintedVertices

Removes vertex colors on a mesh component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StaticMeshComponent | UStaticMeshComponent * |  |

**Return:** void