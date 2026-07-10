---
title: UEnvQueryGenerator_BlueprintBase
language: cpp
---

# UEnvQueryGenerator_BlueprintBase

> Inheritance: UEnvQueryGenerator

## Variables

| Name | Type | Description |
|------|------|-------------|
| GeneratorsActionDescription | FText | A short description of what test does, like "Generate pawn named Joe" |
| Context | TSubclassOf < UEnvQueryContext > | context |
| GeneratedItemType | TSubclassOf < UEnvQueryItemType > | @todo this should show up only in the generator's BP, but  	 	due to the way EQS |

## Functions

### DoItemGeneration

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ContextLocations | TArray < FVector > & |  |

**Return:** void  

### AddGeneratedVector

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GeneratedVector | FVector |  |

**Return:** void  

### AddGeneratedActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GeneratedActor | AActor * |  |

**Return:** void  

### GetQuerier

**Return:** UObject *