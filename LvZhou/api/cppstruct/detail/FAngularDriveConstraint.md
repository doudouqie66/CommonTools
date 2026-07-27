---
title: FAngularDriveConstraint
---

# FAngularDriveConstraint

Angular Drive

## Variables

| Name | Type | Description |
|------|------|-------------|
| TwistDrive | FConstraintDrive | Controls the twist (roll) constraint drive between current orientationvelocity a |
| SwingDrive | FConstraintDrive | Controls the cone constraint drive between current orientationvelocity and targe |
| SlerpDrive | FConstraintDrive | Controls the SLERP (spherical lerp) drive between current orientationvelocity an |
| OrientationTarget | FRotator | Target orientation relative to the the body reference frame. |
| AngularVelocityTarget | FVector | Target angular velocity relative to the body reference frame. |
| AngularDriveMode | TEnumAsByte < enum EAngularDriveMode :: Type > | Whether motors use SLERP (spherical lerp) or decompose into a Swing motor (cone  |