---
title: UStackBoxSlot
language: cpp
---

# UStackBoxSlot

The Slot for the UStackBox, contains the widget that is flowed vertically or horizontally.

> Inheritance: UPanelSlot

## Variables

| Name | Type | Description |
|------|------|-------------|
| Padding | FMargin | The padding area between the slot and the content it contains. |
| Size | FSlateChildSize | How much space this slot should occupy in the direction of the panel. |
| HorizontalAlignment | TEnumAsByte < EHorizontalAlignment > | The alignment of the object horizontally. |
| VerticalAlignment | TEnumAsByte < EVerticalAlignment > | The alignment of the object vertically. |

## Functions

### GetPadding

**Return:** UMG_API FMargin 

### SetPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

**Return:** UMG_API void  

### GetSize

**Return:** UMG_API FSlateChildSize 

### SetSize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSize | FSlateChildSize |  |

**Return:** UMG_API void  

### GetHorizontalAlignment

**Return:** UMG_API EHorizontalAlignment 

### SetHorizontalAlignment

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHorizontalAlignment | EHorizontalAlignment |  |

**Return:** UMG_API void  

### GetVerticalAlignment

**Return:** UMG_API EVerticalAlignment 

### SetVerticalAlignment

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVerticalAlignment | EVerticalAlignment |  |

**Return:** UMG_API void