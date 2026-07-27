---
title: UGCWeatherSystem
language: lua
---

# UGCWeatherSystem

天气系统接口库

## Functions

### LoadWeatherSequence

加载天气序列
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| WeatherSequence | WeatherSequence | 天气序列资源 |
| BlendTime | number | 过渡时间 |

### UnloadWeatherSequence

卸载天气序列
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| WeatherSequence | WeatherSequence | 天气序列资源 |

### SeekWeatherSequence

设置天气序列播放进度
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| WeatherSequence | WeatherSequence | 天气序列资源 |
| Time | number | 目标时间 |

### PauseWeatherSequence

暂停天气序列
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| WeatherSequence | WeatherSequence | 天气序列资源 |

### ResumeWeatherSequence

继续天气序列
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |
| WeatherSequence | WeatherSequence | 天气序列资源 |

### GetCurrentWeatherSequence

获取当前天气序列
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

**Return:** WeatherSequence 天气序列资源

### GetCurrentWeatherPlayPercentage

获取当前天气播放进度
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

**Return:** number 播放进度（0~1）

### GetCurrentWeatherTime

获取当前天气时间
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | PlayerController | 玩家控制器 |

**Return:** number 天气时间（0~24）