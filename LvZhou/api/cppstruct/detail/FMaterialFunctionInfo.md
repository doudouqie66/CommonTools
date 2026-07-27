---
title: FMaterialFunctionInfo
---

# FMaterialFunctionInfo

Stores information about a function that this material references, used to know when the material needs to be recompiled.

## Variables

| Name | Type | Description |
|------|------|-------------|
| StateId | FGuid | Id that the function had when this material was last compiled. |
| Function | UMaterialFunction * | The function which this material has a dependency on. |