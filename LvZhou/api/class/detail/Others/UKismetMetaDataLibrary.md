---
title: UKismetMetaDataLibrary
language: cpp
---

# UKismetMetaDataLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### HasMetaData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Field | UField *  |  |
| Key | FName  |  |
| NameIndex | int32 |  |

**Return:** bool  

### GetMetaData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Field | UField *  |  |
| Key | FName  |  |
| NameIndex | int32 |  |

**Return:** const FString &  

### GetEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EnumProperty | UEnumProperty * |  |

**Return:** UEnum *  

### GetEnumFromByte

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ByteProperty | UByteProperty * |  |

**Return:** UEnum *  

### GetNumOfEnum

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum * |  |

**Return:** int32  

### GetEnumName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  |  |
| NameIndex | int32 |  |

**Return:** FName  

### GetEnumValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  |  |
| NameIndex | int32 |  |

**Return:** int64  

### GetEnumIndexByValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  |  |
| Value | int64 |  |

**Return:** int32  

### GetScriptStructOfStructProperty

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StructProperty | UStructProperty * |  |

**Return:** UScriptStruct *  

### GetClassOfObjectPropertyBase

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectPropertyBase | UObjectPropertyBase * |  |

**Return:** UClass *  

### GetObjectsWithOuter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Outer | UObject *  |  |
| bIncludeNestedObjects | bool  |  |
| ExclusionFlags | int32  |  |
| ExclusionInternalFlags | int32 |  |

**Return:** TArray < UObject * >