---
title: UBehaviorTreeComponent
language: cpp
---

# UBehaviorTreeComponent

> Inheritance: UBrainComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| NodeInstances | TArray < UBTNode * > | instanced nodes |

## Functions

### GetTagCooldownEndTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CooldownTag | FGameplayTag |  |

**Return:** float  the cooldown tag end time, 0.0f if CooldownTag is not found

### AddCooldownTagDuration

add to the cooldown tag's duration

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CooldownTag | FGameplayTag  |  |
| CooldownDuration | float  |  |
| bAddToExistingDuration | bool |  |

**Return:** void  

### SetDynamicSubtree

assign subtree to RunBehaviorDynamic task specified by tag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InjectTag | FGameplayTag  |  |
| BehaviorAsset | UBehaviorTree * |  |

**Return:** void  

### GetUGCMobBTDebugInfo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OutTreeInfo | FUGCMobBTDebugInfo &  |  |
| OutBlackBoardInfo | TArray < FUGCMobBTBlackBoardInfo > & |  |

**Return:** void