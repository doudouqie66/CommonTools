---
title: FMaterialParameterCollectionInfo
---

# FMaterialParameterCollectionInfo

Stores information about a parameter collection that this material references, used to know when the material needs to be recompiled.

## Variables

| Name | Type | Description |
|------|------|-------------|
| StateId | FGuid | Id that the collection had when this material was last compiled. |
| ParameterCollection | UMaterialParameterCollection * | The collection which this material has a dependency on. |