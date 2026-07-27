---
title: UTextBlock
language: cpp
---

# UTextBlock

A simple static text widget.
 
   No Children
   Text

> Inheritance: UTextLayoutWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | The text to display |
| TextDelegate | FGetText | A bindable delegate to allow logic to drive the text of the widget |
| ColorAndOpacity | FSlateColor | The color of the text |
| ColorAndOpacityDelegate | FGetSlateColor | A bindable delegate for the ColorAndOpacity. |
| Font | FSlateFontInfo | The font to render the text with |
| ShadowOffset | FVector2D | The direction the shadow is cast |
| ShadowColorAndOpacity | FLinearColor | The color of the shadow |
| ShadowColorAndOpacityDelegate | FGetLinearColor | A bindable delegate for the ShadowColorAndOpacity. |
| MinDesiredWidth | float | The minimum desired size for the text |
| AutoEllipsisText | bool |  |
| MutiEllipsisText | bool |  |
| MutiEllipsisLine | int32 |  |
| bWrapWithInvalidationPanel | bool | If true, it will automatically wrap this text widget with an invalidation panel |

## Functions

### SetColorAndOpacity

Sets the color and opacity of the text in this text block
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColorAndOpacity | FSlateColor | The new text color and opacity |

**Return:** void  

### SetColorRGBStr

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HexString | FString & |  |

**Return:** void  

### SetOpacity

Sets the opacity of the text in this text block
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOpacity | float | The new text opacity |

**Return:** void  

### SetShadowColorAndOpacity

Sets the color and opacity of the text drop shadow
	  Note: if opacity is zero no shadow will be drawn
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InShadowColorAndOpacity | FLinearColor | The new drop shadow color and opacity |

**Return:** void  

### SetShadowOffset

Sets the offset that the text drop shadow should be drawn at
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InShadowOffset | FVector2D | The new offset |

**Return:** void  

### SetFont

Dynamically set the font info for this text block
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFontInfo | FSlateFontInfo | THe new font info |

**Return:** void  

### SetJustification

Set the text justification for this text block
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InJustification | ETextJustify :: Type | new justification |

**Return:** void  

### SetVerticalJustification

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InJustification | ETextVerticalJustify :: Type |  |

**Return:** void  

### SetNeedVerticalJustificationWhenOverflow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEnable | bool |  |

**Return:** void  

### SetMinDesiredWidth

Set the minimum desired width for this text block
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinDesiredWidth | float | new minimum desired width |

**Return:** void  

### SetAutoEllipsisText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAutoEllipsisText | bool |  |

**Return:** void  

### SetWrapTextAt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWrapTextAt | float |  |

**Return:** void  

### SetMutiEllipsisText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMutiEllipsisText | bool |  |

**Return:** void  

### GetText

Gets the widget text

**Return:** FText The widget text

### GetLocalText

**Return:** FText 

### SetText

Directly sets the widget text.
	  Warning: This will wipe any binding created for the Text property!

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InText | FText | The text to assign to the widget |

**Return:** void