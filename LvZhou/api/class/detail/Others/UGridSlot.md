---
title: UGridSlot
language: cpp
---

# UGridSlot

A slot for UGridPanel, these slots all share the same size as the largest slot
  in the grid.

> Inheritance: UPanelSlot

## Variables

| Name | Type | Description |
|------|------|-------------|
| Padding | FMargin | The padding area between the slot and the content it contains. |
| HorizontalAlignment | TEnumAsByte < EHorizontalAlignment > | The alignment of the object horizontally. |
| VerticalAlignment | TEnumAsByte < EVerticalAlignment > | The alignment of the object vertically. |
| Row | int32 | The row index of the cell this slot is in |
| RowSpan | int32 |  |
| Column | int32 | The column index of the cell this slot is in |
| ColumnSpan | int32 |  |
| Layer | int32 | Positive values offset this cell to be hit-tested and drawn on top of others. De |
| Nudge | FVector2D | Offset this slot's content by some amount; positive values offset to lower right |

## Functions

### SetPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

**Return:** void  

### SetRow

Sets the row index of the slot, this determines what cell the slot is in the panel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRow | int32 |  |

**Return:** void  

### SetRowSpan

How many rows this this slot spans over

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InRowSpan | int32 |  |

**Return:** void  

### SetColumn

Sets the column index of the slot, this determines what cell the slot is in the panel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColumn | int32 |  |

**Return:** void  

### SetColumnSpan

How many columns this slot spans over

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColumnSpan | int32 |  |

**Return:** void  

### SetLayer

Sets positive values offset this cell to be hit-tested and drawn on top of others.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InLayer | int32 |  |

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