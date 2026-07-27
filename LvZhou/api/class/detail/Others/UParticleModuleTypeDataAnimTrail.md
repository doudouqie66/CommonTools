---
title: UParticleModuleTypeDataAnimTrail
language: cpp
---

# UParticleModuleTypeDataAnimTrail

> Inheritance: UParticleModuleTypeDataBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| bDeadTrailsOnDeactivate | uint32 | If true, when the system is deactivated, mark trails as dead. 	 	This means they |
| bEnablePreviousTangentRecalculation | uint32 | If true, recalculate the previous tangent when a new particle is spawned |
| bTangentRecalculationEveryFrame | uint32 | If true, recalculate tangents every frame to allow velocityacceleration to be ap |
| TilingDistance | float | The (estimated) covered distance to tile the 2nd UV set at. 	 	If 0.0, a second  |
| DistanceTessellationStepSize | float | The distance step size for tessellation. 	 	# Tessellation Points = TruncToInt(( |
| TangentTessellationStepSize | float | The tangent scalar for tessellation. 	 	This is the degree change in the tangent |
| WidthTessellationStepSize | float | The width step size for tessellation. 	 	This is the number of world units chang |