---
title: UAnimCompress_Automatic
language: cpp
---

# UAnimCompress_Automatic

> Inheritance: UAnimCompress

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxEndEffectorError | float | Maximum amount of error that a compression technique can introduce in an end eff |
| bTryFixedBitwiseCompression | uint32 | If true, the uniform bitwise techniques will be tried |
| bTryPerTrackBitwiseCompression | uint32 | If true, the per-track compressor techniques will be tried |
| bTryLinearKeyRemovalCompression | uint32 | If true, the linear key removal techniques will be tried |
| bTryIntervalKeyRemoval | uint32 | If true, the resampling techniques will be tried |
| bRunCurrentDefaultCompressor | uint32 | If true, then the animation will be first recompressed with it's current compres |
| bAutoReplaceIfExistingErrorTooGreat | uint32 | If true and the existing compression error is greater than Max End Effector Erro |
| bRaiseMaxErrorToExisting | uint32 | If true and the existing compression error is greater than Max End Effector Erro |
| bTryPerTrackVarBitCompression | uint32 | If true, the per-track variable bit compressor techniques will be tried |