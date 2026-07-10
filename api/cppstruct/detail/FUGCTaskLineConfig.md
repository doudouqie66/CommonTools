---
title: FUGCTaskLineConfig
---

# FUGCTaskLineConfig

任务线配置结构体

## Variables

| Name | Type | Description |
|------|------|-------------|
| TaskLineType | EUGCTaskLineType | 任务线类型 |
| TaskLineName | FString | 任务线名称 |
| LevelTaskLineConfig | TArray < FUGCLevelTaskLineConfig > | 成长任务线配置 |
| PercentTaskLineConfig | TArray < FUGCPercentTaskLineConfig > | 活跃任务线配置 |
| LevelTaskPropertyName | FString | 成长等级属性名称 |
| PercentAwardList | TArray < FUGCPercentTaskAward > | 进度奖励列表 |
| ResetType | EUGCPercentTaskResetType | 活跃任务线重置类型 |
| WeeklyResetTime | EUGCTaskCustomWeekResetType | 活跃任务线周重置类型 |
| DailyResetTime | FString | 活跃任务线重置时间 |
| ItemID | int32 | 活跃度道具ID |
| BeginDate | FDateTime | 开始时间 |
| EndDate | FDateTime | 结束时间 |