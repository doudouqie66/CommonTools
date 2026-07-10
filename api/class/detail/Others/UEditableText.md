---
title: UEditableText
language: cpp
---

# UEditableText

Editable text box widget

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | The text content for this editable text box widget |
| TextDelegate | FGetText | A bindable delegate to allow logic to drive the text of the widget |
| HintText | FText | Hint text that appears when there is no text in the text box |
| HintTextDelegate | FGetText | A bindable delegate to allow logic to drive the hint text of the widget |
| WidgetStyle | FEditableTextStyle | The style |
| Style_DEPRECATED | USlateWidgetStyleAsset * | Text style |
| BackgroundImageSelected_DEPRECATED | USlateBrushAsset * | Background image for the selected text (overrides Style) |
| BackgroundImageComposing_DEPRECATED | USlateBrushAsset * | Background image for the composing text (overrides Style) |
| CaretImage_DEPRECATED | USlateBrushAsset * | Image brush used for the caret (overrides Style) |
| Font_DEPRECATED | FSlateFontInfo | Font color and opacity (overrides Style) |
| ColorAndOpacity_DEPRECATED | FSlateColor | Text color and opacity (overrides Style) |
| IsReadOnly | bool | Sets whether this text box can actually be modified interactively by the user |
| IsPassword | bool | Sets whether this text box is for storing a password |
| MinimumDesiredWidth | float | Minimum width that a text block should be |
| IsCaretMovedWhenGainFocus | bool | Workaround as we lose focus when the auto completion closes. |
| SelectAllTextWhenFocused | bool | Whether to select all text when the user clicks to give focus on the widget |
| RevertTextOnEscape | bool | Whether to allow the user to back out of changes when they press the escape key |
| ClearKeyboardFocusOnCommit | bool | Whether to clear keyboard focus when pressing enter to commit changes |
| SelectAllTextOnCommit | bool | Whether to select all text when pressing enter to commit changes |
| AllowContextMenu | bool | Whether the context menu can be opened |
| KeyboardType | TEnumAsByte < EVirtualKeyboardType :: Type > | If we're on a platform that requires a virtual keyboard, what kind of keyboard s |
| ShapedTextOptions | FShapedTextOptions | Controls how the text within this widget should be shaped. |

## Functions

### GetText

Gets the widget text

**Return:** FText The widget text

### SetText

Directly sets the widget text.
	  Warning: This will wipe any binding created for the Text property!

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InText | FText | The text to assign to the widget |

**Return:** void  

### SetIsPassword

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbIsPassword | bool |  |

**Return:** void  

### SetHintText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHintText | FText |  |

**Return:** void  

### SetIsReadOnly

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InbIsReadyOnly | bool |  |

**Return:** void  

### SetFont

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Font | FSlateFontInfo |  |

**Return:** void  

### SetColorAndOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Color | FSlateColor |  |

**Return:** void