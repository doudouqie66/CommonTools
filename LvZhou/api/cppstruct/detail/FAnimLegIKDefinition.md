---
title: FAnimLegIKDefinition
---

# FAnimLegIKDefinition

Per foot definitions

## Variables

| Name | Type | Description |
|------|------|-------------|
| IKFootBone | FBoneReference |  |
| FKFootBone | FBoneReference |  |
| NumBonesInLimb | int32 |  |
| FootBoneForwardAxis | TEnumAsByte < EAxis :: Type > | Forward Axis for Foot bone. |
| bEnableRotationLimit | bool | If enabled, we prevent the leg from bending backwards and enforce a min compress |
| MinRotationAngle | float | Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto |
| bEnableKneeTwistCorrection | bool | Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation. |