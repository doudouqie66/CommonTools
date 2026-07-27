---
title: UMultiLineEditableTextBox
language: cpp
---

# UMultiLineEditableTextBox

Allows a user to enter multiple lines of text

> Inheritance: UTextLayoutWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | The text content for this editable text box widget |
| HintText | FText | Hint text that appears when there is no text in the text box |
| HintTextDelegate | FGetText | A bindable delegate to allow logic to drive the hint text of the widget |
| WidgetStyle | FEditableTextBoxStyle | The style |
| TextStyle | FTextBlockStyle | The text style |
| bIsReadOnly | bool | Sets whether this text block can be modified interactively by the user |
| AllowContextMenu | bool | Whether the context menu can be opened |
| Style_DEPRECATED | USlateWidgetStyleAsset * |  |
| Font_DEPRECATED | FSlateFontInfo | Font color and opacity (overrides Style) |
| ForegroundColor_DEPRECATED | FLinearColor | Text color and opacity (overrides Style) |
| BackgroundColor_DEPRECATED | FLinearColor | The color of the backgroundborder around the editable text (overrides Style) |
| ReadOnlyForegroundColor_DEPRECATED | FLinearColor | Text color and opacity when read-only (overrides Style) |

## Functions

### GetText

Provide a alternative mechanism for error reporting.

**Return:** FText 

### SetText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InText | FText |  |

**Return:** void  

### SetHintText

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InText | FText |  |

**Return:** void  

### SetError

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InError | FText |  |

**Return:** void  

### SetIsReadOnly

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReadOnly | bool |  |

**Return:** void  

### SetIsEnableMultiLineTextInsertNewLine

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void