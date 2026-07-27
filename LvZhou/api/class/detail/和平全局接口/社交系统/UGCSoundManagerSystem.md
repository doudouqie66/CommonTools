---
title: UGCSoundManagerSystem
language: lua
---

# UGCSoundManagerSystem

语音系统接口库

## Functions

### PlaySound2D

播放 2D 音效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |

**Return:** number  音效 ID

### PlaySoundAtLocation

在指定位置播放音效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取），需要导入音效时选 3D |
| Location | Vector | 位置 |
| Orientation | Rotator | 旋转 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw} |

**Return:** number  音效 ID

### PlaySoundAttachActor

依附于 Actor 播放音效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |
| AttachedActor | Actor | 依附的 Actor |
| StopWhenAttachedToDestroyed | boolean | 依附的 Actor 销毁时是否停止音效播放 |

**Return:** number  音效 ID

### StopAllSound

停止全部音效
生效范围：客户端

### StopSoundByActor

停止指定 Actor 上的所有音效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | Actor | 指定的Actor |

### StopSoundByID

停止指定 ID 的音效
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ID | number | 音效 ID |

### PlaySoundWithVolumePitch

在以指定音量音高的方式播放音效，如果播放的是同一个音效，必须在上次播放完成再开始下一个播放，音效资源必须在最新的UGC编辑器上制作生成的
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |
| AttachedActor | Actor | 依附的 Actor |
| Volume | number | 范围为-12到12的值 如果不想调整该参数就传一个范围以外的值 |
| Pitch | number | 范围为-2400到2400的值 如果不想调整该参数就传一个范围以外的值 |
| StopWhenAttachedToDestroyed | boolean | 依附的 Actor 销毁时是否停止音效播放 |

**Return:** number  音效 ID

### PlaySoundWithRange

播放指定时间范围的音频
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |
| AttachedActor | Actor | 依附的 Actor |
| StartTime | number | 开始时间 |
| EndTime | number | 结束时间 |
| ID | number | 音效 ID |

### PlaySoundWithLoop

播放循环音频
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |
| AttachedActor | Actor | 依附的 Actor |

### PlaySoundWith2D

播放2D音频
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AKEvent | UAkAudioEvent | 音效资源（通过 UE.LoadObject(SoundPath) 获取） |
| AttachedActor | Actor | 依附的 Actor |