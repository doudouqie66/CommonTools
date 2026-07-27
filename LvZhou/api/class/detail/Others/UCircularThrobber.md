---
title: UCircularThrobber
language: cpp
---

# UCircularThrobber

A throbber widget that orients images in a spinning circle.
  
   No Children
   Spinner Progress

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| NumberOfPieces | int32 | How many pieces there are |
| Period | float | The amount of time for a full circle (in seconds) |
| Radius | float | The radius of the circle. If the throbber is a child of Canvas Panel, the 'Size  |
| PieceImage_DEPRECATED | USlateBrushAsset * | Image to use for each segment of the throbber |
| Image | FSlateBrush |  |
| bEnableRadius | bool |  |

## Functions

### SetNumberOfPieces

Sets how many pieces there are.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNumberOfPieces | int32 |  |

**Return:** void  

### SetPeriod

Sets the amount of time for a full circle (in seconds).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPeriod | float |  |

**Return:** void  

### SetRadius

Sets the radius of the circle.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRadius | float |  |

**Return:** void