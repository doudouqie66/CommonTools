---
title: ANavigationData
language: cpp
---

# ANavigationData

Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc)
 	Used as a common interface for all navigation types handled by NavigationSystem

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| RenderingComp | UPrimitiveComponent * |  |
| NavDataConfig | FNavDataConfig |  |
| bEnableDrawing | uint32 | if set to true then this navigation data will be drawing itself when requested a |
| bForceRebuildOnLoad | uint32 | By default navigation will skip the first update after being successfully loaded |
| bCanBeMainNavData | uint32 | If set, navigation data can act as default one in navigation system's queries |
| bCanSpawnOnRebuild | uint32 | If set, navigation data will be spawned in persistent level during rebuild if ac |
| bRebuildAtRuntime_DEPRECATED | uint32 | If true, the NavMesh can be dynamically rebuilt at runtime. |
| RuntimeGeneration | ERuntimeGenerationType | Navigation data runtime generation options |
| ObservedPathsTickInterval | float | all observed paths will be processed every ObservedPathsTickInterval seconds |
| AgentType | int32 | AgentType for quick match |
| DataVersion | uint32 | Navigation data versioning. |
| SupportedAreas | TArray < FSupportedAreaData > | serialized area class - ID mapping |