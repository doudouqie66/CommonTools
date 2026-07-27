---
title: UBlendSpaceBase
language: cpp
---

# UBlendSpaceBase

Allows multiple animations to be blended between based on input parameters

> Inheritance: UAnimationAsset -> IInterpolationIndexProvider

## Variables

| Name | Type | Description |
|------|------|-------------|
| bRotationBlendInMeshSpace | bool | When you use blend per bone, allows rotation to blend in mesh space. This only w |
| AnimLength | float | This animation length changes based on current input (resulting in different ble |
| InterpolationParam | FInterpolationParameter | Input interpolation parameter for all 3 axis, for each axis input, decide how yo |
| TargetWeightInterpolationSpeedPerSec | float | Target weight interpolation. When target samples are set, how fast you'd like to |
| NotifyTriggerMode | TEnumAsByte < ENotifyTriggerMode :: Type > | The current mode used by the blendspace to decide which animation notifies to fi |
| PerBoneBlend | TArray < FPerBoneInterpolation > | Define target weight interpolation per bone. This will blend in different speed  |
| SampleIndexWithMarkers | int32 | Track index to get marker data from. Samples are tested for the suitability of m |
| SampleData | TArray < struct FBlendSample > | Sample animation data |
| GridSamples | TArray < struct FEditorElement > | Grid samples, indexing scheme imposed by subclass |
| BlendParameters | FBlendParameter | Blend Parameters for each axis. |