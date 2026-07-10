---
title: UCameraModifier_CameraShake
language: cpp
---

# UCameraModifier_CameraShake

A UCameraModifier_CameraShake is a camera modifier that can apply a UCameraShake to 
  the owning camera.

> Inheritance: UCameraModifier

## Variables

| Name | Type | Description |
|------|------|-------------|
| ActiveShakes | TArray < UCameraShake * > | List of active CameraShake instances |
| SplitScreenShakeScale | float | Scaling factor applied to all camera shakes in when in splitscreen mode. Normall |
| CacheShakeInsMap | TMap < TSubclassOf < UCameraShake > , FCacheCameraShakeData > |  |