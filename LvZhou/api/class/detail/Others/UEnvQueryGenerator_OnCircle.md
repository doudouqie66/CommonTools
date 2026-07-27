---
title: UEnvQueryGenerator_OnCircle
language: cpp
---

# UEnvQueryGenerator_OnCircle

> Inheritance: UEnvQueryGenerator_ProjectedPoints

## Variables

| Name | Type | Description |
|------|------|-------------|
| CircleRadius | FAIDataProviderFloatValue | max distance of path between point and context |
| SpaceBetween | FAIDataProviderFloatValue | items will be generated on a circle this much apart |
| NumberOfPoints | FAIDataProviderIntValue | this many items will be generated on a circle |
| PointOnCircleSpacingMethod | EPointOnCircleSpacingMethod | how we are choosing where the points are in the circle |
| ArcDirection | FEnvDirection | If you generate items on a piece of circle you define direction of Arc cut here |
| ArcAngle | FAIDataProviderFloatValue | If you generate items on a piece of circle you define angle of Arc cut here |
| AngleRadians | float |  |
| CircleCenter | TSubclassOf < UEnvQueryContext > | context |
| bIgnoreAnyContextActorsWhenGeneratingCircle | bool | ignore tracing into context actors when generating the circle |
| CircleCenterZOffset | FAIDataProviderFloatValue | context offset |
| TraceData | FEnvTraceData | horizontal trace for nearest obstacle |
| bDefineArc | uint32 |  |