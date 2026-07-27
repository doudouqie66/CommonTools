---
title: UEnvQueryGenerator_ActorsOfClass
language: cpp
---

# UEnvQueryGenerator_ActorsOfClass

> Inheritance: UEnvQueryGenerator

## Variables

| Name | Type | Description |
|------|------|-------------|
| SearchedActorClass | TSubclassOf < AActor > |  |
| GenerateOnlyActorsInRadius | FAIDataProviderBoolValue | If true, this will only returns actors of the specified class within the SearchR |
| SearchRadius | FAIDataProviderFloatValue | Max distance of path between point and context.  NOTE: Zero and negative values  |
| SearchCenter | TSubclassOf < UEnvQueryContext > | context |