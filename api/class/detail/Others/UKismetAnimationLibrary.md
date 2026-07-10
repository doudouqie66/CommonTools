---
title: UKismetAnimationLibrary
language: cpp
---

# UKismetAnimationLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### K2_TwoBoneIK

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RootPos | FVector &  |  |
| JointPos | FVector &  |  |
| EndPos | FVector &  |  |
| JointTarget | FVector &  |  |
| Effector | FVector &  |  |
| OutJointPos | FVector &  |  |
| OutEndPos | FVector &  |  |
| bAllowStretching | bool  |  |
| StartStretchRatio | float  |  |
| MaxStretchScale | float |  |

**Return:** void  

### K2_LookAt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CurrentTransform | FTransform &  |  |
| TargetPosition | FVector &  |  |
| LookAtVector | FVector  |  |
| bUseUpVector | bool  |  |
| UpVector | FVector  |  |
| ClampConeInDegree | float |  |

**Return:** FTransform