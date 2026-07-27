---
title: FAnimNode_AssetPlayerBase
---

# FAnimNode_AssetPlayerBase

Base class for any asset playing anim node

## Variables

| Name | Type | Description |
|------|------|-------------|
| bIgnoreForRelevancyTest | bool | If true, "Relevant anim" nodes that look for the highest weighted animation in a |
| GroupIndex | int32 |  |
| GroupName | FName |  |
| GroupRole | TEnumAsByte < EAnimGroupRole :: Type > |  |
| bNeedAnimNotifyWhenNotLeader | bool |  |
| bShouldSortWithTimeAccumulator | bool |  |
| BlendWeight | float | Last encountered blendweight for this node |
| InternalTimeAccumulator | float | Accumulated time used to reference the asset in this node |