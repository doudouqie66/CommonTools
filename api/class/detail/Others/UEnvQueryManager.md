---
title: UEnvQueryManager
language: cpp
---

# UEnvQueryManager

> Inheritance: UObject -> FTickableGameObject -> FSelfRegisteringExec

## Variables

| Name | Type | Description |
|------|------|-------------|
| InstanceCache | TArray < FEnvQueryInstanceCache > | cache of instances |
| LocalContexts | TArray < UEnvQueryContext * > | local cache of context objects for managing BP based objects |
| GCShieldedWrappers | TArray < UEnvQueryInstanceBlueprintWrapper * > |  |
| MaxAllowedTestingTime | float | how long are we allowed to test per update, in seconds. |
| bTestQueriesUsingBreadth | bool | whether we update EQS queries based on: 	    or test an entire query before movi |
| QueryCountWarningThreshold | int32 | if greater than zero, we will warn once when the number of queries is greater th |
| QueryCountWarningInterval | double | how often (in seconds) we will warn about the number of queries (allows us to ca |

## Functions

### RunEQSQuery

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| QueryTemplate | UEnvQuery *  |  |
| Querier | UObject *  |  |
| RunMode | TEnumAsByte < EEnvQueryRunMode :: Type >  |  |
| WrapperClass | TSubclassOf < UEnvQueryInstanceBlueprintWrapper > |  |

**Return:** UEnvQueryInstanceBlueprintWrapper *