---
title: UBorder
language: cpp
---

# UBorder

A border is a container widget that can contain one child widget, providing an opportunity 
  to surround it with a background image and adjustable padding.
 
   Single Child
   Image

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| HorizontalAlignment | TEnumAsByte < EHorizontalAlignment > | The alignment of the content horizontally. |
| VerticalAlignment | TEnumAsByte < EVerticalAlignment > | The alignment of the content vertically. |
| bShowEffectWhenDisabled | uint8 | Whether or not to show the disabled effect when this border is disabled |
| ContentColorAndOpacity | FLinearColor | Color and opacity multiplier of content in the border |
| ContentColorAndOpacityDelegate | FGetLinearColor | A bindable delegate for the ContentColorAndOpacity. |
| ResetBlendColor | bool |  |
| Padding | FMargin | The padding area between the slot and the content it contains. |
| Background | FSlateBrush | Brush to drag as the background |
| BackgroundDelegate | FGetSlateBrush | A bindable delegate for the Brush. |
| BrushColor | FLinearColor | Color and opacity of the actual border image |
| BrushColorDelegate | FGetLinearColor | A bindable delegate for the BrushColor. |
| DesiredSizeScale | FVector2D | Scales the computed desired size of this border and its contents. Useful 	  for  |
| OnMouseButtonDownEvent | FOnPointerEvent |  |
| OnMouseButtonUpEvent | FOnPointerEvent |  |
| OnMouseMoveEvent | FOnPointerEvent |  |
| OnMouseDoubleClickEvent | FOnPointerEvent |  |

## Functions

### SetContentColorAndOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InContentColorAndOpacity | FLinearColor |  |

**Return:** void  

### SetResetBlendColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bResetBlendColor | bool |  |

**Return:** void  

### SetPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

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

### SetBrushColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBrushColor | FLinearColor |  |

**Return:** void  

### SetBrush

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBrush | FSlateBrush & |  |

**Return:** void  

### SetBrushFromAsset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | USlateBrushAsset * |  |

**Return:** void  

### SetBrushFromTexture

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture2D * |  |

**Return:** void  

### SetBrushFromMaterial

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface * |  |

**Return:** void  

### GetDynamicMaterial

**Return:** UMaterialInstanceDynamic * 

### SetDesiredSizeScale

Sets the DesireSizeScale of this border.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InScale | FVector2D |  The X and Y multipliers for the desired size |

**Return:** void