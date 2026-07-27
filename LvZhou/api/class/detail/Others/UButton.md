---
title: UButton
language: cpp
---

# UButton

The button is a click-able primitive widget to enable basic interaction, you
  can place any other widget inside a button to make a more complex and
  interesting click-able element in your UI.
 
   Single Child
   Clickable

> Inheritance: UContentWidget -> IWidgetSkinInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| Style_DEPRECATED | USlateWidgetStyleAsset * | The template style asset, used to seed the mutable instance of the style. |
| WidgetStyle | FButtonStyle | The button style used at runtime |
| ColorAndOpacity | FLinearColor | The color multiplier for the button content |
| BackgroundColor | FLinearColor | The color multiplier for the button background |
| ClickMethod | TEnumAsByte < EButtonClickMethod :: Type > | The type of mouse action required by the user to trigger the buttons 'Click' |
| TouchMethod | TEnumAsByte < EButtonTouchMethod :: Type > | The type of touch action required by the user to trigger the buttons 'Click' |
| ListenEscMethod | TEnumAsByte < EListenEscMethod :: Type > | 通过命名识别关闭按钮，识别忽略大小写下划线，推荐命名(Button_Close,NewButton_Close...) |
| ListenActions | TArray < FButtonListenAction > | 通过监听Action，来统一模拟按键点击，扩展Esc模拟点击功能 |
| IsTipsBgBtn | bool | 是否为Tips背景按钮 |
| IsFocusable | bool | Sometimes a button should only be mouse-clickable and never keyboard focusable. |
| IsPassMouseEvent | bool |  |
| IsImgAlphaBtn | bool |  |
| bUseCustomSettings | bool |  |
| CustomHitAreaTexture | UTexture2D * |  |
| CustomHitAreaAlpha | int |  |
| bIsShowHover | bool |  |
| OnMouseButtonDownEvent | FOnPointerEvent |  |
| OnMouseButtonUpEvent | FOnPointerEvent |  |
| OnMouseMoveEvent | FOnPointerEvent |  |
| InputActionBindings | FButtonInputActionBindingsStruct |  |
| EscRespondSetting | FEscRespondSetting |  |
| IsThisFrameClicked | bool |  |

## Functions

### SetStyle

Sets the color multiplier for the button background

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStyle | FButtonStyle & |  |

**Return:** void  

### SetColorAndOpacity

Sets the color multiplier for the button content

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColorAndOpacity | FLinearColor |  |

**Return:** void  

### SetBackgroundColor

Sets the color multiplier for the button background

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBackgroundColor | FLinearColor |  |

**Return:** void  

### IsPressed

Returns true if the user is actively pressing the button.  Do not use this for detecting 'Clicks', use the OnClicked event instead.
	 

**Return:** bool true if the user is actively pressing the button otherwise false.

### Release

**Return:** void 

### SetClickMethod

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClickMethod | EButtonClickMethod :: Type |  |

**Return:** void  

### SetTouchMethod

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTouchMethod | EButtonTouchMethod :: Type |  |

**Return:** void  

### GetReleasedReason

**Return:** uint8 

### SetListenEscMethod

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InListenEscMethod | EListenEscMethod :: Type |  |

**Return:** void  

### GetListenEscMethod

**Return:** EListenEscMethod :: Type 

### SetShowHover

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InShowHover | bool |  |

**Return:** void  

### AddListenAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActionName | FName  |  |
| InType | EButtonListenActionEvent :: Type |  |

**Return:** void  

### RemoveListenAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActionName | FName |  |

**Return:** void  

### ClearListenActions

**Return:** void 

### GetCacheLayerId

return CacheLayerId only windows

**Return:** int32 

### RespondEscape

**Return:** void 

### GetButtonsFromAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OutButtons | TArray < UButton * > &  |  |
| InAction | FName |  |

**Return:** bool  

### ClearInvalidForListenActions

**Return:** void 

### GetButtonsFromTipsBg

**Return:** TArray < UButton * > 

### SetButtonClickedGlobalEvent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InEvent | FOnButtonClickedGlobalEvent |  |

**Return:** void  

### ClearButtonClickedGlobalEvent

**Return:** void 

### SetIsFocusable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFocusable | bool |  |

**Return:** void