---
title: UGameplayTask_ClaimResource
language: cpp
---

# UGameplayTask_ClaimResource

> Inheritance: UGameplayTask

## Functions

### ClaimResource

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTaskOwner | TScriptInterface < IGameplayTaskOwnerInterface >  |  |
| ResourceClass | TSubclassOf < UGameplayTaskResource >  |  |
| Priority | uint8  |  |
| TaskInstanceName | FName |  |

**Return:** UGameplayTask_ClaimResource *  

### ClaimResources

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTaskOwner | TScriptInterface < IGameplayTaskOwnerInterface >  |  |
| ResourceClasses | TArray < TSubclassOf < UGameplayTaskResource > >  |  |
| Priority | uint8  |  |
| TaskInstanceName | FName |  |

**Return:** UGameplayTask_ClaimResource *