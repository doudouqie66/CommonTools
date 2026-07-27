---
title: FAnimNode_Trail
---

# FAnimNode_Trail

Trail Controller

## Variables

| Name | Type | Description |
|------|------|-------------|
| TrailBone | FBoneReference | Reference to the active bone in the hierarchy to modify. |
| ChainLength | int32 | Number of bones above the active one in the hierarchy to modify. ChainLength sho |
| ChainBoneAxis | TEnumAsByte < EAxis :: Type > | Axis of the bones to point along trail. |
| bInvertChainBoneAxis | bool | Invert the direction specified in ChainBoneAxis. |
| TrailRelaxation_DEPRECATED | float | How quickly we 'relax' the bones to their animated positions. Deprecated. Replac |
| TrailRelaxationSpeed | FRuntimeFloatCurve | How quickly we 'relax' the bones to their animated positions. Time 0 will map to |
| bLimitStretch | bool | Limit the amount that a bone can stretch from its ref-pose length. |
| StretchLimit | float | If bLimitStretch is true, this indicates how long a bone can stretch beyond its  |
| FakeVelocity | FVector | 'Fake' velocity applied to bones. |
| bActorSpaceFakeVel | bool | Whether 'fake' velocity should be applied in actor or world space. |
| BaseJoint | FBoneReference | Base Joint to calculate velocity from. If none, it will use Component's World Tr |