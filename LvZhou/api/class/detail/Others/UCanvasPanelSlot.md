---
title: UCanvasPanelSlot
language: cpp
---

# UCanvasPanelSlot

> Inheritance: UPanelSlot

## Variables

| Name | Type | Description |
|------|------|-------------|
| LayoutData | FAnchorData | The anchoring information for the slot |
| bAutoSize | bool | When AutoSize is true we use the widget's desired size |
| ZOrder | int32 | The order priority this widget is rendered in.  Higher values are rendered last  |
| bAntiAdaptation | bool |  |

## Functions

### SetLayout

Sets the layout data of the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InLayoutData | FAnchorData & |  |

**Return:** void  

### GetLayout

Gets the layout data of the slot

**Return:** FAnchorData 

### SetPosition

Sets the position of the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPosition | FVector2D |  |

**Return:** void  

### GetPosition

Gets the position of the slot

**Return:** FVector2D 

### SetSize

Sets the size of the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSize | FVector2D |  |

**Return:** void  

### GetSize

Gets the size of the slot

**Return:** FVector2D 

### SetOffsets

Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOffset | FMargin |  |

**Return:** void  

### GetOffsets

Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points

**Return:** FMargin 

### SetAnchors

Sets the anchors on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnchors | FAnchors |  |

**Return:** void  

### GetAnchors

Gets the anchors on the slot

**Return:** FAnchors 

### SetAlignment

Sets the alignment on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAlignment | FVector2D |  |

**Return:** void  

### GetAlignment

Gets the alignment on the slot

**Return:** FVector2D 

### SetAutoSize

Sets if the slot to be auto-sized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbAutoSize | bool |  |

**Return:** void  

### GetAutoSize

Gets if the slot to be auto-sized

**Return:** bool 

### SetZOrder

Sets the z-order on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InZOrder | int32 |  |

**Return:** void  

### GetZOrder

Gets the z-order on the slot

**Return:** int32 

### SetAntiAdaptation

Sets the bAntiAdaptation on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbAntiAdaptation | bool |  |

**Return:** void  

### GetAntiAdaptation

Gets the bAntiAdaptation on the slot

**Return:** bool 

### SetMinimum

Sets the anchors on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinimumAnchors | FVector2D |  |

**Return:** void  

### SetMaximum

Sets the anchors on the slot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaximumAnchors | FVector2D |  |

**Return:** void  

### OnAntiAdaptationOffsetsChange

**Return:** void