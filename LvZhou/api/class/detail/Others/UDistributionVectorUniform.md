---
title: UDistributionVectorUniform
language: cpp
---

# UDistributionVectorUniform

> Inheritance: UDistributionVector

## Variables

| Name | Type | Description |
|------|------|-------------|
| Max | FVector | Upper end of FVector magnitude range. |
| Min | FVector | Lower end of FVector magnitude range. |
| bLockAxes | uint32 | If true, X == Y == Z ie. only one degree of freedom. If false, each axis is pick |
| LockedAxes | TEnumAsByte < enum EDistributionVectorLockFlags > |  |
| MirrorFlags | TEnumAsByte < enum EDistributionVectorMirrorFlags > |  |
| bUseExtremes | uint32 |  |