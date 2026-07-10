---
title: UReverbEffect
language: cpp
---

# UReverbEffect

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Density | float | Density - 0.0 < 1.0 < 1.0 - Coloration of the late reverb - lower value is more  |
| Diffusion | float | Diffusion - 0.0 < 1.0 < 1.0 - Echo density in the reverberation decay - lower is |
| Gain | float | Reverb Gain - 0.0 < 0.32 < 1.0 - overall reverb gain - master volume control |
| GainHF | float | Reverb Gain High Frequency - 0.0 < 0.89 < 1.0 - attenuates the high frequency re |
| DecayTime | float | Decay Time - 0.1 < 1.49 < 20.0 Seconds - larger is more reverb |
| DecayHFRatio | float | Decay High Frequency Ratio - 0.1 < 0.83 < 2.0 - how much the quicker or slower t |
| ReflectionsGain | float | Reflections Gain - 0.0 < 0.05 < 3.16 - controls the amount of initial reflection |
| ReflectionsDelay | float | Reflections Delay - 0.0 < 0.007 < 0.3 Seconds - the time between the listener re |
| LateGain | float | Late Reverb Gain - 0.0 < 1.26 < 10.0 - gain of the late reverb |
| LateDelay | float | Late Reverb Delay - 0.0 < 0.011 < 0.1 Seconds - time difference between late rev |
| AirAbsorptionGainHF | float | Air Absorption - 0.0 < 0.994 < 1.0 - lower value means more absorption |
| RoomRolloffFactor | float | Room Rolloff - 0.0 < 0.0 < 10.0 - multiplies the attenuation due to distance |
| bChanged | uint32 | Transient property used to trigger real-time updates of the reverb for real-time |