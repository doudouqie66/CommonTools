---
title: USoundNodeEnveloper
language: cpp
---

# USoundNodeEnveloper

Allows manipulation of volume and pitch over a set time period

> Inheritance: USoundNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| LoopStart | float |  |
| LoopEnd | float |  |
| DurationAfterLoop | float |  |
| LoopCount | int32 |  |
| bLoopIndefinitely | uint32 |  |
| bLoop | uint32 |  |
| VolumeInterpCurve_DEPRECATED | UDistributionFloatConstantCurve * |  |
| PitchInterpCurve_DEPRECATED | UDistributionFloatConstantCurve * |  |
| VolumeCurve | FRuntimeFloatCurve |  |
| PitchCurve | FRuntimeFloatCurve |  |
| PitchMin | float |  |
| PitchMax | float |  |
| VolumeMin | float |  |
| VolumeMax | float |  |