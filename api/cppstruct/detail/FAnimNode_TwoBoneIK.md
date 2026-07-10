---
title: FAnimNode_TwoBoneIK
---

# FAnimNode_TwoBoneIK

Simple 2 Bone IK Controller.

## Variables

| Name | Type | Description |
|------|------|-------------|
| IKBone | FBoneReference | Name of bone to control. This is the main bone chain to modify from. |
| bAllowStretching | uint32 | Should stretching be allowed, to be prevent over extension |
| StartStretchRatio | float | Limits to use if stretching is allowed. This value determines when to start stre |
| MaxStretchScale | float | Limits to use if stretching is allowed. This value determins what is the max str |
| StretchLimits_DEPRECATED | FVector2D | Limits to use if stretching is allowed - old property DEPRECATED |
| bTakeRotationFromEffectorSpace | uint32 | Set end bone to use End Effector rotation |
| bMaintainEffectorRelRot | uint32 | Keep local rotation of end bone |
| EffectorLocationSpace | TEnumAsByte < enum EBoneControlSpace > | Reference frame of Effector Location. |
| EffectorSpaceBoneName_DEPRECATED | FName | If EffectorLocationSpace is a bone, this is the bone to use. |
| EffectorLocation | FVector | Effector Location. Target Location to reach. |
| EffectorTarget | FBoneSocketTarget |  |
| JointTargetLocationSpace | TEnumAsByte < enum EBoneControlSpace > | Reference frame of Joint Target Location. |
| JointTargetLocation | FVector | Joint Target Location. Location used to orient Joint bone. |
| JointTargetSpaceBoneName_DEPRECATED | FName | If JointTargetSpaceBoneName is a bone, this is the bone to use. |
| JointTarget | FBoneSocketTarget |  |
| bAllowTwist | bool | Whether or not to apply twist on the chain of joints. This clears the twist valu |
| TwistAxis | FAxis | Specify which axis it's aligned. Used when removing twist |
| bNoTwist_DEPRECATED | bool | Whether or not to apply twist on the chain of joints. This clears the twist valu |