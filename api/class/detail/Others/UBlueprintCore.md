---
title: UBlueprintCore
language: cpp
---

# UBlueprintCore

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| SkeletonGeneratedClass | TSubclassOf < UObject > | Pointer to the skeleton class; this is regenerated any time a member variable or |
| GeneratedClass | TSubclassOf < UObject > | Pointer to the 'most recent' fully generated class |
| bLegacyNeedToPurgeSkelRefs | bool | BackCompat:  Whether or not we need to purge references in this blueprint to the |
| bLegacyGeneratedClassIsAuthoritative | bool | BackCompat: Whether or not this blueprint's authoritative CDO data has been migr |
| BlueprintGuid | FGuid | Blueprint Guid |