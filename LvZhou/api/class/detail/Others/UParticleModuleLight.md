---
title: UParticleModuleLight
language: cpp
---

# UParticleModuleLight

> Inheritance: UParticleModuleLightBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| bUseInverseSquaredFalloff | bool | Whether to use physically based inverse squared falloff from the light.  If unch |
| bAffectsTranslucency | bool | Whether lights from this module should affect translucency. 	  Use with caution. |
| bPreviewLightRadius | bool | Will draw wireframe spheres to preview the light radius if enabled. 	  Note: thi |
| SpawnFraction | float | Fraction of particles in this emitter to create lights on. |
| ColorScaleOverLife | FRawDistributionVector | Scale that is applied to the particle's color to calculate the light's color, an |
| BrightnessOverLife | FRawDistributionFloat | Brightness scale for the light, which can be setup as a curve over the particle' |
| RadiusScale | FRawDistributionFloat | Scales the particle's radius, to calculate the light's radius. |
| LightExponent | FRawDistributionFloat | Provides the light's exponent when inverse squared falloff is disabled. |
| LightingChannels | FLightingChannels | Channels that this light should affect. 	 Only affect high quality lights 	 Thes |
| VolumetricScatteringIntensity | float | Intensity of the volumetric scattering from this light.  This scales Intensity a |
| bHighQualityLights | bool | Converts the particle lights into high quality lights as if they came from a Poi |
| bShadowCastingLights | bool | Whether to cast shadows from the particle lights.  Requires High Quality Lights  |