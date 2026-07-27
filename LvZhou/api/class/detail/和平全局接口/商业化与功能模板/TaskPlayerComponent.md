---
title: TaskPlayerComponent
language: lua
---

# TaskPlayerComponent

UGC任务系统玩家组件

## Variables

| Name | Type | Description |
|------|------|-------------|
| TaskPlayerComponent.OnTaskLineAwardInfoChangeDelegate |  | 生效范围：客户端 任务线奖励状态变更回调 @param TaskLineName string @任务线名称 @param Index number @奖励索引 |
| TaskPlayerComponent.OnTaskInfoChangeDelegate |  | 生效范围：客户端 任务数据变更回调 @param Index UGCTaskIndex @榜单周期 |
| TaskPlayerComponent.OnTaskLineProgressChangeDelegate |  | 生效范围：客户端&服务端 任务线进度变更回调 @param TaskLineName string @任务线名称 |

## Functions

### ResetPercentTaskLine

重置活跃任务线
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

### ClaimLevelTaskAward

领取成长任务奖励
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| LevelIndex | number |  |
| TaskIndex | number |  |

### ClaimPercentTaskAward

领取活跃任务奖励
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| TaskIndex | number |  |

### GetTaskLineProgress

获取任务线进度
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

**Return:** number 

### GetLevelTaskInfoList

获取成长任务线的任务信息列表
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

**Return:** FUGCLevelTaskPlayerData[] 

### GetPercentTaskInfoList

获取活跃任务线的任务信息列表
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

**Return:** FUGCTaskInfo[] 

### GetPercentTaskLineAwardStateList

获取活跃任务线的奖励状态列表
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

**Return:** table 

### GetTaskLineAwardState

获取任务线奖励状态
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| Index | number |  |

**Return:** EUGCTaskLineAwardState 

### ClaimAllAward

领取任务线的全部奖励
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |

### ClaimTaskLineAward

领取任务线奖励
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| Index | number |  |

### SetTaskLineProgress

设置任务线进度
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| Progress | number |  |

### GetPercentTaskProgress

获取活跃任务进度
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| Index | number |  |

**Return:** number 

### GetPercentTaskState

获取活跃任务状态
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| Index | number |  |

**Return:** EUGCTaskState 

### GetLevelTaskProgress

获取成长任务进度
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| LevelIndex | number |  |
| TaskIndex | number |  |

**Return:** number 

### GetLevelTaskState

获取成长任务状态
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| LevelIndex | number |  |
| TaskIndex | number |  |

**Return:** EUGCTaskState 

### GetTaskManager

**Return:** TaskManager 

### SetTaskLineTime

设置任务线和任务线下所有任务的开始/结束时间
生效范围：客户端&&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TaskLineName | string |  |
| BeginTime | number |  |
| EndTime | number |  |