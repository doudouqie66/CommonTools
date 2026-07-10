---
title: FStreamingTexturePrimitiveInfo
---

# FStreamingTexturePrimitiveInfo

Information about a streaming texture that a primitive uses for rendering.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture2D * |  |
| Bounds | FBoxSphereBounds | The streaming bounds of the texture, usually the component material bounds.  	   |
| TexelFactor | float |  |
| PackedRelativeBox | uint32 | When non zero, this represents the relative box used to compute Bounds, using th |