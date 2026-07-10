---
title: UEnvQueryGenerator_Donut
language: cpp
---

# UEnvQueryGenerator_Donut

> Inheritance: UEnvQueryGenerator_ProjectedPoints

## Variables

| Name | Type | Description |
|------|------|-------------|
| InnerRadius | FAIDataProviderFloatValue | min distance between point and context |
| OuterRadius | FAIDataProviderFloatValue | max distance between point and context |
| NumberOfRings | FAIDataProviderIntValue | number of rings to generate |
| PointsPerRing | FAIDataProviderIntValue | number of items to generate for each ring |
| ArcDirection | FEnvDirection | If you generate items on a piece of circle you define direction of Arc cut here |
| ArcAngle | FAIDataProviderFloatValue | If you generate items on a piece of circle you define angle of Arc cut here |
| bUseSpiralPattern | bool | If true, the rings of the wheel will be rotated in a spiral pattern.  If false,  |
| Center | TSubclassOf < UEnvQueryContext > | context |
| bDefineArc | uint32 |  |