---
title: UWindow
language: cpp
---

# UWindow

> Inheritance: UUserWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Title | FText |  |
| InitSize | FVector2D |  |
| ContentSlot | UWindowSlot * |  |

## Functions

### SetTitle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTitle | FText |  |

**Return:** void  

### SetContent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** void  

### Resize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSize | FVector2D |  |

**Return:** void