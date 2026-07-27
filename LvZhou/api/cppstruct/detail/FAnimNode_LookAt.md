---
title: FAnimNode_LookAt
---

# FAnimNode_LookAt

Simple controller that make a bone to look at the point or another bone

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoneToModify | FBoneReference | Name of bone to control. This is the main bone chain to modify from. |
| LookAtBone_DEPRECATED | FBoneReference | Target Bone to look at - You can use  LookAtLocation if you need offset from thi |
| LookAtSocket_DEPRECATED | FName |  |
| LookAtTarget | FBoneSocketTarget | Target socket to look at. Used if LookAtBone is empty. - You can use  LookAtLoca |
| LookAtLocation | FVector | Target Offset. It's in world space if LookAtBone is empty or it is based on Look |
| LookAtAxis_DEPRECATED | TEnumAsByte < EAxisOption :: Type > | Look at axis, which axis to align to look at point |
| CustomLookAtAxis_DEPRECATED | FVector | Custom look up axis in local space. Only used if LookAtAxis==EAxisOption::Custom |
| LookAt_Axis | FAxis |  |
| bUseLookUpAxis | bool | Whether or not to use Look up axis |
| LookUpAxis_DEPRECATED | TEnumAsByte < EAxisOption :: Type > | Look up axis in local space |
| CustomLookUpAxis_DEPRECATED | FVector | Custom look up axis in local space. Only used if LookUpAxis==EAxisOption::Custom |
| LookUp_Axis | FAxis |  |
| LookAtClamp | float | Look at Clamp value in degree - if you're look at axis is Z, only X, Y degree of |
| InterpolationType | TEnumAsByte < EInterpolationBlend :: Type > |  |
| InterpolationTime | float |  |
| InterpolationTriggerThreashold | float |  |