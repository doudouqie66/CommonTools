---
title: UPhysicalMaterial
language: cpp
---

# UPhysicalMaterial

Physical materials are used to define the response of a physical object when interacting dynamically with the world.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Friction | float | Friction value of surface, controls how easily things can slide on this surface  |
| FrictionCombineMode | TEnumAsByte < EFrictionCombineMode :: Type > | Friction combine mode, controls how friction is computed for multiple materials. |
| bOverrideFrictionCombineMode | bool | If set we will use the FrictionCombineMode of this material, instead of the Fric |
| Restitution | float | Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoi |
| RestitutionCombineMode | TEnumAsByte < EFrictionCombineMode :: Type > | Restitution combine mode, controls how restitution is computed for multiple mate |
| bOverrideRestitutionCombineMode | bool | If set we will use the RestitutionCombineMode of this material, instead of the R |
| Density | float | Used with the shape of the object to calculate its mass properties. The higher t |
| RaiseMassToPower | float | Used to adjust the way that mass increases as objects get larger. This is applie |
| DestructibleDamageThresholdScale | float | How much to scale the damage threshold by on any destructible we are applied to |
| PhysicalMaterialProperty | UDEPRECATED_PhysicalMaterialPropertyBase * | UPROPERTY(deprecated) |
| SurfaceType | TEnumAsByte < EPhysicalSurface > | To edit surface type for your project, use ProjectSettingsPhysicsPhysicalSurface |
| TireFrictionScale | float | DEPRECATED - Overall tire friction scalar for every type of tire. This value is  |
| TireFrictionScales | TArray < FTireFrictionScalePair > | DEPRECATED - Tire friction scales for specific types of tires. These values are  |