---
title: FAnimPhysConstraintSetup_UE5
---

# FAnimPhysConstraintSetup_UE5

Constraint setup struct, holds data required to build a physics constraint

## Variables

| Name | Type | Description |
|------|------|-------------|
| LinearXLimitType | AnimPhysLinearConstraintType_UE5 | Whether to limit the linear X axis |
| LinearYLimitType | AnimPhysLinearConstraintType_UE5 | Whether to limit the linear Y axis |
| LinearZLimitType | AnimPhysLinearConstraintType_UE5 | Whether to limit the linear Z axis |
| LinearAxesMin | FVector | Minimum linear movement per-axis (Set zero here and in the max limit to lock) |
| LinearAxesMax | FVector | Maximum linear movement per-axis (Set zero here and in the min limit to lock) |
| AngularConstraintType | AnimPhysAngularConstraintType_UE5 | Method to use when constraining angular motion |
| TwistAxis | AnimPhysTwistAxis | Axis to consider for twist when constraining angular motion (forward axis) |
| AngularTargetAxis | AnimPhysTwistAxis | The axis in the simulation pose to align to the Angular Target. 	  This is typic |
| ConeAngle | float | Angle to use when constraining using a cone |
| AngularLimitsMin | FVector |  |
| AngularLimitsMax | FVector |  |
| AngularTarget | FVector | The axis to align the angular spring constraint to in the animation pose. 	  Thi |
| AngularXAngle_DEPRECATED | float | X-axis limit for angular motion when using the "Angular" constraint type (Set to |
| AngularYAngle_DEPRECATED | float | Y-axis limit for angular motion when using the "Angular" constraint type (Set to |
| AngularZAngle_DEPRECATED | float | Z-axis limit for angular motion when using the "Angular" constraint type (Set to |