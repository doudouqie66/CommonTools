---
title: ALODActor
language: cpp
---

# ALODActor

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| StaticMeshComponent | UStaticMeshComponent * |  |
| Proxy | UHLODProxy * | The mesh proxy used to display this LOD |
| Key | FName | The key used to validate this actor against the proxy |
| LODDrawDistance | float | what distance do you want this to show up instead of SubActors |
| SubActors | TArray < AActor * > |  |
| LODLevel | int32 | The hierarchy level of this actor; the first tier of HLOD is level 1, the second |
| CachedNumHLODLevels | uint8 |  |
| HLODActorDebugDynamicMaterialInstance | UMaterialInstanceDynamic * |  |
| SubActorsDebugDynamicMaterialInstance | UMaterialInstanceDynamic * |  |
| NumTrianglesInSubActors | uint32 | Cached number of triangles contained in the SubActors |
| NumTrianglesInMergedMesh | uint32 | Cached number of triangles contained in the SubActors |
| bOverrideMaterialMergeSettings | bool | Flag whether or not to use the override MaterialSettings when creating the proxy |
| MaterialSettings | FMaterialProxySettings | Override Material Settings, used when creating the proxy mesh |
| bOverrideTransitionScreenSize | bool | Flag whether or not to use the override TransitionScreenSize for this proxy mesh |
| TransitionScreenSize | float | Override transition screen size value, determines the screen size at which the p |
| bOverrideScreenSize | bool | Flag whether or not to use the override ScreenSize when creating the proxy mesh |
| ScreenSize | int32 | Override screen size value used in mesh reduction, when creating the proxy mesh |