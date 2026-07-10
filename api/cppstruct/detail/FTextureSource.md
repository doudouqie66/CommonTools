---
title: FTextureSource
---

# FTextureSource

Texture source data management.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Id | FGuid | GUID used to track changes to the source data. |
| SizeX | int32 | Width of the texture. |
| SizeY | int32 | Height of the texture. |
| NumSlices | int32 | Depth (volume textures) or faces (cube maps). |
| NumMips | int32 | Number of mips provided as source data for the texture. |
| bPNGCompressed | bool | RGBA8 source data is optionally compressed as PNG. |
| bGuidIsHash | bool | Legacy textures use a hash instead of a GUID. |
| Format | TEnumAsByte < enum ETextureSourceFormat > | Format in which the source data is stored. |
| bIsIdeaLightmap | bool | Is Idea lightmap |