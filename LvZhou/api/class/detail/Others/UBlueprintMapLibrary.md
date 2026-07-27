---
title: UBlueprintMapLibrary
language: cpp
---

# UBlueprintMapLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### Map_Add

Adds a key and value to the map. If something already uses the provided key it will be overwritten with the new value.
	  After calling Key is guaranteed to be associated with Value until a subsequent mutation of the Map.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to add the key and value to |
| Key | int32 &  |  The key that will be used to look the value up |
| Value | int32 & |  The value to be retrieved later |

**Return:** void  True if a Value was added, or False if the Key was already present and has been overwritten

### Map_Remove

Removes a key and its associated value from the map.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to remove the key and its associated value from |
| Key | int32 & |  The key that will be used to look the value up |

**Return:** bool  True if an item was removed (False indicates nothing in the map uses the provided key)

### Map_Find

Finds the value associated with the provided Key
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to perform the lookup on |
| Key | int32 &  |  The key that will be used to look the value up |
| Value | int32 & |  The value associated with the key, default constructed if key was not found |

**Return:** bool  True if an item was found (False indicates nothing in the map uses the provided key)

### Map_Contains

Checks whether key is in a provided Map
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to perform the lookup on |
| Key | int32 & |  The key that will be used to lookup |

**Return:** bool  True if an item was found (False indicates nothing in the map uses the provided key)

### Map_Keys

Outputs an array of all keys present in the map
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to get the list of keys from |
| Keys | TArray < int32 > & |  All keys present in the map |

**Return:** void  

### Map_Values

Outputs an array of all values present in the map
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > &  | The map to get the list of values from |
| Values | TArray < int32 > & |  All values present in the map |

**Return:** void  

### Map_Length

Determines the number of entries in a provided Map
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > & | The map in question |

**Return:** int32  The number of entries in the map

### Map_Clear

Clears a map of all entries, resetting it to empty
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMap | TMap < int32 , int32 > & | The map to clear |

**Return:** void  

### SetMapPropertyByName

Not exposed to users. Supports setting a map property on an object by name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject *  |  |
| PropertyName | FName  |  |
| Value | TMap < int32 , int32 > & |  |

**Return:** void