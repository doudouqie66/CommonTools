---
title: UMaterialExpressionTextureSample
language: cpp
---

# UMaterialExpressionTextureSample

> Inheritance: UMaterialExpressionTextureBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Coordinates | FExpressionInput |  |
| TextureObject | FExpressionInput | Texture object input which overrides Texture if specified.  	  This only shows u |
| MipValue | FExpressionInput | Meaning depends on MipValueMode, a single unit is one mip level |
| CoordinatesDX | FExpressionInput | Enabled only if MipValueMode == TMVM_Derivative |
| CoordinatesDY | FExpressionInput | Enabled only if MipValueMode == TMVM_Derivative |
| MipValueMode | TEnumAsByte < enum ETextureMipValueMode > | Defines how the MipValue property is applied to the texture lookup |
| SamplerSource | TEnumAsByte < enum ESamplerSourceMode > | Controls where the sampler for this texture lookup will come from.   	  Choose ' |
| ConstCoordinate | uint32 | only used if Coordinates is not hooked up |
| ConstMipValue | int32 | only used if MipValue is not hooked up |