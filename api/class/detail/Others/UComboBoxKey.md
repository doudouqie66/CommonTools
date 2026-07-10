---
title: UComboBoxKey
language: cpp
---

# UComboBoxKey

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.
  Use OnGenerateConentWidgetEvent to return a custom built widget.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Options | TArray < TSharedPtr < FName > > | . |
| SelectedOption | TSharedPtr < FName > |  |
| WidgetStyle | FComboBoxStyle | The combobox style. |
| ItemStyle | FTableRowStyle | The item row style. |
| ScrollBarStyle | FScrollBarStyle | The scroll bar style. |
| ForegroundColor | FSlateColor | The foreground color to pass through the hierarchy. |
| ContentPadding | FMargin |  |
| MaxListHeight | float | The max height of the combobox list that opens |
| bHasDownArrow | bool | When false, the down arrow is not generated and it is up to the API consumer 	   |
| bEnableGamepadNavigationMode | bool | When false, directional keys will change the selection. When true, ComboBox 	  m |
| bIsFocusable | bool | When true, allows the combo box to receive keyboard focus |

## Functions

### AddOption

Add an element to the option list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FName |  |

**Return:** UMG_API void  

### RemoveOption

Remove an element to the option list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FName |  |

**Return:** UMG_API bool  

### ClearOptions

Remove all the elements of the option list.

**Return:** UMG_API void 

### ClearSelection

Clear the current selection.

**Return:** UMG_API void 

### SetSelectedOption

Set the current selected option.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FName |  |

**Return:** UMG_API void  

### GetSelectedOption

Get the current selected option

**Return:** UMG_API FName 

### IsOpen

Is the combobox menu opened.

**Return:** UMG_API bool 

### SetContentPadding

Set the padding for content.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

**Return:** UMG_API void  

### GetContentPadding

Get the padding for content.

**Return:** UMG_API FMargin 

### IsEnableGamepadNavigationMode

Is the combobox navigated by gamepad.

**Return:** UMG_API bool 

### SetEnableGamepadNavigationMode

Set whether the combobox is navigated by gamepad.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEnableGamepadNavigationMode | bool |  |

**Return:** UMG_API void  

### IsHasDownArrow

Is the combobox arrow showing.

**Return:** UMG_API bool 

### SetHasDownArrow

Set whether the combobox arrow is showing.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHasDownArrow | bool |  |

**Return:** UMG_API void  

### GetMaxListHeight

Get the maximum height of the combobox list.

**Return:** UMG_API float 

### SetMaxListHeight

Set the maximum height of the combobox list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxHeight | float |  |

**Return:** UMG_API void  

### GetWidgetStyle

Get the style of the combobox.

**Return:** const UMG_API FComboBoxStyle & 

### SetWidgetStyle

Set the style of the combobox.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWidgetStyle | FComboBoxStyle & |  |

**Return:** UMG_API void  

### GetItemStyle

Get the style of the items.

**Return:** const UMG_API FTableRowStyle & 

### SetItemStyle

Set the style of the items.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InItemStyle | FTableRowStyle & |  |

**Return:** UMG_API void  

### GetScrollBarStyle

Get the style of the scrollbar.

**Return:** const UMG_API FScrollBarStyle & 

### IsFocusable

Is the combobox focusable.

**Return:** UMG_API bool 

### GetForegroundColor

Get the foreground color of the button.

**Return:** UMG_API FSlateColor