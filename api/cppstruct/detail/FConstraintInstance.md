---
title: FConstraintInstance
---

# FConstraintInstance

Container for a physics representation of an object.

## Variables

| Name | Type | Description |
|------|------|-------------|
| JointName | FName | Name of bone that this joint is associated with. |
| ConstraintBone1 | FName | Name of first bone (body) that this constraint is connecting.  	 	This will be t |
| ConstraintBone2 | FName | Name of second bone (body) that this constraint is connecting.  	 	This will be  |
| Pos1 | FVector | Location of constraint in Body1 reference frame. |
| PriAxis1 | FVector | Primary (twist) axis in Body1 reference frame. |
| SecAxis1 | FVector | Seconday axis in Body1 reference frame. Orthogonal to PriAxis1. |
| Pos2 | FVector | Location of constraint in Body2 reference frame. |
| PriAxis2 | FVector | Primary (twist) axis in Body2 reference frame. |
| SecAxis2 | FVector | Seconday axis in Body2 reference frame. Orthogonal to PriAxis2. |
| AngularRotationOffset | FRotator | Specifies the angular offset between the two frames of reference. By default lim |
| bScaleLinearLimits | uint32 | If true, linear limits scale using the absolute min of the 3d scale of the ownin |
| ProfileInstance | FConstraintProfileProperties |  |
| bDisableCollision_DEPRECATED | uint32 |  |
| bEnableProjection_DEPRECATED | uint32 |  |
| ProjectionLinearTolerance_DEPRECATED | float |  |
| ProjectionAngularTolerance_DEPRECATED | float |  |
| LinearXMotion_DEPRECATED | TEnumAsByte < enum ELinearConstraintMotion > |  |
| LinearYMotion_DEPRECATED | TEnumAsByte < enum ELinearConstraintMotion > |  |
| LinearZMotion_DEPRECATED | TEnumAsByte < enum ELinearConstraintMotion > |  |
| LinearLimitSize_DEPRECATED | float |  |
| bLinearLimitSoft_DEPRECATED | uint32 |  |
| LinearLimitStiffness_DEPRECATED | float |  |
| LinearLimitDamping_DEPRECATED | float |  |
| bLinearBreakable_DEPRECATED | uint32 |  |
| LinearBreakThreshold_DEPRECATED | float |  |
| AngularSwing1Motion_DEPRECATED | TEnumAsByte < enum EAngularConstraintMotion > |  |
| AngularTwistMotion_DEPRECATED | TEnumAsByte < enum EAngularConstraintMotion > |  |
| AngularSwing2Motion_DEPRECATED | TEnumAsByte < enum EAngularConstraintMotion > |  |
| bSwingLimitSoft_DEPRECATED | uint32 |  |
| bTwistLimitSoft_DEPRECATED | uint32 |  |
| Swing1LimitAngle_DEPRECATED | float |  |
| TwistLimitAngle_DEPRECATED | float |  |
| Swing2LimitAngle_DEPRECATED | float |  |
| SwingLimitStiffness_DEPRECATED | float |  |
| SwingLimitDamping_DEPRECATED | float |  |
| TwistLimitStiffness_DEPRECATED | float |  |
| TwistLimitDamping_DEPRECATED | float |  |
| bAngularBreakable_DEPRECATED | uint32 |  |
| AngularBreakThreshold_DEPRECATED | float |  |
| bLinearXPositionDrive_DEPRECATED | uint32 |  |
| bLinearXVelocityDrive_DEPRECATED | uint32 |  |
| bLinearYPositionDrive_DEPRECATED | uint32 |  |
| bLinearYVelocityDrive_DEPRECATED | uint32 |  |
| bLinearZPositionDrive_DEPRECATED | uint32 |  |
| bLinearZVelocityDrive_DEPRECATED | uint32 |  |
| bLinearPositionDrive_DEPRECATED | uint32 |  |
| bLinearVelocityDrive_DEPRECATED | uint32 |  |
| LinearPositionTarget_DEPRECATED | FVector |  |
| LinearVelocityTarget_DEPRECATED | FVector |  |
| LinearDriveSpring_DEPRECATED | float |  |
| LinearDriveDamping_DEPRECATED | float |  |
| LinearDriveForceLimit_DEPRECATED | float |  |
| bSwingPositionDrive_DEPRECATED | uint32 |  |
| bSwingVelocityDrive_DEPRECATED | uint32 |  |
| bTwistPositionDrive_DEPRECATED | uint32 |  |
| bTwistVelocityDrive_DEPRECATED | uint32 |  |
| bAngularSlerpDrive_DEPRECATED | uint32 |  |
| bAngularOrientationDrive_DEPRECATED | uint32 |  |
| bEnableSwingDrive_DEPRECATED | uint32 |  |
| bEnableTwistDrive_DEPRECATED | uint32 |  |
| bAngularVelocityDrive_DEPRECATED | uint32 |  |
| AngularPositionTarget_DEPRECATED | FQuat |  |
| AngularDriveMode_DEPRECATED | TEnumAsByte < EAngularDriveMode :: Type > |  |
| AngularOrientationTarget_DEPRECATED | FRotator |  |
| AngularVelocityTarget_DEPRECATED | FVector |  |
| AngularDriveSpring_DEPRECATED | float |  |
| AngularDriveDamping_DEPRECATED | float |  |
| AngularDriveForceLimit_DEPRECATED | float |  |