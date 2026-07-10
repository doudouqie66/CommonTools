---
title: UFoliageType
language: cpp
---

# UFoliageType

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| UpdateGuid | FGuid | A GUID that is updated every time the foliage type is modified,  	   so foliage  |
| Density | float | Foliage instances will be placed at this density, specified in instances per 100 |
| DensityAdjustmentFactor | float | The factor by which to adjust the density of instances. Values >1 will increase  |
| Radius | float | The minimum distance between foliage instances |
| Scaling | EFoliageScaling | Specifies foliage instance scaling behavior when painting. |
| ScaleX | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a foliage ins |
| ScaleY | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a foliage ins |
| ScaleZ | FFloatInterval | Specifies the range of scale, from minimum to maximum, to apply to a foliage ins |
| VertexColorMaskByChannel | FFoliageVertexColorChannelMask |  |
| VertexColorMask_DEPRECATED | TEnumAsByte < enum FoliageVertexColorMask > | When painting on static meshes, foliage instance placement can be limited to are |
| VertexColorMaskThreshold_DEPRECATED | float | Specifies the threshold value above which the static mesh vertex color value mus |
| VertexColorMaskInvert_DEPRECATED | uint32 | When unchecked, foliage instances will be placed only when the vertex color in t |
| ZOffset | FFloatInterval | Specifies a range from minimum to maximum of the offset to apply to a foliage in |
| AlignToNormal | uint32 | Whether foliage instances should have their angle adjusted away from vertical to |
| AlignMaxAngle | float | The maximum angle in degrees that foliage instances will be adjusted away from t |
| RandomYaw | uint32 | If selected, foliage instances will have a random yaw rotation around their vert |
| RandomPitchAngle | float | A random pitch adjustment can be applied to each instance, up to the specified a |
| GroundSlopeAngle | FFloatInterval | Foliage instances will only be placed on surfaces sloping in the specified angle |
| Height | FFloatInterval | The valid altitude range where foliage instances will be placed, specified using |
| LandscapeLayers | TArray < FName > | If a layer name is specified, painting on landscape will limit the foliage to ar |
| LandscapeLayer_DEPRECATED | FName |  |
| CollisionWithWorld | uint32 | If checked, an overlap test with existing world geometry is performed before eac |
| CollisionScale | FVector | The foliage instance's collision bounding box will be scaled by the specified am |
| MinimumLayerWeight | float | Specifies the minimum value above which the landscape layer weight value must be |
| MeshBounds | FBoxSphereBounds |  |
| LowBoundOriginRadius | FVector |  |
| Mobility | TEnumAsByte < EComponentMobility :: Type > | Mobility property to apply to foliage components |
| CullDistance | FInt32Interval | The distance where instances will begin to fade out if using a PerInstanceFadeAm |
| NearCullDistance | int32 |  |
| bIsFlyType | bool |  |
| bEnableStaticLighting_DEPRECATED | uint32 | Deprecated. Now use the Mobility setting to control staticdynamic lighting |
| CastShadow | uint32 | Controls whether the foliage should cast a shadow or not. |
| bAffectDynamicIndirectLighting | uint32 | Controls whether the foliage should inject light into the Light Propagation Volu |
| bAffectDistanceFieldLighting | uint32 | Controls whether the primitive should affect dynamic distance field lighting met |
| bCastDynamicShadow | uint32 | Controls whether the foliage should cast shadows in the case of non precomputed  |
| bCastStaticShadow | uint32 | Whether the foliage should cast a static shadow from shadow casting lights.  Thi |
| bCastShadowAsTwoSided | uint32 | Whether this foliage should cast dynamic shadows as if it were a two sided mater |
| bReceivesDecals | uint32 | Whether the foliage receives decals. |
| bOverrideLightMapRes | uint32 | Whether to override the lightmap resolution defined in the static mesh. |
| OverriddenLightMapRes | int32 | Overrides the lightmap resolution defined in the static mesh |
| LightmapType | ELightmapType | Controls the type of lightmap used for this component. |
| bUseAsOccluder | uint32 | If enabled, foliage will render a pre-pass which allows it to occlude other prim |
| BodyInstance | FBodyInstance | Custom collision for foliage |
| CustomNavigableGeometry | TEnumAsByte < EHasCustomNavigableGeometry :: Type > | Force navmesh |
| LightingChannels | FLightingChannels | Lighting channels that placed foliage will be assigned. Lights with matching cha |
| bRenderCustomDepth | uint32 | If true, the foliage will be rendered in the CustomDepth pass (usually used for  |
| CustomDepthStencilValue | int32 | Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Req |
| CollisionRadius | float | The CollisionRadius determines when two instances overlap. When two instances ov |
| ShadeRadius | float | The ShadeRadius determines when two instances overlap. If an instance can grow i |
| NumSteps | int32 | The number of times we age the species and spread its seeds. |
| InitialSeedDensity | float | Specifies the number of seeds to populate along 10 meters. The number is implici |
| AverageSpreadDistance | float | The average distance between the spreading instance and its seeds. For example,  |
| SpreadVariance | float | Specifies how much seed distance varies from the average. For example, a tree wi |
| SeedsPerStep | int32 | The number of seeds an instance will spread in a single step of the simulation. |
| DistributionSeed | int32 | The seed that determines placement of initial seeds. |
| MaxInitialSeedOffset | float | The seed that determines placement of initial seeds. |
| bCanGrowInShade | bool | If true, seeds of this type will ignore shade radius during overlap tests with o |
| bSpawnsInShade | bool | Whether new seeds are spawned exclusively in shade. Occurs in a second pass afte |
| MaxInitialAge | float | Allows a new seed to be older than 0 when created. New seeds will be randomly as |
| MaxAge | float | Specifies the oldest a seed can be. After reaching this age the instance will st |
| OverlapPriority | float | When two instances overlap we must determine which instance to remove.  	  The i |
| ProceduralScale | FFloatInterval | The scale range of this type when being procedurally generated. Configured with  |
| ScaleCurve | FRuntimeFloatCurve | Instance scale factor as a function of normalized age (i.e. Current Age  Max Age |
| ChangeCount | int32 |  |
| ReapplyDensity | uint32 | If checked, the density of foliage instances already placed will be adjusted by  |
| ReapplyRadius | uint32 | If checked, foliage instances not meeting the new Radius constraint will be remo |
| ReapplyAlignToNormal | uint32 | If checked, foliage instances will have their normal alignment adjusted by the R |
| ReapplyRandomYaw | uint32 | If checked, foliage instances will have their yaw adjusted by the Reapply tool |
| ReapplyScaling | uint32 | If checked, foliage instances will have their scale adjusted to fit the specifie |
| ReapplyScaleX | uint32 | If checked, foliage instances will have their X scale adjusted by the Reapply to |
| ReapplyScaleY | uint32 | If checked, foliage instances will have their Y scale adjusted by the Reapply to |
| ReapplyScaleZ | uint32 | If checked, foliage instances will have their Z scale adjusted by the Reapply to |
| ReapplyRandomPitchAngle | uint32 | If checked, foliage instances will have their pitch adjusted by the Reapply tool |
| ReapplyGroundSlope | uint32 | If checked, foliage instances not meeting the ground slope condition will be rem |
| ReapplyHeight | uint32 | If checked, foliage instances not meeting the valid Z height condition will be r |
| ReapplyLandscapeLayers | uint32 | If checked, foliage instances painted on areas that do not have the appropriate  |
| ReapplyZOffset | uint32 | If checked, foliage instances will have their Z offset adjusted by the Reapply t |
| ReapplyCollisionWithWorld | uint32 | If checked, foliage instances will have an overlap test with the world reapplied |
| ReapplyVertexColorMask | uint32 | If checked, foliage instances no longer matching the vertex color constraint wil |
| bEnableDensityScaling | uint32 | Whether this foliage type should be affected by the Engine Scalability system's  |