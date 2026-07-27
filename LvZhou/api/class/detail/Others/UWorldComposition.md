---
title: UWorldComposition
language: cpp
---

# UWorldComposition

WorldComposition represents world structure:
 	- Holds list of all level packages participating in this world and theirs base parameters (bounding boxes, offset from origin)
 	- Holds list of streaming level objects to stream in and out based on distance from current view point
   - Handles properly levels repositioning during level loading and saving

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Package2WorldTileExtraInfo | TMap < FName , FWorldTileExtraInfo > |  |
| LODStealConfigs | TArray < FLODStealConfig > |  |
| TilesStreaming | TArray < ULevelStreaming * > |  |
| TilesStreamingTimeThreshold | double |  |
| bLoadAllTilesDuringCinematic | bool |  |
| bRebaseOriginIn3DSpace | bool |  |
| RebaseOriginDistance | float |  |
| TileBoundsVerifyScale | float |  |
| bFlushPool | bool |  |
| ServerExcludedLevels | TArray < FString > |  |
| ClientExcludedLevels | TArray < FString > |  |
| UGCPIEMapBlackList | TArray < FString > |  |
| UGCWhiteListSubLevelPaths | TArray < FString > |  |
| DeviceExcludedLevels | TArray < FString > |  |
| DynamicSubLevelPaths | TArray < FString > |  |
| BlackLevelPaths | TArray < FString > |  |
| SpecifiedBuildingLevels | TArray < FString > |  |
| ClientLoadRadiusFactor | float |  |

## Functions

### CheckBisNeedSavedLevelToFileInServer

**Return:** bool