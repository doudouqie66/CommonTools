---
title: UEnvQueryGenerator_Composite
language: cpp
---

# UEnvQueryGenerator_Composite

Composite generator allows using multiple generators in single query option
  All child generators must produce exactly the same item type!

> Inheritance: UEnvQueryGenerator

## Variables

| Name | Type | Description |
|------|------|-------------|
| Generators | TArray < UEnvQueryGenerator * > |  |
| bAllowDifferentItemTypes | uint32 | allow generators with different item types, use at own risk! 	  	   WARNING:  	  |
| bHasMatchingItemType | uint32 |  |
| ForcedItemType | TSubclassOf < UEnvQueryItemType > |  |