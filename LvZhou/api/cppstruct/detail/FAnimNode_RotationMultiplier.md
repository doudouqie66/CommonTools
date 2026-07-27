---
title: FAnimNode_RotationMultiplier
---

# FAnimNode_RotationMultiplier

Simple controller that multiplies scalar value to the translationrotationscale of a single bone.

## Variables

| Name | Type | Description |
|------|------|-------------|
| TargetBone | FBoneReference | Name of bone to control. This is the main bone chain to modify from. |
| SourceBone | FBoneReference | Source to get transform from |
| Multiplier | float |  |
| RotationAxisToRefer | TEnumAsByte < EBoneAxis > |  |
| bIsAdditive | bool |  |