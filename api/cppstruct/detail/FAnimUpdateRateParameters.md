---
title: FAnimUpdateRateParameters
---

# FAnimUpdateRateParameters

Container for Animation Update Rate parameters.
  They are shared for all components of an Actor, so they can be updated in sync.

## Variables

| Name | Type | Description |
|------|------|-------------|
| UpdateRate | int32 | How often animation will be updatedticked. 1 = every frame, 2 = every 2 frames,  |
| EvaluationRate | int32 | How often animation will be evaluated. 1 = every frame, 2 = every 2 frames, etc. |
| bInterpolateSkippedFrames | uint32 | When skipping a frame, should it be interpolated or frozen? |
| bShouldUseLodMap | uint32 | Whether or not to use the defined LODFrameskip map instead of separate distance  |
| bShouldUseMinLod | uint32 | If set, LODFrameskip map will be queried with mesh's MinLodModel instead of curr |
| bSkipUpdate | uint32 | (This frame) animation update should be skipped. |
| bSkipEvaluation | uint32 | (This frame) animation evaluation should be skipped. |
| TickedPoseOffestTime | float | Track time we have lost via skipping |
| AdditionalTime | float | Total time of the last series of skipped updates |
| BaseNonRenderedUpdateRate | int32 | Rate of animation evaluation when non rendered (off screen and dedicated servers |
| BaseNonRenderedUpdateRateHigh | int32 |  |
| MaxDistFromMainChar | float |  |
| BaseVisibleDistanceFactorThesholds | TArray < float > | Array of MaxDistanceFactor to use for AnimUpdateRate when mesh is visible (rende |
| BaseVisibleDistanceFactorSkipNum | int32 |  |
| MinEvaluationRate | int32 |  |
| LockAnimUpdateRate | int32 |  |
| EnableUROInterpolation | bool |  |
| LODToFrameSkipMap | TMap < int32 , int32 > | Map of LOD levels to frame skip amounts. if bShouldUseLodMap is set these values |
| MaxEvalRateForInterpolation | int32 | Max Evaluation Rate allowed for interpolation to be enabled. Beyond, interpolati |
| ShiftBucket | EUpdateRateShiftBucket | The bucket to use when deciding which counter to use to calculate shift values |