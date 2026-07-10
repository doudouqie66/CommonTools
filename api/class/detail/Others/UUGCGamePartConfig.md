---
title: UUGCGamePartConfig
language: cpp
---

# UUGCGamePartConfig

GamePart配置基类

> Inheritance: UPrimaryDataAsset

## Variables

| Name | Type | Description |
|------|------|-------------|
| GamePartName | FName | GamePart名称 |
| DependentGameParts | TArray < FName > | 依赖的的GamePart列表 |
| GlobalActorClass | TSubclassOf < AActor > | GlobalActor类配置 |
| PlayerComponentConfigs | TArray < FUGCGamePartPlayerComponentConfig > | GamePart PlayerComponent配置列表 |