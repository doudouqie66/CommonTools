---
title: UColorSlider
language: cpp
---

# UColorSlider

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| ColorHSVDelegate | FGetLinearColor |  |
| SliderHandleColorDelegate | FGetLinearColor |  |
| bUseHandleColorOrCurrentColor | bool |  |
| ColorHSV | FLinearColor |  |
| SliderHandleColor | FLinearColor |  |
| Channel | EColorSliderChannels |  |
| SliderStyle | FSliderStyle |  |
| SliderBarFrame | FSlateBrush |  |

## Functions

### GetColor

**Return:** FLinearColor 

### SetColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColorHSV | FLinearColor |  |

**Return:** void  

### SetSliderHandleColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSliderHandleColor | FLinearColor |  |

**Return:** void  

### GetColorSliderChannels

**Return:** EColorSliderChannels 

### SetColorSliderChannels

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InChannel | EColorSliderChannels |  |

**Return:** void  

### SetUseHandleColorOrCurrentColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUse | bool |  |

**Return:** void