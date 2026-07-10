---
title: UEnvQueryContext_BlueprintBase
language: cpp
---

# UEnvQueryContext_BlueprintBase

> Inheritance: UEnvQueryContext

## Functions

### ProvideSingleActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QuerierObject | UObject *  |  |
| QuerierActor | AActor *  |  |
| ResultingActor | AActor * & |  |

**Return:** void  

### ProvideSingleLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QuerierObject | UObject *  |  |
| QuerierActor | AActor *  |  |
| ResultingLocation | FVector & |  |

**Return:** void  

### ProvideActorsSet

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QuerierObject | UObject *  |  |
| QuerierActor | AActor *  |  |
| ResultingActorsSet | TArray < AActor * > & |  |

**Return:** void  

### ProvideLocationsSet

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QuerierObject | UObject *  |  |
| QuerierActor | AActor *  |  |
| ResultingLocationSet | TArray < FVector > & |  |

**Return:** void