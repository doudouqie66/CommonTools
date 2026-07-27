---
title: UKismetStringTableLibrary
language: cpp
---

# UKismetStringTableLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### IsRegisteredTableId

Returns true if the given table ID corresponds to a registered string table.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName |  |

**Return:** bool  

### IsRegisteredTableEntry

Returns true if the given table ID corresponds to a registered string table, and that table has.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName  |  |
| Key | FString & |  |

**Return:** bool  

### GetTableNamespace

Returns the namespace of the given string table.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName |  |

**Return:** FString  

### GetTableEntrySourceString

Returns the source string of the given string table entry (or an empty string).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName  |  |
| Key | FString & |  |

**Return:** FString  

### GetTableEntryMetaData

Returns the specified meta-data of the given string table entry (or an empty string).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName  |  |
| Key | FString &  |  |
| MetaDataId | FName |  |

**Return:** FString  

### GetRegisteredStringTables

Returns an array of all registered string table IDs

**Return:** TArray < FName > 

### GetKeysFromStringTable

Returns an array of all keys within the given string table

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName |  |

**Return:** TArray < FString >  

### GetMetaDataIdsFromStringTableEntry

Returns an array of all meta-data IDs within the given string table entry

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TableId | FName  |  |
| Key | FString & |  |

**Return:** TArray < FName >