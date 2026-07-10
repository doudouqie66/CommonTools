---
title: UParticleModuleTypeDataBeam2
language: cpp
---

# UParticleModuleTypeDataBeam2

> Inheritance: UParticleModuleTypeDataBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| BeamMethod | TEnumAsByte < enum EBeam2Method > | The method with which to form the beam(s). Must be one of the following: 	 		PEB |
| TextureTile | int32 | The number of times to tile the texture along each beam.  	   Overridden by Text |
| TextureTileDistance | float | The distance per texture tile.  	 	1st UV set only. 2nd UV set does not Tile. |
| Sheets | int32 | The number of sheets to render |
| MaxBeamCount | int32 | The number of live beams |
| Speed | float | The speed at which the beam should move from source to target when firing up. 	  |
| InterpolationPoints | int32 | Indicates whether the beam should be interpolated. 	      <= 0 --> no 	      >   |
| bAlwaysOn | uint32 | If true, there will ALWAYS be a beam... |
| UpVectorStepSize | int32 | The approach to use for determining the Up vector(s) for the beam. 	  	 	0 indic |
| BranchParentName | FName | The name of the emitter to branch from (if mode is PEB2M_Branch) 	  MUST BE IN T |
| Distance | FRawDistributionFloat | The distance along the X-axis to stretch the beam 	 	Distance is only used if Be |
| TaperMethod | TEnumAsByte < enum EBeamTaperMethod > | Tapering mode - one of the following: 	 	PEBTM_None		- No tapering is applied 	  |
| TaperFactor | FRawDistributionFloat | Tapering factor, 0 = source of beam, 1 = target |
| TaperScale | FRawDistributionFloat | Tapering scaling 	 	This is intended to be either a constant, uniform or a Parti |
| RenderGeometry | uint32 |  |
| RenderDirectLine | uint32 |  |
| RenderLines | uint32 |  |
| RenderTessellation | uint32 |  |