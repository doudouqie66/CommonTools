---
title: USphereComponent
language: cpp
---

# USphereComponent

A sphere generally used for simple collision. Bounds are rendered as lines in the editor.

> Inheritance: UShapeComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SphereRadius | float | The radius of the sphere |

## Functions

### SetSphereRadius

Change the sphere radius. This is the unscaled radius, before component scale is applied.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSphereRadius | float  |  |
| bUpdateOverlaps | bool |  |

**Return:** void  

### GetScaledSphereRadius

**Return:** float 

### GetUnscaledSphereRadius

**Return:** float 

### GetShapeScale

**Return:** float