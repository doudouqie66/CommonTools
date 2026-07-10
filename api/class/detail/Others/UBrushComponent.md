---
title: UBrushComponent
language: cpp
---

# UBrushComponent

A brush component defines a shape that can be modified within the editor. They are used both as part of BSP building, and for volumes.

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Brush | UModel * |  |
| BrushBodySetup | UBodySetup * | Description of collision |
| PrePivot_DEPRECATED | FVector | Local space translation |
| MeshCollisionProvider | UStaticMesh * |  |

## Functions

### SetMeshCollisionProvider

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Mesh | UStaticMesh * |  |

**Return:** ENGINE_API void