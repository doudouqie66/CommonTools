---
title: UParticleModuleTypeDataRibbon
language: cpp
---

# UParticleModuleTypeDataRibbon

> Inheritance: UParticleModuleTypeDataBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxTessellationBetweenParticles | int32 | The maximum amount to tessellate between two particles of the trail.  	 	Dependi |
| SheetsPerTrail | int32 | The number of sheets to render for the trail. |
| MaxTrailCount | int32 | The number of live trails |
| MaxParticleInTrailCount | int32 | Max particles per trail |
| bDeadTrailsOnDeactivate | uint32 | If true, when the system is deactivated, mark trails as dead. 	 	This means they |
| bDeadTrailsOnSourceLoss | uint32 | If true, when the source of a trail is 'lost' (ie, the source particle 	 	dies), |
| bClipSourceSegement | uint32 | If true, do not join the trail to the source position |
| bEnablePreviousTangentRecalculation | uint32 | If true, recalculate the previous tangent when a new particle is spawned |
| bTangentRecalculationEveryFrame | uint32 | If true, recalculate tangents every frame to allow velocityacceleration to be ap |
| bSpawnInitialParticle | uint32 | If true, ribbon will spawn a particle when it first starts moving |
| RenderAxis | TEnumAsByte < enum ETrailsRenderAxisOption > | The 'render' axis for the trail (what axis the trail is stretched out on) 	 		Tr |
| TangentSpawningScalar | float | The tangent scalar for spawning. 	 	Angles between tangent A and B are mapped to |
| bRenderGeometry | uint32 | If true, render the trail geometry (this should typically be on) |
| bRenderSpawnPoints | uint32 | If true, render stars at each spawned particle point along the trail |
| bRenderTangents | uint32 | If true, render a line showing the tangent at each spawned particle point along  |
| bRenderTessellation | uint32 | If true, render the tessellated path between spawned particles |
| TilingDistance | float | The (estimated) covered distance to tile the 2nd UV set at. 	 	If 0.0, a second  |
| DistanceTessellationStepSize | float | The distance step size for tessellation. 	 	# Tessellation Points = TruncToInt(( |
| bEnableTangentDiffInterpScale | uint32 | If this flag is enabled, the system will scale the number of interpolated vertic |
| TangentTessellationScalar | float | The tangent scalar for tessellation. 	 	Angles between tangent A and B are mappe |