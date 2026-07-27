---
title: UParticleModuleEventReceiverSpawn
language: cpp
---

# UParticleModuleEventReceiverSpawn

> Inheritance: UParticleModuleEventReceiverBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SpawnCount | FRawDistributionFloat | The number of particles to spawn. |
| bUseParticleTime | uint32 | For Death-based event receiving, if this is true, it indicates that the  	 	Part |
| bUsePSysLocation | uint32 | If true, use the location of the particle system component for spawning. 	 	if f |
| bInheritVelocity | uint32 | If true, use the velocity of the dying particle as the start velocity of  	 	the |
| InheritVelocityScale | FRawDistributionVector | If bInheritVelocity is true, scale the velocity with this. |
| PhysicalMaterials | TArray < UPhysicalMaterial * > | Array of physical materials that can be used to allow or ban a specific set of m |
| bBanPhysicalMaterials | uint32 | When true, the PhysicalMaterials list is used to ban specified materials for col |