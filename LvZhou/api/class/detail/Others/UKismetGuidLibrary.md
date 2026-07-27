---
title: UKismetGuidLibrary
language: cpp
---

# UKismetGuidLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### EqualEqual_GuidGuid

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGuid &  |  |
| B | FGuid & |  |

**Return:** bool  

### NotEqual_GuidGuid

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGuid &  |  |
| B | FGuid & |  |

**Return:** bool  

### IsValid_Guid

Checks whether the given GUID is valid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InGuid | FGuid & |  |

**Return:** bool  

### Invalidate_Guid

Invalidates the given GUID

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InGuid | FGuid & |  |

**Return:** void  

### NewGuid

Returns a new unique GUID

**Return:** FGuid 

### Conv_GuidToString

Converts a GUID value to a string, in the form 'A-B-C-D'

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InGuid | FGuid & |  |

**Return:** FString  

### Parse_StringToGuid

Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GuidString | FString &  |  |
| OutGuid | FGuid &  |  |
| Success | bool & |  |

**Return:** void