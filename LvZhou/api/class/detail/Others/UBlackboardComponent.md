---
title: UBlackboardComponent
language: cpp
---

# UBlackboardComponent

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| BrainComp | UBrainComponent * | cached behavior tree component |
| BlackboardAsset | UBlackboardData * | data asset defining entries |
| KeyInstances | TArray < UBlackboardKeyType * > | instanced keys with custom data allocations |

## Functions

### GetValueAsObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** UObject *  

### GetValueAsClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** UClass *  

### GetValueAsEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** uint8  

### GetValueAsInt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** int32  

### GetValueAsFloat

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** float  

### GetValueAsBool

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** bool  

### GetValueAsString

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** FString  

### GetValueAsName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** FName  

### GetValueAsVector

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** FVector  

### GetValueAsRotator

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** FRotator  

### SetValueAsObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| ObjectValue | UObject * |  |

**Return:** void  

### SetValueAsClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| ClassValue | UClass * |  |

**Return:** void  

### SetValueAsEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| EnumValue | uint8 |  |

**Return:** void  

### SetValueAsInt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| IntValue | int32 |  |

**Return:** void  

### SetValueAsFloat

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| FloatValue | float |  |

**Return:** void  

### SetValueAsBool

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| BoolValue | bool |  |

**Return:** void  

### SetValueAsString

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| StringValue | FString |  |

**Return:** void  

### SetValueAsName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| NameValue | FName |  |

**Return:** void  

### SetValueAsVector

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| VectorValue | FVector |  |

**Return:** void  

### SetValueAsRotator

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| VectorValue | FRotator |  |

**Return:** void  

### IsVectorValueSet

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** bool  

### GetLocationFromEntry

return false if call failed (most probably no such entry in BB)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| ResultLocation | FVector & |  |

**Return:** bool  

### GetRotationFromEntry

return false if call failed (most probably no such entry in BB)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName &  |  |
| ResultRotation | FRotator & |  |

**Return:** bool  

### ClearValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** void