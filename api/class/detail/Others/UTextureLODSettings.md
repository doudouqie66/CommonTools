---
title: UTextureLODSettings
language: cpp
---

# UTextureLODSettings

Structure containing all information related to an LOD group and providing helper functions to calculate
  the LOD bias of a given group.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| TextureLODGroups | TArray < FTextureLODGroup > | Array of LOD settings with entries per group. |
| TextureLODGroupsFilterCache | TMap < TEnumAsByte < TextureGroup > , ETextureSamplerFilter > |  |