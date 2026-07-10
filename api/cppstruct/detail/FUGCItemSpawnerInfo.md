---
title: FUGCItemSpawnerInfo
---

# FUGCItemSpawnerInfo

物资生成管理器上每个刷新点的配置

## Variables

| Name | Type | Description |
|------|------|-------------|
| Spawner | AUGCItemSpawner * | 使用的刷新点 |
| bOverrideItemConfig | bool | 是否覆盖该刷新点上的物资配置，开启则刷新点上的配置无效，使用这里的配置 |
| ItemConfig | FUGCItemSpawnerItemConfig | 配置刷新点上的物资配置 |