---
title: UCompositionGraphCaptureSettings
language: cpp
---

# UCompositionGraphCaptureSettings

> Inheritance: UMovieSceneCaptureProtocolSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| IncludeRenderPasses | FCompositionGraphCapturePasses | A list of render passes to include in the capture. Leave empty to export all ava |
| bCaptureFramesInHDR | bool | Whether to capture the frames as HDR textures (.exr format) |
| HDRCompressionQuality | int32 | Compression Quality for HDR Frames (0 for no compression, 1 for default compress |
| CaptureGamut | TEnumAsByte < enum EHDRCaptureGamut > | The color gamut to use when storing HDR captured data. The gamut depends on whet |
| PostProcessingMaterial | FSoftObjectPath | Custom post processing material to use for rendering |