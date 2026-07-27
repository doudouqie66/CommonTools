---
title: UParticleModuleCameraOffset
language: cpp
---

# UParticleModuleCameraOffset

> Inheritance: UParticleModuleCameraBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| CameraOffset | FRawDistributionFloat | The camera-relative offset to apply to sprite location |
| bSpawnTimeOnly | uint32 | If true, the offset will only be processed at spawn time |
| UpdateMethod | TEnumAsByte < enum EParticleCameraOffsetUpdateMethod > | How to update the offset for this module. 	  DirectSet - Set the value directly  |