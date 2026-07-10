---
title: UBackgroundBlur
language: cpp
---

# UBackgroundBlur

A background blur is a container widget that can contain one child widget, providing an opportunity 
  to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget.
 
   Single Child
   Blur Effect

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Padding | FMargin | The padding area between the slot and the content it contains. |
| HorizontalAlignment | TEnumAsByte < EHorizontalAlignment > | The alignment of the content horizontally. |
| VerticalAlignment | TEnumAsByte < EVerticalAlignment > | The alignment of the content vertically. |
| bApplyAlphaToBlur | bool | True to modulate the strength of the blur based on the widget alpha. |
| BlurStrength | float | How blurry the background is.  Larger numbers mean more blurry but will result i |
| bOverrideAutoRadiusCalculation | bool | Whether or not the radius should be computed automatically or if it should use t |
| BlurType | TEnumAsByte < EBlurType > | Blur type |
| BlurDirection | float | Blur direction for directional blur |
| BlurCenter | FVector2D | Blur center for radial and rotate blur |
| BlurRadius | int32 | This is the number of pixels which will be weighted in each direction from any g |
| BlurMask | UTexture * | A blur mask texture |
| LowQualityFallbackBrush | FSlateBrush | An image to draw instead of applying a blur when low quality override mode is en |
| BlurMaskBrush | FSlateBrush |  |

## Functions

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

### SetApplyAlphaToBlur

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInApplyAlphaToBlur | bool |  |

**Return:** void  

### SetBlurRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlurRadius | int32 |  |

**Return:** void  

### SetBlurStrength

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStrength | float |  |

**Return:** void  

### SetBlurDirection

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDirection | float |  |

**Return:** void  

### SetBlurCenter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InCenter | FVector2D |  |

**Return:** void  

### SetBlurMask

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTexture | UTexture * |  |

**Return:** void  

### SetLowQualityFallbackBrush

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBrush | FSlateBrush & |  |

**Return:** void