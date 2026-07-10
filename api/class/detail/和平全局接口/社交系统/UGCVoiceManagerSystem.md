---
title: UGCVoiceManagerSystem
language: lua
---

# UGCVoiceManagerSystem

语音系统接口库

## Functions

### GetGVoiceInterface

获取 Voice 组件
生效范围：客户端

**Return:** UGVoiceInterface 对应语音管理类的指针

### GetPlayerMemberID

获取玩家的语音房间 MemberID
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 角色的 PlayerKey |

**Return:** number 角色语音房间的 MemberID

### JoinVoiceRoom

加入语音房间
RoomKey 为语音房间唯一标识，可由自己进行拼接
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RoomKey | string | 语音房间 Key |

### QuitVoiceRoom

退出 UGC 语音房间
生效范围：客户端

### GetVoiceRoomKey

获取当前房间 RoomKey
生效范围：客户端

**Return:** string 语音房间 Key

### SetGlobalVoiceRadius

设置全局语音生效范围
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Radius | number | 全局语音半径（单位：cm） |

### SetVoiceRoomSoundEnable

开启/关闭语音房间喇叭
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsEnable | boolean | 开启或者关闭喇叭 |

### SetVoiceRoomMicrophoneEnable

开启/关闭语音房间麦克风
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsEnable | boolean | 开启或者关闭麦克风 |

### SetGlobalVoiceSoundEnable

开启/关闭全局语音喇叭
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsEnable | boolean | 开启或者关闭喇叭 |

### SeGlobalVoiceMicrophoneEnable

开启/关闭 全局语音麦克风
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsEnable | boolean | 开启或者关闭麦克风 |

### SetVoiceRoomPlayerMuteState

设置语音房间指定玩家语音屏蔽（静音）状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MemberID | number | 当前房间要被屏蔽的玩家的 UID |
| IsMute | boolean | 是否屏蔽 |

### SetGlobalVoicePlayerMuteState

设置全局房间指定玩家语音屏蔽（静音）状态
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MemberID | number | 当前房间要被屏蔽的玩家的 MemberID |
| IsMute | boolean | 是否屏蔽 |

### IsVoiceRoomSoundEnable

获得语音房间声音（喇叭）开关状态
生效范围：客户端

**Return:** boolean 当前房间喇叭状态

### IsVoiceRoomMicrophoneEnable

获得语音房间麦克风开关状态
生效范围：客户端

**Return:** boolean 当前房间麦克风状态

### IsGlobalVoiceSoundEnable

获得全局语音声音（喇叭）开关状态
生效范围：客户端

**Return:** boolean 当前房间喇叭状态

### IsGlobalVoiceMicrophoneEnable

获得全局语音麦克风开关状态
生效范围：客户端

**Return:** boolean 当前房间麦克风状态

### JoinGlobalVoiceRoom

加入全局语音房间（依赖于全局语音房间的某个范围可听可说,区域语音，包厢等等）
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GlobalVoiceRoomId | number | 区域小房间的 index |

### QuitGlobalVoiceRoom

退出全局语音房间（区域语音，包厢等等）
生效范围：客户端

### CloseCivilVoiceDetect

关闭文明语音检测和 lbs 小号限制
生效范围：客户端