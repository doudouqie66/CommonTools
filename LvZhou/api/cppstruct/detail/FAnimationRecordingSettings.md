---
title: FAnimationRecordingSettings
---

# FAnimationRecordingSettings

Settings describing how to record an animation

## Variables

| Name | Type | Description |
|------|------|-------------|
| bRecordInWorldSpace | bool | Whether to record animation in world space, defaults to true |
| bRemoveRootAnimation | bool | Whether to remove the root bone transform from the animation |
| bAutoSaveAsset | bool | Whether to auto-save asset when recording is completed. Defaults to false |
| SampleRate | float | Sample rate of the recorded animation (in Hz) |
| Length | float | Maximum length of the animation recorded (in seconds). If zero the animation wil |
| InterpMode | TEnumAsByte < ERichCurveInterpMode > | Interpolation mode for the recorded keys. |
| TangentMode | TEnumAsByte < ERichCurveTangentMode > | Tangent mode for the recorded keys. |