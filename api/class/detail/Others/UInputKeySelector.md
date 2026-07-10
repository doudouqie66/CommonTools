---
title: UInputKeySelector
language: cpp
---

# UInputKeySelector

A widget for selecting a single key or a single key with a modifier.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| WidgetStyle | FButtonStyle | The button style used at runtime |
| TextStyle | FTextBlockStyle | The button style used at runtime |
| SelectedKey | FInputChord | The currently selected key chord. |
| Font_DEPRECATED | FSlateFontInfo |  |
| Margin | FMargin | The amount of blank space around the text used to display the currently selected |
| ColorAndOpacity_DEPRECATED | FLinearColor |  |
| KeySelectionText | FText | Sets the text which is displayed while selecting keys. |
| NoKeySpecifiedText | FText | Sets the text to display when no key text is available or not selecting a key. |
| bAllowModifierKeys | bool | When true modifier keys such as control and alt are allowed in the  	 input chor |
| bAllowGamepadKeys | bool | When true gamepad keys are allowed in the input chord representing the selected  |
| EscapeKeys | TArray < FKey > | When true gamepad keys are allowed in the input chord representing the selected  |

## Functions

### SetSelectedKey

Sets the currently selected key.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSelectedKey | FInputChord & |  |

**Return:** void  

### SetKeySelectionText

Sets the text which is displayed while selecting keys.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InKeySelectionText | FText |  |

**Return:** void  

### SetNoKeySpecifiedText

Sets the text to display when no key text is available or not selecting a key.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNoKeySpecifiedText | FText |  |

**Return:** void  

### SetAllowModifierKeys

Sets whether or not modifier keys are allowed in the selected key.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAllowModifierKeys | bool |  |

**Return:** void  

### SetAllowGamepadKeys

Sets whether or not gamepad keys are allowed in the selected key.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAllowGamepadKeys | bool |  |

**Return:** void  

### GetIsSelectingKey

Returns true if the widget is currently selecting a key, otherwise returns false.

**Return:** bool 

### SetTextBlockVisibility

Sets the visibility of the text block.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVisibility | ESlateVisibility |  |

**Return:** void