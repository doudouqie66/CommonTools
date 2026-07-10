---
title: AWorldSettings
language: cpp
---

# AWorldSettings

Actor containing all script accessible world properties.

> Inheritance: AInfo -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| BlueprintContainer | TSubclassOf < AActor > |  |
| SaveLocOffset | FVector |  |
| bEnableFOVDistanceCulling | uint32 | FOV Distance Culling |
| FOVCulling | TArray < FVector2D > |  |
| bEnableWorldBoundsChecks | uint32 | DEFAULT BASIC PHYSICS SETTINGS  	 If true, enables CheckStillInWorld checks |
| bEnableNavigationSystem | uint32 | if set to false navigation system will not get created (and all navigation funct |
| bEnableAISystem | uint32 | if set to false AI system will not get created. Use it to disable all AI-related |
| bEnalbeLevelLoadConditionControl | uint32 |  |
| bEnableWorldComposition | uint32 | Enables tools for composing a tiled world. 	  Level has to be saved and all sub- |
| bWorldCompositionPIESupportLevelRotation | uint32 |  |
| bPIECloseFixupLazyPointers | uint32 |  |
| bEnableRescanRestriction | uint32 |  |
| bOnlyIncludeWhiteList | uint32 |  |
| bAlwaysExcludeBlackList | uint32 |  |
| WhiteListRescanFolders | TArray < FString > |  |
| WhiteListRescanLevelPaths | TArray < FString > |  |
| BlackListRescanFolders | TArray < FString > |  |
| BlackListRescanLevelPaths | TArray < FString > |  |
| bUseClientSideLevelStreamingVolumes | uint32 | Enables client-side streaming volumes instead of server-side. 	  Expected usage  |
| bEnableWorldOriginRebasing | uint32 | World origin will shift to a camera position when camera goes far away from curr |
| bWorldGravitySet | uint32 | if set to true, when we call GetGravityZ we assume WorldGravityZ has already bee |
| bGlobalGravitySet | uint32 | If set to true we will use GlobalGravityZ instead of project setting DefaultGrav |
| KillZ | float |  |
| KillZDamageType | TSubclassOf < UDamageType > |  |
| WorldGravityZ | float |  |
| GlobalGravityZ | float |  |
| DefaultPhysicsVolumeClass | TSubclassOf < ADefaultPhysicsVolume > |  |
| PhysicsCollisionHandlerClass | TSubclassOf < UPhysicsCollisionHandler > |  |
| DefaultGameMode | TSubclassOf < AGameModeBase > | GAMEMODE SETTINGS  	 The default GameMode to use when starting this map in the g |
| GameNetworkManagerClass | TSubclassOf < AGameNetworkManager > | Class of GameNetworkManager to spawn for network games |
| StreamVolumeExManagerClass | TSubclassOf < AStreamVolumeExManager > |  |
| PackedLightAndShadowMapTextureSize | int32 | RENDERING SETTINGS  	 Maximum size of textures for packed light and shadow maps |
| bMinimizeBSPSections | uint32 | Causes the BSP build to generate as few sections as possible. 	  This is useful  |
| DefaultColorScale | FVector | Default color scale for the level |
| DefaultMaxDistanceFieldOcclusionDistance | float | Max occlusion distance used by mesh distance fields, overridden if there is a mo |
| GlobalDistanceFieldViewDistance | float | Distance from the camera that the global distance field should cover. |
| bEnableUpdateTransformViewTranslated | uint32 |  |
| bEnableWorldComposition2DLoading | uint32 |  |
| MaxWorldSize | float |  |
| RegionSizeNear | int32 |  |
| RegionSizeFar | int32 |  |
| RegionXAdd | bool |  |
| RegionYAdd | bool |  |
| UnlimitedRegionZ | bool |  |
| Graduation | int32 |  |
| CompositionSize | int32 |  |
| DynamicIndirectShadowsSelfShadowingIntensity | float | Controls the intensity of self-shadowing from capsule indirect shadows. 	  These |
| bPrecomputeVisibility | uint32 | PRECOMPUTED VISIBILITY SETTINGS  	 	  Whether to place visibility cells inside P |
| bPlaceCellsOnlyAlongCameraTracks | uint32 | Whether to place visibility cells only along camera tracks or only above shadow  |
| VisibilityCellSize | int32 | World space size of precomputed visibility cells in x and y. 	  Smaller sizes pr |
| PlayAreaHeight | float | Play Area Height ( Cell Z |
| DynamicCellSize | FVector2D | Dynamic Cell Size ( Dynamic Cell XY, Z |
| PrecomputedVisibilitySettings | FLightmassPrecomputedVisibilitySettings |  |
| VisibilityAggressiveness | TEnumAsByte < enum EVisibilityAggressiveness > | Determines how aggressive precomputed visibility should be. 	  More aggressive s |
| bForceNoPrecomputedLighting | uint32 | LIGHTMASS RELATED SETTINGS  	 	  Whether to force lightmaps and other precompute |
| bUseLightmassSettingsIsolation | uint32 |  |
| LightmassSettings | FLightmassWorldInfoSettings |  |
| LightmassSettingsForPC | FLightmassWorldInfoSettings |  |
| IdeaBakingSettings | FIdeaBakingWorldInfoSettings |  |
| SurfelRayTracingSettings | FSurfelRayTracingSettings |  |
| DefaultReverbSettings | FReverbSettings | AUDIO SETTINGS  	 Default reverb settings used by audio volumes. |
| DefaultAmbientZoneSettings | FInteriorSettings | Default interior settings used by audio volumes. |
| DefaultBaseSoundMix | USoundMix * | Default Base SoundMix. |
| WorldToMeters | float | DEFAULT SETTINGS  	 scale of 1uu to 1m in real world measurements, for HMD and o |
| MonoCullingDistance | float | Distance from the player after which content will be rendered in mono if monosco |
| BookMarks | UBookMark * | EDITOR ONLY SETTINGS  	 Level Bookmarks: 10 should be MAX_BOOKMARK_NUMBER @fixme |
| TimeDilation | float | Normally 1 - scales real time passage. 	  Warning - most use cases should use Ge |
| MatineeTimeDilation | float |  |
| DemoPlayTimeDilation | float |  |
| MinGlobalTimeDilation | float | Lowest acceptable global time dilation. |
| MaxGlobalTimeDilation | float | Highest acceptable global time dilation. |
| MinUndilatedFrameTime | float | Smallest possible frametime, not considering dilation. Equiv to 1FastestFPS. |
| MaxUndilatedFrameTime | float | Largest possible frametime, not considering dilation. Equiv to 1SlowestFPS. |
| Pauser | APlayerState * |  |
| bHighPriorityLoading | uint32 | when this flag is set, more time is allocated to background loading (replicated) |
| bHighPriorityLoadingLocal | uint32 | copy of bHighPriorityLoading that is not replicated, for clientside-only loading |
| ReplicationViewers | TArray < struct FNetViewer > | valid only during replication - information about the player(s) being replicated |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| LODRelativeDistances | TArray < float > |  |
| bEnablestreamingLevelLOD | bool |  |
| WorldCompositionNums | int32 |  |
| CompositionBlockLength | int32 |  |
| OriginOfTheRegion | FVector |  |
| bEnableObjectPool | bool |  |
| LevelReorganizationData | UDataAsset * |  |
| bEnableHierarchicalLODSystem | uint32 | if set to true, hierarchical LODs will be built, which will create hierarchical  |
| HLODSetupAsset | TSoftClassPtr < UHierarchicalLODSetup > | If set overrides the level settings and global project settings |
| OverrideBaseMaterial | TSoftObjectPtr < UMaterialInterface > | If set overrides the project-wide base material used for Proxy Materials |
| HierarchicalLODSetup | TArray < struct FHierarchicalSimplification > | Hierarchical LOD Setup |
| NumHLODLevels | int32 |  |
| bGenerateSingleClusterForLevel | uint32 | if set to true, all eligible actors in this level will be added to a single clus |

## Functions

### SaveEntireWorld

**Return:** void 

### OnRep_WorldGravityZ

**Return:** void