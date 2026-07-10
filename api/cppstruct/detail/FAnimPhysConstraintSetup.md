---
title: FAnimPhysConstraintSetup
---

# FAnimPhysConstraintSetup

Constraint setup struct, holds data required to build a physics constraint

## Variables

| Name | Type | Description |
|------|------|-------------|
| LinearXLimitType | AnimPhysLinearConstraintType | Whether to limit the linear X axis |
| LinearYLimitType | AnimPhysLinearConstraintType | Whether to limit the linear Y axis |
| LinearZLimitType | AnimPhysLinearConstraintType | Whether to limit the linear Z axis |
| LinearAxesMin | FVector | Minimum linear movement per-axis (Set zero here and in the max limit to lock) |
| LinearAxesMax | FVector | Maximum linear movement per-axis (Set zero here and in the min limit to lock) |
| AngularConstraintType | AnimPhysAngularConstraintType | Method to use when constraining angular motion |
| TwistAxis | AnimPhysTwistAxis | Axis to consider for twist when constraining angular motion (forward axis) |
| ConeAngle | float | Angle to use when constraining using a cone |
| AngularXAngle_DEPRECATED | float | X-axis limit for angular motion when using the "Angular" constraint type (Set to |
| AngularYAngle_DEPRECATED | float | Y-axis limit for angular motion when using the "Angular" constraint type (Set to |
| AngularZAngle_DEPRECATED | float | Z-axis limit for angular motion when using the "Angular" constraint type (Set to |
| AngularLimitsMin | FVector |  |
| AngularLimitsMax | FVector |  |
| AngularTargetAxis | AnimPhysTwistAxis | Axis on body1 to match to the angular target direction. |
| AngularTarget | FVector | Target direction to face for body1 (in body0 local space) |
| bLinearFullyLocked | bool | The values below are calculated on initialisation and used when building the lim |