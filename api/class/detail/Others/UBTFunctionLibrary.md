---
title: UBTFunctionLibrary
language: cpp
---

# UBTFunctionLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### GetOwnersBlackboard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode * |  |

**Return:** UBlackboardComponent *  

### GetOwnerComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode * |  |

**Return:** UBehaviorTreeComponent *  

### GetBlackboardValueAsObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** UObject *  

### GetBlackboardValueAsActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** AActor *  

### GetBlackboardValueAsClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** UClass *  

### GetBlackboardValueAsEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** uint8  

### GetBlackboardValueAsInt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** int32  

### GetBlackboardValueAsFloat

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** float  

### GetBlackboardValueAsBool

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** bool  

### GetBlackboardValueAsString

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** FString  

### GetBlackboardValueAsName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** FName  

### GetBlackboardValueAsVector

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** FVector  

### GetBlackboardValueAsRotator

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** FRotator  

### SetBlackboardValueAsObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | UObject * |  |

**Return:** void  

### SetBlackboardValueAsClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | UClass * |  |

**Return:** void  

### SetBlackboardValueAsEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | uint8 |  |

**Return:** void  

### SetBlackboardValueAsInt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | int32 |  |

**Return:** void  

### SetBlackboardValueAsFloat

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | float |  |

**Return:** void  

### SetBlackboardValueAsBool

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | bool |  |

**Return:** void  

### SetBlackboardValueAsString

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | FString |  |

**Return:** void  

### SetBlackboardValueAsName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | FName |  |

**Return:** void  

### SetBlackboardValueAsVector

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | FVector |  |

**Return:** void  

### ClearBlackboardValueAsVector

(DEPRECATED) Use ClearBlackboardValue instead

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** void  

### SetBlackboardValueAsRotator

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector &  |  |
| Value | FRotator |  |

**Return:** void  

### ClearBlackboardValue

Resets indicated value to "not set" value, based on values type

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| Key | FBlackboardKeySelector & |  |

**Return:** void  

### StartUsingExternalEvent

Initialize variables marked as "instance memory" and set owning actor for blackboard operations

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode *  |  |
| OwningActor | AActor * |  |

**Return:** void  

### StopUsingExternalEvent

Save variables marked as "instance memory" and clear owning actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeOwner | UBTNode * |  |

**Return:** void