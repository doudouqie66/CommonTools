---
title: UDistributionVectorConstantCurve
language: cpp
---

# UDistributionVectorConstantCurve

> Inheritance: UDistributionVector

## Variables

| Name | Type | Description |
|------|------|-------------|
| ConstantCurve | FInterpCurveVector | Keyframe data for each component (X,Y,Z) over time. |
| bLockAxes | uint32 | If true, X == Y == Z ie. only one degree of freedom. If false, each axis is pick |
| LockedAxes | TEnumAsByte < enum EDistributionVectorLockFlags > |  |