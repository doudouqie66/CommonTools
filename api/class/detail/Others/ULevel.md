---
title: ULevel
language: cpp
---

# ULevel

A Level is a collection of Actors (lights, volumes, mesh instances etc.).
  Multiple Levels can be loaded and unloaded into the World to create a streaming experience.
 
  @see UActor

> Inheritance: UObject -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| OwningWorld | UWorld * | The World that has this level in its Levels array. 	  This is not the same as Ge |
| Model | UModel * | BSP UModel. |
| ModelComponents | TArray < UModelComponent * > | BSP Model components used for rendering. |
| ActorCluster | ULevelActorContainer * |  |
| NumTextureStreamingUnbuiltComponents | int32 | Num of components missing valid texture streaming data. Updated in map check. |
| NumTextureStreamingDirtyResources | int32 | Num of resources that have changed since the last texture streaming build. Updat |
| LevelScriptActor | ALevelScriptActor * | The level scripting actor, created by instantiating the class from LevelScriptBl |
| NavListStart | ANavigationObjectBase * | Start and end of the navigation list for this level, used for quickly fixing up  |
| NavListEnd | ANavigationObjectBase * |  |
| NavDataChunks | TArray < UNavigationDataChunk * > | Navigation related data that can be stored per level |
| LightmapTotalSize | float | Total number of KB used for lightmap textures in the level. |
| ShadowmapTotalSize | float | Total number of KB used for shadowmap textures in the level. |
| StaticNavigableGeometry | TArray < FVector > | threes of triangle vertices - AABB filtering friendly. Stored if there's a runti |
| StreamingTextureGuids | TArray < FGuid > | The Guid of each texture refered by FStreamingTextureBuildInfo::TextureLevelInde |
| PVSHandlerHash | FString |  |
| PrecomputedVisibilityDataRegistry | UPrecomputedVisibilityDataRegistry * |  |
| bIsLightingScenario | bool | Whether the level is a lighting scenario.  Lighting is built separately for each |
| LevelBuildDataId | FGuid | Identifies map build data specific to this level, eg lighting volume samples. |
| MapBuildData | UMapBuildDataRegistry * | Registry for data from the map build.  This is stored in a separate package from |
| MapPCBuildData | UMapBuildDataRegistry * |  |
| LightBuildLevelOffset | FIntVector | Level offset at time when lighting was built |
| bTextureStreamingRotationChanged | uint8 | Whether a level transform rotation was applied since the texture streaming build |
| bIsVisible | uint8 | Whether the level is currently visible associated with the world |
| bLocked | uint8 | Whether this level is locked; that is, its actors are read-only 	 	Used by World |
| bPVSDirty | uint8 |  |
| WorldSettings | AWorldSettings * |  |
| RCRCommunicatorClassName | FSoftClassPath |  |
| RCRCommunicator | URCRCommunicator * |  |
| MeshRefCounter | TMap < UStaticMesh * , int32 > |  |
| Level_RCR | ULevel_RCR * |  |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| LevelScriptBlueprint | ULevelScriptBlueprint * | Reference to the blueprint for level scripting |
| TextureStreamingResourceGuids | TArray < FGuid > | The Guid list of all materials and meshes Guid used in the last texture streamin |
| LevelSimplification | FLevelSimplificationDetails | Level simplification settings for each LOD |
| PlatformLevelSimplification | TArray < FLevelSimplificationDetails > |  |
| LevelColor | FLinearColor | The level color used for visualization. (Show -> Advanced -> Level Coloration) 	 |