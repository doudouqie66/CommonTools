---
title: FHierarchicalSimplification
---

# FHierarchicalSimplification

## Variables

| Name | Type | Description |
|------|------|-------------|
| TransitionScreenSize | float | The screen radius an mesh object should reach before swapping to the LOD actor,  |
| OverrideDrawDistance | float |  |
| bUseOverrideDrawDistance | bool |  |
| bAllowSpecificExclusion | uint8 |  |
| bSimplifyMesh | bool | If this is true, it will simplify mesh but it is slower. 	 If false, it will jus |
| ProxySetting | FMeshProxySettings | Simplification Setting if bSimplifyMesh is true |
| MergeSetting | FMeshMergingSettings | Merge Mesh Setting if bSimplifyMesh is false |
| DesiredBoundRadius | float | Desired Bounding Radius for clustering - this is not guaranteed but used to calc |
| DesiredFillingPercentage | float | Desired Filling Percentage for clustering - this is not guaranteed but used to c |
| DesiredGridSize | float |  |
| DesiredGridOffset | float |  |
| DesiredGridVolume | TArray < FVector4 > |  |
| GridIgnoreStaticMeshs | TArray < FString > |  |
| MinNumberOfActorsToBuild | int32 | Min number of actors to build LODActor |
| bOnlyGenerateClustersForVolumes | bool | Min number of actors to build LODActor |
| bReusePreviousLevelClusters | bool | Will reuse the clusters generated for the previous (lower) HLOD level |