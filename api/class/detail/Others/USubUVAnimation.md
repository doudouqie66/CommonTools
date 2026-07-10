---
title: USubUVAnimation
language: cpp
---

# USubUVAnimation

SubUV animation asset, which caches bounding geometry for regions in the SubUVTexture with non-zero opacity.
  Particle emitters with a SubUV module which use this asset leverage the optimal bounding geometry to reduce overdraw.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| SubUVTexture | UTexture2D * | Texture to generate bounding geometry from. |
| SubImages_Horizontal | int32 | The number of sub-images horizontally in the texture |
| SubImages_Vertical | int32 | The number of sub-images vertically in the texture |
| BoundingMode | TEnumAsByte < enum ESubUVBoundingVertexCount > | More bounding vertices results in reduced overdraw, but adds more triangle overh |
| OpacitySourceMode | TEnumAsByte < enum EOpacitySourceMode > |  |
| AlphaThreshold | float | Alpha channel values larger than the threshold are considered occupied and will  |