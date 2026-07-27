---
title: FGPUSpriteLocalVectorFieldInfo
---

# FGPUSpriteLocalVectorFieldInfo

Data needed for local vector fields.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Field | UVectorField * | Local vector field to apply to this emitter. |
| Transform | FTransform | Local vector field transform. |
| MinInitialRotation | FRotator | Minimum initial rotation. |
| MaxInitialRotation | FRotator | Maximum initial rotation. |
| RotationRate | FRotator | Local vector field rotation rate. |
| Intensity | float | Local vector field intensity. |
| Tightness | float | Local vector field tightness. |
| bIgnoreComponentTransform | uint32 | Ignore Components Transform |
| bTileX | uint32 | Tile vector field in x axis? |
| bTileY | uint32 | Tile vector field in y axis? |
| bTileZ | uint32 | Tile vector field in z axis? |
| bUseFixDT | uint32 | Use fix delta time in the simulation? |