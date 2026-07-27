---
title: FClothConfig
---

# FClothConfig

Holds initial, asset level config for clothing actors.

## Variables

| Name | Type | Description |
|------|------|-------------|
| WindMethod | EClothingWindMethod |  |
| VerticalConstraintConfig | FClothConstraintSetup |  |
| HorizontalConstraintConfig | FClothConstraintSetup |  |
| BendConstraintConfig | FClothConstraintSetup |  |
| ShearConstraintConfig | FClothConstraintSetup |  |
| SelfCollisionRadius | float |  |
| SelfCollisionStiffness | float |  |
| SelfCollisionCullScale | float | Scale to use for the radius of the culling checks for self collisions. 	  Any ot |
| Damping | FVector |  |
| Friction | float |  |
| WindDragCoefficient | float |  |
| WindLiftCoefficient | float |  |
| LinearDrag | FVector |  |
| AngularDrag | FVector |  |
| LinearInertiaScale | FVector |  |
| AngularInertiaScale | FVector |  |
| CentrifugalInertiaScale | FVector |  |
| SolverFrequency | float |  |
| StiffnessFrequency | float |  |
| GravityScale | float |  |
| TetherStiffness | float |  |
| TetherLimit | float |  |
| CollisionThickness | float |  |