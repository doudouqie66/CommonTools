---
title: UAnimInstanceUpdateCondition
language: cpp
---

# UAnimInstanceUpdateCondition

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Enable | bool |  |

## Functions

### SetEnable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEnable | bool |  |

**Return:** void  

### CheckCondition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInstance | UAnimInstance *  |  |
| DeltaTime | float |  |

**Return:** bool  

### NeedUpdate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInstance | UAnimInstance *  |  |
| DeltaTime | float |  |

**Return:** bool  

### NeedUpdate_Internal

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInstance | UAnimInstance *  |  |
| DeltaTime | float |  |

**Return:** bool