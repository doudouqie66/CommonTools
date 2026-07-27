---
title: FGrassVariety
---

# FGrassVariety

## Variables

| Name | Type | Description |
|------|------|-------------|
| GrassMesh | UStaticMesh * |  |
| GrassDensity | float | Instances per 10 square meters. |
| bUseGrid | bool | If true, use a jittered grid sequence for placement, otherwise use a halton sequ |
| PlacementJitter | float |  |
| StartCullDistance | int32 | The distance where instances will begin to fade out if using a PerInstanceFadeAm |
| EndCullDistance | int32 | The distance where instances will have completely faded out when using a PerInst |
| MinLOD | int32 | Specifies the smallest LOD that will be used for this component. 	  If -1 (defau |
| Scaling | EGrassScaling | Specifies grass instance scaling type |
| ScaleX | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a grass insta |
| ScaleY | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a grass insta |
| ScaleZ | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a grass insta |
| RandomRotation | bool | Whether the grass instances should be placed at random rotation (true) or all at |
| AlignToSurface | bool | Whether the grass instances should be tilted to the normal of the landscape (tru |
| bUseLandscapeLightmap | bool | Whether to use the landscape's lightmap when rendering the grass. |
| LightingChannels | FLightingChannels | Lighting channels that the grass will be assigned. Lights with matching channels |
| bReceivesDecals | bool | Whether the grass instances should receive decals. |