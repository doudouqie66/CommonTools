---
title: UPoseAsset
language: cpp
---

# UPoseAsset

Pose Asset that can be blended by weight of curves

> Inheritance: UAnimationAsset

## Variables

| Name | Type | Description |
|------|------|-------------|
| PoseContainer | FPoseDataContainer | Animation Pose Data |
| bAdditivePose | bool | Whether or not Additive Pose or not - these are property that needs post process |
| BasePoseIndex | int32 | if -1, use ref pose |
| RetargetSource | FName | Base pose to use when retargeting |
| SourceAnimation | UAnimSequence * |  |
| bOverridePoseNameFrom_0 | bool |  |