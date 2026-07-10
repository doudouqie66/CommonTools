---
title: USlider
language: cpp
---

# USlider

A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.
 
   No Children

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Value | float | The volume value to display. |
| ValueDelegate | FGetFloat | A bindable delegate to allow logic to drive the value of the widget |
| WidgetStyle | FSliderStyle | The progress bar style |
| Orientation | TEnumAsByte < EOrientation > | The slider's orientation. |
| SliderBarColor | FLinearColor | The color to draw the slider bar in. |
| SliderHandleColor | FLinearColor | The color to draw the slider handle in. |
| IndentHandle | bool | Whether the slidable area should be indented to fit the handle. |
| Locked | bool | Whether the handle is interactive or fixed. |
| StepSize | float | The amount to adjust the value by, when using a controller or keyboard |
| IsFocusable | bool | Should the slider be focusable? |
| SupportClickChange | bool |  |

## Functions

### GetValue

Gets the current value of the slider.

**Return:** float 

### SetValue

Sets the current value of the slider.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | float |  |

**Return:** void  

### SetIndentHandle

Sets if the slidable area should be indented to fit the handle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | bool |  |

**Return:** void  

### SetLocked

Sets the handle to be interactive or fixed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | bool |  |

**Return:** void  

### SetStepSize

Sets the amount to adjust the value by, when using a controller or keyboard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | float |  |

**Return:** void  

### SetSliderBarColor

Sets the color of the slider bar

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | FLinearColor |  |

**Return:** void  

### SetSliderHandleColor

Sets the color of the handle bar

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | FLinearColor |  |

**Return:** void