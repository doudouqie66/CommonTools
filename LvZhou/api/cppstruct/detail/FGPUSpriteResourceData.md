---
title: FGPUSpriteResourceData
---

# FGPUSpriteResourceData

The source data for runtime resources.

## Variables

| Name | Type | Description |
|------|------|-------------|
| QuantizedColorSamples | TArray < FColor > | Quantized color samples. |
| QuantizedMiscSamples | TArray < FColor > | Quantized samples for misc curve attributes to be evaluated at runtime. |
| QuantizedSimulationAttrSamples | TArray < FColor > | Quantized samples for simulation attributes. |
| ColorScale | FVector4 | Scale and bias to be applied to the color of sprites. |
| ColorBias | FVector4 |  |
| QuantizedColorSamplesHDR | TArray < FColor > |  |
| ColorScaleHDR | FVector4 |  |
| ColorBiasHDR | FVector4 |  |
| MiscScale | FVector4 | Scale and bias to be applied to the misc curve. |
| MiscBias | FVector4 |  |
| SimulationAttrCurveScale | FVector4 | Scale and bias to be applied to the simulation attribute curves. |
| SimulationAttrCurveBias | FVector4 |  |
| SubImageSize | FVector4 | Size of subimages. X:SubImageCountH Y:SubImageCountV Z:1SubImageCountH W:1SubIma |
| SizeBySpeed | FVector4 | SizeBySpeed parameters. XY=SpeedScale ZW=MaxSpeedScale. |
| ConstantAcceleration | FVector | Constant acceleration to apply to particles. |
| OrbitOffsetBase | FVector | Offset at which to orbit. |
| OrbitOffsetRange | FVector |  |
| OrbitFrequencyBase | FVector | Frequency at which the particle orbits around each axis. |
| OrbitFrequencyRange | FVector |  |
| OrbitPhaseBase | FVector | Phase offset of orbit around each axis. |
| OrbitPhaseRange | FVector |  |
| GlobalVectorFieldScale | float | Scale to apply to global vector fields. |
| GlobalVectorFieldTightness | float | Tightness override value for the global vector fields. |
| PerParticleVectorFieldScale | float | Scale to apply to per-particle vector field scale. |
| PerParticleVectorFieldBias | float | Bias to apply to per-particle vector field scale. |
| DragCoefficientScale | float | Scale to apply to per-particle drag coefficient. |
| DragCoefficientBias | float | Bias to apply to per-particle drag coefficient. |
| ResilienceScale | float | Scale to apply to per-particle damping factor. |
| ResilienceBias | float | Bias to apply to per-particle damping factor. |
| CollisionRadiusScale | float | Scale to apply to per-particle size for collision. |
| CollisionRadiusBias | float | Bias to apply to per-particle size for collision. |
| CollisionTimeBias | float | Bias applied to relative time upon collision. |
| CollisionRandomSpread | float | Control on reflection's random distribution spread. |
| CollisionRandomDistribution | float | Control on reflection's random distribution when colliding. (1=uniform distribut |
| OneMinusFriction | float | One minus the coefficient of friction applied to particles upon collision. |
| RotationRateScale | float | Scale to apply to per-particle rotation rate. |
| CameraMotionBlurAmount | float | How much to stretch sprites based on camera motion blur. |
| ScreenAlignment | TEnumAsByte < enum EParticleScreenAlignment > | Screen alignment for particles. |
| LockAxisFlag | TEnumAsByte < enum EParticleAxisLock > | The method for locking the particles to a particular axis. |
| PivotOffset | FVector2D | Pivot offset in UV space for placing the verts of each particle. |
| bRemoveHMDRoll | uint32 | If true, removes the HMD view roll (e.g. in VR) |
| MinFacingCameraBlendDistance | float | The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_Square |
| MaxFacingCameraBlendDistance | float | The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_FacingCameraPos |