---
title: UKismetNodeHelperLibrary
language: cpp
---

# UKismetNodeHelperLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### BitIsMarked

Returns whether the bit at index "Index" is set or not in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The integer containing the bits that are being tested against |
| Index | int32 | - The bit index into the Data that we are inquiring |

**Return:** bool   - Whether the bit at index "Index" is set or not

### MarkBit

Sets the bit at index "Index" in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32 &  | - The integer containing the bits that are being set |
| Index | int32 | - The bit index into the Data that we are setting |

**Return:** void  

### ClearBit

Clears the bit at index "Index" in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32 &  | - The integer containing the bits that are being cleared |
| Index | int32 | - The bit index into the Data that we are clearing |

**Return:** void  

### ClearAllBits

Clears all of the bit in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32 & | - The integer containing the bits that are being cleared |

**Return:** void  

### HasUnmarkedBit

Returns whether there exists an unmarked bit in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The data being tested against |
| NumBits | int32 | - The logical number of bits we want to track |

**Return:** bool  - Whether there is a bit not marked in the data

### HasMarkedBit

Returns whether there exists a marked bit in the data
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The data being tested against |
| NumBits | int32 | - The logical number of bits we want to track |

**Return:** bool  - Whether there is a bit marked in the data

### GetUnmarkedBit

Gets an already unmarked bit and returns the bit index selected
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The integer containing the bits that are being set |
| StartIdx | int32  | - The index to start with when determining the selection' |
| NumBits | int32  | - The logical number of bits we want to track |
| bRandom | bool | - Whether to select a random index or not |

**Return:** int32  - The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from)

### GetRandomUnmarkedBit

Gets a random not already marked bit and returns the bit index selected
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The integer containing the bits that are being set |
| StartIdx | int32  |  |
| NumBits | int32 | - The logical number of bits we want to track |

**Return:** int32  - The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from)

### GetFirstUnmarkedBit

Gets the first index not already marked starting from a specific index and returns the bit index selected
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Data | int32  | - The integer containing the bits that are being set |
| StartIdx | int32  | - The index to start looking for an available index from |
| NumBits | int32 | - The logical number of bits we want to track |

**Return:** int32  - The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from)

### GetEnumeratorName

Gets enumerator name.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  | - Enumeration |
| EnumeratorValue | uint8 | - Value of searched enumeration |

**Return:** FName  - name of the searched enumerator, or NAME_None

### GetEnumeratorUserFriendlyName

Gets enumerator name as FString. Use DeisplayName when possible.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  | - Enumeration |
| EnumeratorValue | uint8 | - Value of searched enumeration |

**Return:** FString  - name of the searched enumerator, or NAME_None

### GetValidValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  | - Enumeration |
| EnumeratorValue | uint8 |  |

**Return:** uint8  - if EnumeratorIndex is valid return EnumeratorIndex, otherwise return MAX value of Enum

### GetEnumeratorValueFromIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Enum | UEnum *  | - Enumeration |
| EnumeratorIndex | uint8 | - Input index |

**Return:** uint8  - The value of the enumerator, or INDEX_NONE