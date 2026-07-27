---
title: UUniformGridPanel
language: cpp
---

# UUniformGridPanel

A panel that evenly divides up available space between all of its children.

> Inheritance: UPanelWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| SlotPadding | FMargin | Padding given to each slot |
| MinDesiredSlotWidth | float | The minimum desired width of the slots |
| MinDesiredSlotHeight | float | The minimum desired height of the slots |

## Functions

### SetSlotPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSlotPadding | FMargin |  |

**Return:** void  

### SetMinDesiredSlotWidth

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinDesiredSlotWidth | float |  |

**Return:** void  

### SetMinDesiredSlotHeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinDesiredSlotHeight | float |  |

**Return:** void  

### AddChildToUniformGrid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** UUniformGridSlot *