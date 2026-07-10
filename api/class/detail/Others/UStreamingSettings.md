---
title: UStreamingSettings
language: cpp
---

# UStreamingSettings

Streaming settings.

> Inheritance: UDeveloperSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| AsyncLoadingThreadEnabled | uint32 |  |
| WarnIfTimeLimitExceeded | uint32 |  |
| TimeLimitExceededMultiplier | float |  |
| TimeLimitExceededMinTime | float |  |
| MinBulkDataSizeForAsyncLoading | int32 |  |
| UseBackgroundLevelStreaming | uint32 |  |
| AsyncLoadingUseFullTimeLimit | uint32 | Whether to use the entire time limit even if blocked on IO |
| AsyncLoadingTimeLimit | float |  |
| PriorityAsyncLoadingExtraTime | float |  |
| LevelStreamingActorsUpdateTimeLimit | float | Maximum allowed time to spend for actor registration steps during level streamin |
| LevelStreamingComponentsRegistrationGranularity | int32 | Batching granularity used to register actor components during level streaming |
| LevelStreamingUnregisterComponentsTimeLimit | float | Maximum allowed time to spend while unregistering components during level stream |
| LevelStreamingComponentsUnregistrationGranularity | int32 | Batching granularity used to unregister actor components during level streaming |
| EventDrivenLoaderEnabled | uint32 |  |