---
title: UParticleModuleVectorFieldLocal
language: cpp
---

# UParticleModuleVectorFieldLocal

> Inheritance: UParticleModuleVectorFieldBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| VectorField | UVectorField * | Vector field asset to use. |
| RelativeTranslation | FVector | Translation of the vector field relative to the emitter. |
| RelativeRotation | FRotator | Rotation of the vector field relative to the emitter. |
| RelativeScale3D | FVector | Scale of the vector field relative to the emitter. |
| Intensity | float | Intensity of the local vector field. |
| Tightness | float | Tightness tweak value: 0: Force 1: Velocity. |
| bIgnoreComponentTransform | uint32 | Ignore component transform. |
| bTileX | uint32 | Tile vector field in x axis? |
| bTileY | uint32 | Tile vector field in y axis? |
| bTileZ | uint32 | Tile vector field in z axis? |
| bUseFixDT | uint32 | Use fix delta time in the simulation? |