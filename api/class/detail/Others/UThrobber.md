---
title: UThrobber
language: cpp
---

# UThrobber

A Throbber widget that shows several zooming circles in a row.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| NumberOfPieces | int32 | How many pieces there are |
| bAnimateHorizontally | bool | Should the pieces animate horizontally? |
| bAnimateVertically | bool | Should the pieces animate vertically? |
| bAnimateOpacity | bool | Should the pieces animate their opacity? |
| PieceImage_DEPRECATED | USlateBrushAsset * | Image to use for each segment of the throbber |
| Image | FSlateBrush |  |

## Functions

### SetNumberOfPieces

Sets how many pieces there are

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNumberOfPieces | int32 |  |

**Return:** void  

### SetAnimateHorizontally

Sets whether the pieces animate horizontally.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAnimateHorizontally | bool |  |

**Return:** void  

### SetAnimateVertically

Sets whether the pieces animate vertically.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAnimateVertically | bool |  |

**Return:** void  

### SetAnimateOpacity

Sets whether the pieces animate their opacity.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAnimateOpacity | bool |  |

**Return:** void