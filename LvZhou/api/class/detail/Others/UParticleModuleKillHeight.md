---
title: UParticleModuleKillHeight
language: cpp
---

# UParticleModuleKillHeight

> Inheritance: UParticleModuleKillBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Height | FRawDistributionFloat | The height at which to kill the particle. |
| bAbsolute | uint32 | If true, the height should be treated as a world-space position. |
| bFloor | uint32 | If true, the plane should be considered a floor - ie kill anything BELOW it. 	 	 |
| bApplyPSysScale | uint32 | If true, take the particle systems scale into account |