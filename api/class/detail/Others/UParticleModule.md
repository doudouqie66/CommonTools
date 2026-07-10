---
title: UParticleModule
language: cpp
---

# UParticleModule

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bSpawnModule | uint32 | If true, the module performs operations on particles during Spawning |
| bUpdateModule | uint32 | If true, the module performs operations on particles during Updating |
| bFinalUpdateModule | uint32 | If true, the module performs operations on particles during final update |
| bUpdateForGPUEmitter | uint32 | If true, the module performs operations on particles during update andor final u |
| bCurvesAsColor | uint32 | If true, the module displays FVector curves as colors |
| b3DDrawMode | uint32 | If true, the module should render its 3D visualization helper |
| bSupported3DDrawMode | uint32 | If true, the module supports rendering a 3D visualization helper |
| bEnabled | uint32 | If true, the module is enabled |
| bEditable | uint32 | If true, the module has had editing enabled on it |
| LODDuplicate | uint32 | If true, this flag indicates that auto-generation for LOD will result in 		an ex |
| bSupportsRandomSeed | uint32 | If true, the module supports RandomSeed setting |
| bRequiresLoopingNotification | uint32 | If true, the module should be told when looping |
| LODValidity | uint8 | The LOD levels this module is present in. 	 	Bit-flags are used to indicate vali |