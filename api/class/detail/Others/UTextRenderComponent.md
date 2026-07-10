---
title: UTextRenderComponent
language: cpp
---

# UTextRenderComponent

Renders text in the world with given font. Contains usual font related attributes such as Scale, Alignment, Color etc.

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | Text content, can be multi line using <br> as line separator |
| TextMaterial | UMaterialInterface * | Text material |
| Font | UFont * | Text font |
| HorizontalAlignment | TEnumAsByte < enum EHorizTextAligment > | Horizontal text alignment |
| VerticalAlignment | TEnumAsByte < enum EVerticalTextAligment > | Vertical text alignment |
| TextRenderColor | FColor | Color of the text, can be accessed as vertex color |
| XScale | float | Horizontal scale, default is 1.0 |
| YScale | float | Vertical scale, default is 1.0 |
| WorldSize | float | Vertical size of the fonts largest character in world units. Transform, XScale a |
| InvDefaultSize | float | The inverse of the Font's character height. |
| HorizSpacingAdjust | float | Horizontal adjustment per character, default is 0.0 |
| VertSpacingAdjust | float | Vertical adjustment per character, default is 0.0 |
| bAlwaysRenderAsText | uint32 | Allows text to draw unmodified when using debug visualization modes. |

## Functions

### SetText

Change the text value and signal the primitives to be rebuilt 
	  The FString variant is deprecated in favor of the FText variant

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FString & |  |

**Return:** void  

### K2_SetText

Change the text value and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FText & |  |

**Return:** void  

### SetTextMaterial

Change the text material and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface * |  |

**Return:** void  

### SetFont

Change the font and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | UFont * |  |

**Return:** void  

### SetHorizontalAlignment

Change the horizontal alignment and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | EHorizTextAligment |  |

**Return:** void  

### SetVerticalAlignment

Change the vertical alignment and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | EVerticalTextAligment |  |

**Return:** void  

### SetTextRenderColor

Change the text render color and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FColor |  |

**Return:** void  

### SetXScale

Change the text X scale and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetYScale

Change the text Y scale and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetHorizSpacingAdjust

Change the text horizontal spacing adjustment and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetVertSpacingAdjust

Change the text vertical spacing adjustment and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### SetWorldSize

Change the world size of the text and signal the primitives to be rebuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | float |  |

**Return:** void  

### GetTextLocalSize

Get local size of text

**Return:** FVector 

### GetTextWorldSize

Get world space size of text

**Return:** FVector