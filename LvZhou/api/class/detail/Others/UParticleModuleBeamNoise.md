---
title: UParticleModuleBeamNoise
language: cpp
---

# UParticleModuleBeamNoise

> Inheritance: UParticleModuleBeamBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| bLowFreq_Enabled | uint32 | Is low frequency noise enabled. |
| Frequency | int32 | The frequency of noise points. |
| Frequency_LowRange | int32 | If not 0, then the frequency will select a random value in the range 	 		[Freque |
| NoiseRange | FRawDistributionVector | The noise point ranges. |
| NoiseRangeScale | FRawDistributionFloat | A scale factor that will be applied to the noise range. |
| bNRScaleEmitterTime | uint32 | If true,  the NoiseRangeScale will be grabbed based on the emitter time. 	 	If f |
| NoiseSpeed | FRawDistributionVector | The speed with which to move each noise point. |
| bSmooth | uint32 | Whether the noise movement should be smooth or 'jerky'. |
| NoiseLockRadius | float | Default target-point information to use if the beam method is endpoint. |
| bNoiseLock | uint32 | INTERNAL - Whether the noise points should be locked. |
| bOscillate | uint32 | Whether the noise points should be oscillate. |
| NoiseLockTime | float | How long the  noise points should be locked - 0.0 indicates forever. |
| NoiseTension | float | The tension to apply to the tessellated noise line. |
| bUseNoiseTangents | uint32 | If true, calculate tangents at each noise point. |
| NoiseTangentStrength | FRawDistributionFloat | The strength of noise tangents, if enabled. |
| NoiseTessellation | int32 | The amount of tessellation between noise points. |
| bTargetNoise | uint32 | Whether to apply noise to the target point (or end of line in distance mode...)  |
| FrequencyDistance | float | The distance at which to deposit noise points. 	 	If 0.0, then use the static fr |
| bApplyNoiseScale | uint32 | If true, apply the noise scale to the beam. |
| NoiseScale | FRawDistributionFloat | The scale factor to apply to noise range. 	 	The lookup value is determined by d |