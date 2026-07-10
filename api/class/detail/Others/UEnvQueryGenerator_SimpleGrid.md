---
title: UEnvQueryGenerator_SimpleGrid
language: cpp
---

# UEnvQueryGenerator_SimpleGrid

Simple grid, generates points in 2D square around context

> Inheritance: UEnvQueryGenerator_ProjectedPoints

## Variables

| Name | Type | Description |
|------|------|-------------|
| GridSize | FAIDataProviderFloatValue | half of square's extent, like a radius |
| SpaceBetween | FAIDataProviderFloatValue | generation density |
| GenerateAround | TSubclassOf < UEnvQueryContext > | context |