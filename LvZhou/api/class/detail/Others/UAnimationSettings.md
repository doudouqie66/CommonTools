---
title: UAnimationSettings
language: cpp
---

# UAnimationSettings

Default animation settings.

> Inheritance: UDeveloperSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| CompressCommandletVersion | int32 |  |
| KeyEndEffectorsMatchNameArray | TArray < FString > |  |
| DefaultCompressionAlgorithm | TSubclassOf < UAnimCompress > |  |
| RotationCompressionFormat | TEnumAsByte < AnimationCompressionFormat > |  |
| TranslationCompressionFormat | TEnumAsByte < AnimationCompressionFormat > |  |
| MaxCurveError | float | Max error for compression of curves using remove redundant keys |
| AlternativeCompressionThreshold | float | The alternate error threshold (0.0 means don't try anything other than the curre |
| ForceRecompression | bool |  |
| bOnlyCheckForMissingSkeletalMeshes | bool |  |
| bForceBelowThreshold | bool | If true and the existing compression error is greater than Alternative Compressi |
| bFirstRecompressUsingCurrentOrDefault | bool | If true, then the animation will be first recompressed with it's current compres |
| bRaiseMaxErrorToExisting | bool | If true and the existing compression error is greater than Alternative Compressi |
| bTryFixedBitwiseCompression | bool | If true, the uniform bitwise techniques will be tried |
| bTryPerTrackBitwiseCompression | bool | If true, the per-track compressor techniques will be tried |
| bTryLinearKeyRemovalCompression | bool | If true, the linear key removal techniques will be tried |
| bTryIntervalKeyRemoval | bool | If true, the resampling techniques will be tried |
| bEnablePerformanceLog | bool |  |
| bStripAnimationDataOnDedicatedServer | bool | If true, animation track data will be stripped from dedicated server cooked data |
| AnimUpdateRateDistanceFactorThesholdsBelow60FPS | TArray < float > |  |
| AnimUpdateRateDistanceFactorThesholdsIn60FPS | TArray < float > |  |
| AnimUpdateRateDistanceFactorThesholdsIn90FPS | TArray < float > |  |
| AnimUpdateRateDistanceFactorThesholdsIn120FPS | TArray < float > |  |
| AnimUpdateRateDistanceFactorThesholdsInPC | TArray < float > |  |