---
title: UStackBox
language: cpp
---

# UStackBox

A stack box widget is a layout panel allowing child widgets to be automatically laid out
  vertically or horizontally.
 
   Many Children
   Flows Vertical or Horizontal

> Inheritance: UPanelWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Orientation | TEnumAsByte < EOrientation > | The orientation of the stack box. |

## Functions

### GetOrientation

Get the orientation of the stack box.

**Return:** UMG_API EOrientation 

### SetOrientation

Set the orientation of the stack box. The existing elements will be rearranged.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InType | EOrientation |  |

**Return:** UMG_API void  

### AddChildToStackBox

Adds a new child widget to the container.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** UMG_API UStackBoxSlot *  

### ReplaceStackBoxChildAt

Replace the widget at the given index it with a different widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32  |  |
| Content | UWidget * |  |

**Return:** UMG_API bool