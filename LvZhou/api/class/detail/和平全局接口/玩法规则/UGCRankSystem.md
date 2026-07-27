---
title: UGCRankSystem
language: lua
---

# UGCRankSystem

段位专用接口库

## Functions

### GetUGCRank

查询段位分
调用 UGCRankSystem.AddRankProgress 后，会获取到新段位分
例：开局 2000 积分，中途调用 UGCRankSystem.AddRankProgress 增加 100 积分，再调用 UGCRankSystem.GetUGCRank 则得到 2100 积分
详细使用流程参考 wiki (https://developer.gp.qq.com/wiki/#/lvzhou_duanwei.html)
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |

**Return:** number 段位分

### AddRankProgress

修改段位分
生效范围：服务器

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerKey | number | 玩家 PlayerKey |
| Count | number | 段位分变化值 |

### GetUGCGameSeasonId

查询当前玩法段位赛 ID
生效范围：服务器

**Return:** number 游戏赛季 ID