---
title: FLightmassPrimitiveSettings
---

# FLightmassPrimitiveSettings

Per-object settings for Lightmass

## Variables

| Name | Type | Description |
|------|------|-------------|
| bUseTwoSidedLighting | uint32 | If true, this object will be lit as if it receives light from both sides of its  |
| bShadowIndirectOnly | uint32 | If true, this object will only shadow indirect lighting. |
| bUseEmissiveForStaticLighting | uint32 | If true, allow using the emissive for static lighting. |
| bUseVertexNormalForHemisphereGather | uint32 | Typically the triangle normal is used for hemisphere gathering which prevents in |
| EmissiveLightFalloffExponent | float | Direct lighting falloff exponent for mesh area lights created from emissive area |
| EmissiveLightExplicitInfluenceRadius | float | Direct lighting influence radius. 	  The default is 0, which means the influence |
| EmissiveBoost | float | Scales the emissive contribution of all materials applied to this object. |
| DiffuseBoost | float | Scales the diffuse contribution of all materials applied to this object. |
| FullyOccludedSamplesFraction | float | Fraction of samples taken that must be occluded in order to reach full occlusion |