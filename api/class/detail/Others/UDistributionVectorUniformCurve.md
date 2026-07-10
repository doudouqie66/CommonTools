---
title: UDistributionVectorUniformCurve
language: cpp
---

# UDistributionVectorUniformCurve

> Inheritance: UDistributionVector

## Variables

| Name | Type | Description |
|------|------|-------------|
| ConstantCurve | FInterpCurveTwoVectors | Keyframe data for how output constant varies over time. |
| bLockAxes1 | uint32 | If true, X == Y == Z ie. only one degree of freedom. If false, each axis is pick |
| bLockAxes2 | uint32 |  |
| LockedAxes | TEnumAsByte < enum EDistributionVectorLockFlags > |  |
| MirrorFlags | TEnumAsByte < enum EDistributionVectorMirrorFlags > |  |
| bUseExtremes | uint32 |  |