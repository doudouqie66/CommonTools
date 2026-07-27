---
title: UPrimaryAssetLabel
language: cpp
---

# UPrimaryAssetLabel

A seed file that is created to mark referenced assets as part of this primary asset

> Inheritance: UPrimaryDataAsset

## Variables

| Name | Type | Description |
|------|------|-------------|
| Rules | FPrimaryAssetRules | Management rules for this specific asset, if set it will override the type rules |
| LogicChunkName | FString | Pak file name |
| FinalChunkName | FString |  |
| ChunkOutputPath | FString |  |
| bLabelAssetsInMyDirectory | uint32 | True to Label everything in this directory and sub directories |
| AssignedDirectories | TArray < FDirectoryPath > | True to Label everything in this directory and sub directories |
| ExcludeDirectories | TArray < FDirectoryPath > |  |
| ExcludeAssets | TSet < FName > |  |
| bIsRuntimeLabel | uint32 | Set to true if the label asset itself should be cooked and available at runtime. |
| ExplicitAssets | TArray < TSoftObjectPtr < UObject > > | List of manually specified assets to label |
| ExplicitBlueprints | TArray < TSoftClassPtr < UObject > > | List of manually specified blueprint assets to label |
| AssetCollection | FCollectionReference | Collection to load asset references out of |
| Key | FString |  |
| IV | FString |  |
| DataTableAsExplicitAssets | TSoftObjectPtr < UDataTable > | List of manually specified assets to label |
| ManagerRuleNames | TArray < FString > |  |
| bTriggerUpdateManagerRules | bool |  |
| bUpdateManagerRulesWhenSaved | bool |  |
| bForceReloadManagerRule | bool |  |