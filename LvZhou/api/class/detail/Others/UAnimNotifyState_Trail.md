---
title: UAnimNotifyState_Trail
language: cpp
---

# UAnimNotifyState_Trail

> Inheritance: UAnimNotifyState

## Variables

| Name | Type | Description |
|------|------|-------------|
| PSTemplate | UParticleSystem * | The particle system to use for this trail. |
| FirstSocketName | FName | Name of the first socket defining this trail. |
| SecondSocketName | FName | Name of the second socket defining this trail. |
| FirstSocketRelativeOffset | FTransform |  |
| SecondSocketRelativeOffset | FTransform |  |
| WidthScaleMode | TEnumAsByte < enum ETrailWidthMode > |  |
| WidthScaleCurve | FName | Name of the curve to drive the width scale. |
| bRecycleSpawnedSystems | uint32 |  |
| bRenderGeometry | uint32 | If true, render the trail geometry (this should typically be on) |
| bRenderSpawnPoints | uint32 | If true, render stars at each spawned particle point along the trail |
| bRenderTangents | uint32 | If true, render a line showing the tangent at each spawned particle point along  |
| bRenderTessellation | uint32 | If true, render the tessellated path between spawned particles |

## Functions

### OverridePSTemplate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MeshComp | USkeletalMeshComponent *  |  |
| Animation | UAnimSequenceBase * |  |

**Return:** UParticleSystem *