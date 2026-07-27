---
title: UAnimCompress_PerTrackCompression
language: cpp
---

# UAnimCompress_PerTrackCompression

> Inheritance: UAnimCompress_RemoveLinearKeys

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxZeroingThreshold | float | Maximum threshold to use when replacing a component with zero. Lower values reta |
| MaxPosDiffBitwise | float | Maximum position difference to use when testing if an animation key may be remov |
| MaxAngleDiffBitwise | float | Maximum angle difference to use when testing if an animation key may be removed. |
| MaxScaleDiffBitwise | float | Maximum position difference to use when testing if an animation key may be remov |
| AllowedRotationFormats | TArray < TEnumAsByte < enum AnimationCompressionFormat > > | Which encoding formats is the per-track compressor allowed to try on rotation ke |
| AllowedTranslationFormats | TArray < TEnumAsByte < enum AnimationCompressionFormat > > | Which encoding formats is the per-track compressor allowed to try on translation |
| AllowedScaleFormats | TArray < TEnumAsByte < enum AnimationCompressionFormat > > | Which encoding formats is the per-track compressor allowed to try on scale keys |
| bResampleAnimation | uint32 | If true, resample the animation to ResampleFramerate frames per second |
| ResampledFramerate | float | When bResampleAnimation is true, this defines the desired framerate |
| MinKeysForResampling | int32 | Animations with fewer keys than MinKeysForResampling will not be resampled. |
| bUseAdaptiveError | uint32 | If true, adjust the error thresholds based on the 'height' within the skeleton |
| bUseOverrideForEndEffectors | uint32 | If true, uses MinEffectorDiff as the threhsold for end effectors |
| TrackHeightBias | int32 | A bias added to the track height before using it to calculate the adaptive error |
| ParentingDivisor | float | Reduces the error tolerance the further up the tree that a key occurs 	  Effecti |
| ParentingDivisorExponent | float | Reduces the error tolerance the further up the tree that a key occurs 	  Effecti |
| bUseAdaptiveError2 | uint32 | If true, the adaptive error system will determine how much error to allow for ea |
| RotationErrorSourceRatio | float | This ratio determines how much error in end effector rotation can come from a gi |
| TranslationErrorSourceRatio | float | This ratio determines how much error in end effector translation can come from a |
| ScaleErrorSourceRatio | float | This ratio determines how much error in end effector scale can come from a given |
| MaxErrorPerTrackRatio | float | A fraction that determines how much of the total error budget can be introduced  |
| PerturbationProbeSize | float | How big of a perturbation should be made when probing error propagation |