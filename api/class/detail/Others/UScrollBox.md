---
title: UScrollBox
language: cpp
---

# UScrollBox

An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.

> Inheritance: UPanelWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| WidgetStyle | FScrollBoxStyle | The style |
| WidgetBarStyle | FScrollBarStyle | The bar style |
| OverscrollLooseness | float | Overscroll Looseness |
| Style_DEPRECATED | USlateWidgetStyleAsset * |  |
| BarStyle_DEPRECATED | USlateWidgetStyleAsset * |  |
| Orientation | TEnumAsByte < EOrientation > | The orientation of the scrolling and stacking in the box. |
| ScrollBarVisibility | ESlateVisibility | Visibility |
| ConsumeMouseWheel | EConsumeMouseWheel | Enable to always consume mouse wheel event, even when scrolling is not possible |
| ScrollbarThickness | FVector2D |  |
| AlwaysShowScrollbar | bool |  |
| AllowOverscroll | bool | Disable to stop scrollbars from activating inertial overscrolling |
| NavigationDestination | EDescendantScrollDestination |  |
| NavigationScrollPadding | float | The amount of padding to ensure exists between the item being navigated to, at t |
| bAllowRightClickDragScrolling | bool | Option to disable right-click-drag scrolling |
| bScrollEnabled | bool | 启用滑动 |
| bScrollDisableHandled | bool | 启用滑动 |
| bPreciseScroll | bool | 启用精准滑动 |
| bDisableDragListScroll | bool | 依旧可以通过拖拽bar或者鼠标滚轮滑动, 仅PC版生效 |

## Functions

### SetOrientation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewOrientation | EOrientation |  |

**Return:** void  

### SetScrollBarVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScrollBarVisibility | ESlateVisibility |  |

**Return:** void  

### SetScrollbarThickness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScrollbarThickness | FVector2D & |  |

**Return:** void  

### SetAlwaysShowScrollbar

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAlwaysShowScrollbar | bool |  |

**Return:** void  

### SetAllowOverscroll

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAllowOverscroll | bool |  |

**Return:** void  

### GetCacheOverscrollOffset

**Return:** float 

### SetOverscrollLooseness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| v | float |  |

**Return:** void  

### SetScrollEnabled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InScrollEnabled | bool |  |

**Return:** void  

### SetScrollDisableHandled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InScrollDisableHandled | bool |  |

**Return:** void  

### SetScrollPrecise

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InScrollPrecise | bool |  |

**Return:** void  

### SetDragListScrollEnabled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDragListScrollEnabled | bool |  |

**Return:** void  

### IsReachEnd

**Return:** bool 

### IsLargerThanContentSize

**Return:** bool 

### SetScrollOffset

Updates the scroll offset of the scrollbox.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScrollOffset | float | is in Slate Units. |

**Return:** void  

### GetScrollOffset

Gets the scroll offset of the scrollbox in Slate Units.

**Return:** float 

### ScrollToStart

Scrolls the ScrollBox to the top instantly

**Return:** void 

### ScrollToEnd

Scrolls the ScrollBox to the bottom instantly during the next layout pass.

**Return:** void 

### StopScroll

**Return:** void 

### ScrollWidgetIntoView

Scrolls the ScrollBox to the widget during the next layout pass.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WidgetToFind | UWidget *  |  |
| AnimateScroll | bool  |  |
| ScrollDestination | EDescendantScrollDestination |  |

**Return:** void