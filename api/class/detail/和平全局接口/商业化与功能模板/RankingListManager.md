---
title: RankingListManager
language: lua
---

# RankingListManager

UGC排行榜系统全局管理器

## Variables

| Name | Type | Description |
|------|------|-------------|
| RankingListManager.ShowRankDataChangeDelegate |  | 生效范围：客户端 排行榜数据变更回调 @param RankID number @榜单ID @param RankingCycles number @榜单周期 |
| RankingListManager.PlayerRankDataChangeDelegate |  | 生效范围：客户端 玩家排名数据变更回调 @param RankID number @榜单ID @param RankingCycles number @榜单周期 |
| RankingListManager.ProfileDataChangeDelegate |  | 生效范围：客户端 玩家信息数据变更回调 @param RankID number @榜单ID |
| RankingListManager.ClaimRankListAwardDelegate |  | 生效范围：客户端&服务端 领取奖励回调 @param RankID number @榜单ID @param Result boolean @领奖是否成功 @pa |

## Functions

### UpdateScore

更新排行榜分数
生效范围：服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | BP_UGCPlayerController_C | 玩家控制器 |
| UID | number | 玩家UID |
| RankID | number | 排行榜ID |
| Score | number | 更新分数 |
| IsIncremental | boolean | 是否增量更新 |

### GetProfileData

获取玩家信息，使用前需要调用对应榜单的GetRankListData接口
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RankID | number | 排行榜ID |
| UID | number | 玩家UID |

**Return:** RankListProfileData 

### ClaimRankListAward

领取排行榜奖励
生效范围：客户端&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | BP_UGCPlayerController_C | 玩家控制器 |
| RankID | number | 排行榜ID |

### CanClaimRankListAward

判断是否可以领取奖励
生效范围：客户端&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | BP_UGCPlayerController_C | 玩家控制器 |
| RankID | number | 排行榜ID |

**Return:** UGCRankListAwardState 

### GetPlayerRankData

获取当前DS内玩家排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据)
生效范围：客户端&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 玩家UID |
| RankID | number | 排行榜ID |
| RankingCycles | number | 排行榜周期，0为当期，1为上期 |

**Return:** PlayerRankData 玩家排行榜数据

### GetRankListData

获取排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据)
生效范围：客户端&服务端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RankID | number | 排行榜ID |
| RankingCycles | number | 排行榜周期，0为当期，1为上期 |

### GetShowRankData

获取全部排行榜数据
生效范围：客户端&服务端

**Return:** table 

### OpenReportUI

打开举报界面
生效范围：客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UID | number | 举报玩家UID |
| PlayerName | string | 举报玩家姓名 |
| RankID | number | 排行榜ID |
| ShowUID | boolean | 是否显示UID |