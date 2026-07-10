---
title: UMultiLineEditableText
language: cpp
---

# UMultiLineEditableText

Editable text box widget

> Inheritance: UTextLayoutWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Text | FText | The text content for this editable text box widget |
| HintText | FText | Hint text that appears when there is no text in the text box |
| HintTextDelegate | FGetText | A bindable delegate to allow logic to drive the hint text of the widget |
| WidgetStyle | FTextBlockStyle | The style |
| bIsReadOnly | bool | Sets whether this text block can be modified interactively by the user |
| Font_DEPRECATED | FSlateFontInfo | Font color and opacity (overrides Style) |
| AllowContextMenu | bool | Whether the context menu can be opened |
| UseModiferKeyForNewLine | bool |  |

## Functions

### GetText

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
| InHintText | FText |  |

**Return:** void  

### SetIsReadOnly

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReadOnly | bool |  |

**Return:** void  

### SetWidgetStyle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWidgetStyle | FTextBlockStyle & |  |

**Return:** void  

### SetModiferKeyForNewLine

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReadOnly | bool |  |

**Return:** void  

### SetWrapTextAt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWrapTextAt | float |  |

**Return:** void  

### SetFont

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFontInfo | FSlateFontInfo |  |

**Return:** void  

### SetColorAndOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Color | FSlateColor |  |

**Return:** void