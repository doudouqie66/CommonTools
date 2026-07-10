---
title: UParticleModuleSpawn
language: cpp
---

# UParticleModuleSpawn

> Inheritance: UParticleModuleSpawnBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Rate | FRawDistributionFloat | The rate at which to spawn particles. |
| RateScale | FRawDistributionFloat | The scalar to apply to the rate. |
| ParticleBurstMethod | TEnumAsByte < EParticleBurstMethod > | The method to utilize when burst-emitting particles. |
| BurstList | TArray < FParticleBurst > | The array of burst entries. |
| BurstScale | FRawDistributionFloat | Scale all burst entries by this amount. |
| bApplyGlobalSpawnRateScale | uint32 | If true, the SpawnRate will be scaled by the global CVar r.EmitterSpawnRateScale |