---
title: FConstraintProfileProperties
---

# FConstraintProfileProperties

Container for properties of a physics constraint that can be easily swapped at runtime. This is useful for switching different setups when going from ragdoll to standup for example

## Variables

| Name | Type | Description |
|------|------|-------------|
| ProjectionLinearTolerance | float | Linear tolerance value in world units. If the distance error exceeds this tolere |
| ProjectionAngularTolerance | float | Angular tolerance value in world units. If the distance error exceeds this toler |
| LinearBreakThreshold | float | Force needed to break the distance constraint. |
| AngularBreakThreshold | float | Torque needed to break the joint. |
| LinearLimit | FLinearConstraint |  |
| ConeLimit | FConeConstraint |  |
| TwistLimit | FTwistConstraint |  |
| LinearDrive | FLinearDriveConstraint |  |
| AngularDrive | FAngularDriveConstraint |  |
| bDisableCollision | uint8 |  |
| bParentDominates | uint8 |  |
| bEnableProjection | uint8 | If distance error between bodies exceeds 0.1 units, or rotation error exceeds 10 |
| bAngularBreakable | uint8 | Whether it is possible to break the joint with angular force. |
| bLinearBreakable | uint8 | Whether it is possible to break the joint with linear force. |