---
title: UParticleModuleBeamModifier
language: cpp
---

# UParticleModuleBeamModifier

> Inheritance: UParticleModuleBeamBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| ModifierType | TEnumAsByte < enum BeamModifierType > | Whether this module modifies the Source or the Target. |
| PositionOptions | FBeamModifierOptions | The options associated with the position. |
| Position | FRawDistributionVector | The value to use when modifying the position. |
| TangentOptions | FBeamModifierOptions | The options associated with the Tangent. |
| Tangent | FRawDistributionVector | The value to use when modifying the Tangent. |
| bAbsoluteTangent | uint32 | If true, don't transform the tangent modifier into the tangent basis. |
| StrengthOptions | FBeamModifierOptions | The options associated with the Strength. |
| Strength | FRawDistributionFloat | The value to use when modifying the Strength. |