---
title: UEnvQueryTest_Pathfinding
language: cpp
---

# UEnvQueryTest_Pathfinding

> Inheritance: UEnvQueryTest

## Variables

| Name | Type | Description |
|------|------|-------------|
| TestMode | TEnumAsByte < EEnvTestPathfinding :: Type > | testing mode |
| Context | TSubclassOf < UEnvQueryContext > | context: other end of pathfinding test |
| PathFromContext | FAIDataProviderBoolValue | pathfinding direction |
| SkipUnreachable | FAIDataProviderBoolValue | if set, items with failed path will be invalidated (PathCost, PathLength) |
| FilterClass | TSubclassOf < UNavigationQueryFilter > | navigation filter to use in pathfinding |