---
title: UMaterialParameterCollection
language: cpp
---

# UMaterialParameterCollection

Asset class that contains a list of parameter names and their default values. 
  Any number of materials can reference these parameters and get new values when the parameter values are changed.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| StateId | FGuid | Used by materials using this collection to know when to recompile. |
| ScalarParameters | TArray < FCollectionScalarParameter > |  |
| VectorParameters | TArray < FCollectionVectorParameter > |  |