---
title: UChunkLabel
language: cpp
---

# UChunkLabel

> Inheritance: UPrimaryDataAsset

## Variables

| Name | Type | Description |
|------|------|-------------|
| Rules | FPrimaryAssetRules | Management rules for this specific asset, if set it will override the type rules |
| LogicChunkName | FString | True to Label everything in this directory and sub directories |
| FinalChunkName | FString |  |
| ChunkOutputPath | FString |  |
| bIsRuntimeLabel | uint32 | Set to true if the label asset itself should be cooked and available at runtime. |
| Key | FString |  |
| IV | FString |  |
| ManagerRuleNames | TArray < FString > |  |
| bUpdateManagerRulesWhenSaved | bool |  |
| bForceReloadManagerRule | bool |  |