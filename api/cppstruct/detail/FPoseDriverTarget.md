---
title: FPoseDriverTarget
---

# FPoseDriverTarget

Information about each target in the PoseDriver

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoneTransforms | TArray < FPoseDriverTransform > | Translation of this target |
| TargetRotation | FRotator | Rotation of this target |
| TargetScale | float | Scale applied to this target's function - a larger value will activate this targ |
| bApplyCustomCurve | bool | If we should apply a custom curve mapping to how this target activates |
| CustomCurve | FRichCurve | Custom curve mapping to apply if bApplyCustomCurve is true |
| DrivenName | FName | Name of item to drive - depends on DriveOutput setting.   	 	If DriveOutput is D |