---
title: UMaterialParameterCollectionInstance
language: cpp
---

# UMaterialParameterCollectionInstance

Class that stores per-world instance parameter data for a given UMaterialParameterCollection resource. 
  Instances of this class are always transient.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Collection | UMaterialParameterCollection * | Collection resource this instance is based off of. |
| World | UWorld * | World that owns this instance. |