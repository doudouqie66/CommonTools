---
title: AUGCMobSpawnerManager
language: cpp
---

# AUGCMobSpawnerManager

刷怪系统：刷怪管理器

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| StartCondition | EUGCMobSpawnerManagerStartCondition | 配置刷怪管理器的启动方式 |
| EventName | FString | 启动方式使用事件触发时，监听的GMP名 |
| MaxSpawnPerFrame | int32 | 配置刷怪管理器每帧刷怪的上限 |
| AliveMobsCheckDeltaTime | float | 配置刷怪管理器检查当前怪物存活情况的间隔 |
| SpawnWaves | TArray < FUGCSpawnWave > | 配置刷怪的波次 |

## Functions

### StartSpawnerManager

生效范围 服务器
	  启动刷怪管理器

**Return:** void 

### ResetSpawnerManager

生效范围 服务器
	  重置刷怪管理器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDeleteAllMobs | bool | 是否清除所有刷出的怪物 |

**Return:** void  

### CleanAllMobs

生效范围 服务器
	  清理对刷出怪物的引用

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDelete | bool | 是否清除怪物 |

**Return:** void  

### PauseSpawnerManager

生效范围 服务器
	  暂停刷怪管理器

**Return:** void 

### ResumeSpawnerManager

生效范围 服务器
	  恢复刷怪管理器

**Return:** void 

### GetSpawner

生效范围 服务器
	  获取波次中特定编号的刷怪点

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WaveIndex | int32  | 波次编号 |
| SpawnerIndex | int32 | 刷新点编号 |

**Return:** AUGCMobSpawner *  怪物刷新点

### GetCurrentWaveIndex

生效范围 服务器
	  获取当前波的波次编号

**Return:** int32 当前波次编号

### GetWaveSpawnerNum

生效范围 服务器
	  获取对应波次的刷新点数量

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WaveIndex | int32 |  |

**Return:** int32  刷新点数量

### GetWaveNum

生效范围 服务器
	  获取波次的数量

**Return:** int32 波次数量

### SetMobConfigOverrideForSpawner

生效范围 服务器
	  修改特定波次中特定刷新点的怪物配置覆盖

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMobConfig | FUGCMobSpawnerMobConfig  | 新的怪物配置 |
| WaveIndex | int32  | 波次编号 |
| SpawnerIndex | int32 | 刷新点编号 |

**Return:** void  

### SetMobConfigOverrideForWave

生效范围 服务器
	  修改特定波次中所有刷新点的怪物配置覆盖

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMobConfig | FUGCMobSpawnerMobConfig  | 新的怪物配置 |
| WaveIndex | int32 | 波次编号 |

**Return:** void  

### SetMobConfigOverride

生效范围 服务器
	  修改所有波次的怪物配置覆盖

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMobConfig | FUGCMobSpawnerMobConfig | 新的怪物配置 |

**Return:** void  

### CleanAllMobConfigOverride

生效范围 服务器
	  清除管理器所有的怪物配置覆盖

**Return:** void 

### JumpToWave

生效范围 服务器
	  跳转到指定波次

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WaveIndex | int32 |  |

**Return:** void