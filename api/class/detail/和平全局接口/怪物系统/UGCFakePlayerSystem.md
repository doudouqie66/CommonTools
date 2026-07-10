---
title: UGCFakePlayerSystem
language: lua
---

# UGCFakePlayerSystem

假人玩家系统

## Functions

### SpawnFakePlayer

生成假人玩家， GameMode 中 DataManager，AIProbe 数据中配置 AIController
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AIPlayerKey | number | AIPlayerKey，建议使用 UGCFakePlayerSystem.GetRandomAIPlayerKey 生成 |
| TeamID | number | 队伍 ID |

### GetRandomAIPlayerKey

生成随机AIPlayerKey，用于UGCFakePlayerSystem.SpawnFakePlayer接口参数
生效范围：服务器

**Return:** number AIPlayerKey

### DestroyFakePlayer

销毁假人玩家
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AIPlayerKey | number | AIPlayerKey |