---
title: UWrapBoxSlot
language: cpp
---

# UWrapBoxSlot

The Slot for the UWrapBox, contains the widget that is flowed vertically

> Inheritance: UPanelSlot

## Variables

| Name | Type | Description |
|------|------|-------------|
| Padding | FMargin | The padding area between the slot and the content it contains. |
| bFillEmptySpace | bool | Should this slot fill the remaining space on the line? |
| bForceNewLine | bool | Force this slot display to a new line |
| FillSpanWhenLessThan | float | If the total available space in the wrap panel drops below this threshold, this  |
| HorizontalAlignment | TEnumAsByte < EHorizontalAlignment > | The alignment of the object horizontally. |
| VerticalAlignment | TEnumAsByte < EVerticalAlignment > | The alignment of the object vertically. |

## Functions

### SetPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

**Return:** void  

### SetFillEmptySpace

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbFillEmptySpace | bool |  |

**Return:** void  

### SetFillSpanWhenLessThan

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFillSpanWhenLessThan | float |  |

**Return:** void  

### SetForceNewLine

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInForceNewLine | bool |  |

**Return:** void  

### SetHorizontalAlignment

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHorizontalAlignment | EHorizontalAlignment |  |

**Return:** void  

### SetVerticalAlignment

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVerticalAlignment | EVerticalAlignment |  |

**Return:** void