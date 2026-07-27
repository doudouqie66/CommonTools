---
title: FParticleRandomSeedInfo
---

# FParticleRandomSeedInfo

## Variables

| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName | The name to expose to the placed instances for setting this seed |
| bGetSeedFromInstance | uint32 | If true, the module will attempt to get the seed from the owner 	 	instance. If  |
| bInstanceSeedIsIndex | uint32 | If true, the seed value retrieved from the instance will be an 	 	index into the |
| bResetSeedOnEmitterLooping | uint32 | If true, then reset the seed upon the emitter looping. 	 	For looping environmen |
| bRandomlySelectSeedArray | uint32 | If true, then randomly select a seed entry from the RandomSeeds array |
| RandomSeeds | TArray < int32 > | The random seed values to utilize for the module.  	 	More than 1 means the inst |