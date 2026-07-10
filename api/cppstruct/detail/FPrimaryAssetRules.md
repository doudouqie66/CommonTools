---
title: FPrimaryAssetRules
---

# FPrimaryAssetRules

Structure defining rules for what to do with assets, this is defined per type and can be overridden per asset

## Variables

| Name | Type | Description |
|------|------|-------------|
| Priority | int32 | Primary Assets with a higher priority will take precedence over lower priorities |
| bApplyRecursively | bool | If true, this rule will apply to all referenced Secondary Assets recursively, as |
| PriorityRule | EPrimaryAssetPriorityRule | SetManageReferences时优先级规则. |
| ChunkId | int32 | Assets will be put into this Chunk ID specifically, if set to something other th |
| CookRule | EPrimaryAssetCookRule | Rule describing when this asset should be cooked. |
| ManagementRules | TArray < FManagementRule > |  |