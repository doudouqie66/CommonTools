---
title: UGCMessageSystem
language: lua
---

# UGCMessageSystem

游戏聊天通用接口库

## Functions

### JoinCampMessageChannel

阵营聊天 开局分阵营或阵营变更时同步阵营信息，创建阵营的聊天室
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家的 PlayerKey |
| CampID | number | 阵营 ID（传入0为无阵营） |

### SendSystemMessageToPlayer

给单独玩家发送系统消息
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |
| MessageTag | string | 消息标题 |
| MessageContent | string | 消息内容 |
| Level | number | 消息等级 |

**Return:** boolean 是否发送成功

### SendSystemMessageToAll

给所有玩家发送系统消息
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MessageTag | string | 消息标题 |
| MessageContent | string | 消息内容 |
| Level | number | 消息等级 |

**Return:** boolean 是否发送成功