---
title: FStreamingTextureBuildInfo
---

# FStreamingTextureBuildInfo

This struct holds the result of TextureStreaming Build for each component texture, as referred by its used materials.
  It is possible that the entry referred by this data is not actually relevant in a given quality  target.
  It is also possible that some texture are not referred, and will then fall on fallbacks computation.
  Because each component holds its precomputed data for each texture, this struct is designed to be as compact as possible.

## Variables

| Name | Type | Description |
|------|------|-------------|
| PackedRelativeBox | uint32 | The relative bounding box for this entry. The relative bounds is a bound equal o |
| TextureLevelIndex | int32 | The level scope identifier of the texture. When building the texture streaming d |
| TexelFactor | float | The texel factor for this texture. This represent the world size a texture squar |