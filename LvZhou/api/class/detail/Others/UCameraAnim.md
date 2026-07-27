---
title: UCameraAnim
language: cpp
---

# UCameraAnim

A predefined animation to be played on a camera

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| CameraInterpGroup | UInterpGroup * | The UInterpGroup that holds our actual interpolation data. |
| AnimLength | float | Length, in seconds. |
| BoundingBox | FBox | AABB in local space. |
| bRelativeToInitialTransform | uint8 | If true, assume all transform keys are intended be offsets from the start of the |
| bRelativeToInitialFOV | uint8 | If true, assume all FOV keys are intended be offsets from the start of the anima |
| BaseFOV | float | The base FOV that all FOV keys are relative to. |
| BasePostProcessSettings | FPostProcessSettings | Default PP settings to put on the animated camera. For modifying PP without keyf |
| BasePostProcessBlendWeight | float | Default PP blend weight to put on the animated camera. For modifying PP without  |
| PreviewInterpGroup | UInterpGroup * | This is to preview and they only exists in editor |