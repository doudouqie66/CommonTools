---
title: AUGCItemSpawnerManager
language: cpp
---

# AUGCItemSpawnerManager

生成系统：物资生成管理器

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| StartCondition | EUGCItemSpawnerManagerStartCondition | 管理器的启动方式 |
| EventName | FString | 启动方式选择事件触发时，监听的GMP事件名 |
| ItemSpawners | TArray < FUGCItemSpawnerInfo > | 配置刷新点 |
| MaxWaveInternalTime | float | 配置两次刷新之间的最大时间间隔 |
| MinWaveInternalTime | float | 配置两次刷新之间的最小时间间隔 |
| MaxSpawnerNumPerWave | int32 | 配置同一时间有物资刷出的刷新点的最大数量 |
| MinSpawnerNumPerWave | int32 | 配置同一时间有物资刷出的刷新点的最小数量 |
| TotalSpawnWaveCount | int32 | 物资刷新的总轮数，设为-1则无限刷新 |
| bOverrideItemConfig | bool | 是否覆盖所有刷新点上的物资配置 |
| ItemConfig | FUGCItemSpawnerItemConfig | 配置所有刷新点上的物资配置 |

## Functions

### StartSpawnerManager

生效范围 服务器
	  启动管理器

**Return:** void 

### ResetSpawnerManager

生效范围 服务器
	  重置管理器

**Return:** void 

### CleanAllItem

生效范围 服务器
	  清理刷出的物资

**Return:** void 

### PauseSpawnerManager

生效范围 服务器
	  暂停物资刷新管理器

**Return:** void 

### ResumeSpawnerManager

生效范围 服务器
	  恢复物资刷新管理器

**Return:** void 

### SetItemConfigOverrideForSpawner

生效范围 服务器
	  修改特定刷新点的物资配置

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InItemConfig | FUGCItemSpawnerItemConfig  | 新的物资刷新配置 |
| SpawnerIndex | int32 |  |

**Return:** void  

### SetItemConfigOverride

生效范围 服务器
	  修改所有刷新点的物资配置

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InItemConfig | FUGCItemSpawnerItemConfig | 新的物资刷新配置 |

**Return:** void  

### CleanAllItemConfigOverride

生效范围 服务器
	  清除刷新点的物资配置设置，调用后将使用刷新点本身的配置

**Return:** void