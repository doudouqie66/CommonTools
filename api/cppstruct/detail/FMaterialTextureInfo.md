---
title: FMaterialTextureInfo
---

# FMaterialTextureInfo

This struct holds data about how a texture is sampled within a material.

## Variables

| Name | Type | Description |
|------|------|-------------|
| SamplingScale | float | The scale used when sampling the texture |
| UVChannelIndex | int32 | The coordinate index used when sampling the texture |
| TextureName | FName | The texture name. Used for debugging and also to for quick matching of the entri |
| TextureReference | FSoftObjectPath | The reference to the texture, used to keep the TextureName valid even if it gets |
| TextureIndex | int32 | The texture index in the material resource the data was built from. 	   This mus |