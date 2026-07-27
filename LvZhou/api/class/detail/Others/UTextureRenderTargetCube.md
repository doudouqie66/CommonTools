---
title: UTextureRenderTargetCube
language: cpp
---

# UTextureRenderTargetCube

TextureRenderTargetCube
 
  Cube render target texture resource. This can be used as a target
  for rendering as well as rendered as a regular cube texture resource.

> Inheritance: UTextureRenderTarget

## Variables

| Name | Type | Description |
|------|------|-------------|
| SizeX | int32 | The width of the texture. |
| ClearColor | FLinearColor | the color the texture is cleared to |
| OverrideFormat | TEnumAsByte < enum EPixelFormat > | The format of the texture data.											 	 Normally the format is derived from |
| bHDR | uint32 | Whether to support storing HDR values, which requires more memory. |
| bForceLinearGamma | uint32 | True to force linear gamma space for this render target |