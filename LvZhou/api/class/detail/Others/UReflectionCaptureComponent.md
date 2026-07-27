---
title: UReflectionCaptureComponent
language: cpp
---

# UReflectionCaptureComponent

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| CaptureOffsetComponent | UBillboardComponent * |  |
| ReflectionSourceType | EReflectionSourceType | Indicates where to get the reflection source from. |
| IndoorOutdoorMask | TEnumAsByte < EIndoorOutdoorMask > |  |
| Cubemap | UTextureCube * | Cubemap to use for reflection if ReflectionSourceType is set to RS_SpecifiedCube |
| SourceCubemapAngle | float | Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubema |
| Brightness | float | A brightness control to scale the captured scene's reflection intensity. |
| CaptureOffset | FVector | World space offset to apply before capturing. |
| EnabledPlatform | EReflectionPlatform |  |
| StateId | FGuid |  |