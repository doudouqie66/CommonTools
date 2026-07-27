---
title: UBTDecorator_IsAtLocation
language: cpp
---

# UBTDecorator_IsAtLocation

Is At Location decorator node.
  A decorator node that checks if AI controlled pawn is at given location.

> Inheritance: UBTDecorator_BlackboardBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| AcceptableRadius | float | distance threshold to accept as being at location |
| ParametrizedAcceptableRadius | FAIDataProviderFloatValue |  |
| GeometricDistanceType | FAIDistanceType |  |
| bUseParametrizedRadius | uint32 |  |
| bUseNavAgentGoalLocation | uint32 | if moving to an actor and this actor is a nav agent, then we will move to their  |
| bPathFindingBasedTest | uint32 | If true the result will be consistent with tests done while following paths. 	 	 |