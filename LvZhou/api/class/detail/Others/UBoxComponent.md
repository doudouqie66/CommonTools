---
title: UBoxComponent
language: cpp
---

# UBoxComponent

A box generally used for simple collision. Bounds are rendered as lines in the editor.

> Inheritance: UShapeComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoxExtent | FVector | The extents (radii dimensions) of the box |
| LineThickness | float | Used to control the line thickness when rendering |

## Functions

### SetBoxExtent

Change the box extent size. This is the unscaled size, before component scale is applied.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoxExtent | FVector  |  |
| bUpdateOverlaps | bool |  |

**Return:** void  

### GetScaledBoxExtent

**Return:** FVector 

### GetUnscaledBoxExtent

**Return:** FVector