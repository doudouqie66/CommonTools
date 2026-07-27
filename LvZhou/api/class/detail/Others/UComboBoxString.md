---
title: UComboBoxString
language: cpp
---

# UComboBoxString

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| DefaultOptions | TArray < FString > | The default list of items to be displayed on the combobox. |
| SelectedOption | FString | The item in the combobox to select by default |
| WidgetStyle | FComboBoxStyle | The style. |
| ItemStyle | FTableRowStyle | The item row style. |
| ScrollBarStyle | FScrollBarStyle | The scroll bar style. |
| ContentPadding | FMargin |  |
| MaxListHeight | float | The max height of the combobox list that opens |
| HasDownArrow | bool | When false, the down arrow is not generated and it is up to the API consumer 	   |
| EnableGamepadNavigationMode | bool | When false, directional keys will change the selection. When true, ComboBox  	 m |
| Font | FSlateFontInfo | The default font to use in the combobox, only applies if you're not implementing |
| ForegroundColor | FSlateColor | The foreground color to pass through the hierarchy. |
| bIsFocusable | bool |  |
| bForceNotify | bool |  |
| OnGenerateWidgetEvent | FGenerateWidgetForString | Called when the widget is needed for the item. |
| OnGenerateSelectWidgetEvent | FGenerateWidgetForString |  |

## Functions

### AddOption

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FString & |  |

**Return:** void  

### RemoveOption

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FString & |  |

**Return:** bool  

### FindOptionIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FString & |  |

**Return:** int32  

### GetOptionAtIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** FString  

### ClearOptions

**Return:** void 

### ClearSelection

**Return:** void 

### RefreshOptions

Refreshes the list of options.  If you added new ones, and want to update the list even if it's
	  currently being displayed use this.

**Return:** void 

### SetSelectedOption

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Option | FString |  |

**Return:** void  

### GetSelectedOption

**Return:** FString 

### GetOptionCount

**Return:** int32 The number of options