---
title: UWidgetLayoutLibrary
language: cpp
---

# UWidgetLayoutLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### ProjectWorldLocationToWidgetPosition

Gets the projected world to screen position for a player, then converts it into a widget
	  position, which takes into account any quality scaling.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController *  | The player controller to project the position in the world to their screen. |
| WorldLocation | FVector  | The world location to project from. |
| ScreenPosition | FVector2D & | The position in the viewport with quality scale removed and DPI scale remove. |

**Return:** bool  true if the position projects onto the screen.

### GetViewportScale

Gets the current DPI Scale being applied to the viewport and all the Widgets.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** float  

### GetViewportSize

Gets the size of the game viewport.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** FVector2D  

### GetViewportWidgetGeometry

Gets the geometry of the widget holding all widgets added to the "Viewport".  You
	  can use this geometry to convert between absolute and local space of widgets held on this
	  widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** FGeometry  

### GetPlayerScreenWidgetGeometry

Gets the geometry of the widget holding all widgets added to the "Player Screen". You
	  can use this geometry to convert between absolute and local space of widgets held on this
	  widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * |  |

**Return:** FGeometry  

### GetMousePositionOnPlatform

Gets the platform's mouse cursor position.  This is the 'absolute' desktop location of the mouse.

**Return:** FVector2D 

### GetMousePositionOnViewport

Gets the platform's mouse cursor position in the local space of the viewport widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** FVector2D  

### GetMousePositionScaledByDPI

Gets the mouse position of the player controller, scaled by the DPI.  If you're trying to go from raw mouse screenspace coordinates
	  to fullscreen widget space, you'll need to transform the mouse into DPI Scaled space.  This function performs that scaling.
	 
	  MousePositionScaledByDPI = MousePosition  (1  ViewportScale).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Player | APlayerController *  |  |
| LocationX | float &  |  |
| LocationY | float & |  |

**Return:** bool  

### SlotAsBorderSlot

Gets the slot object on the child widget as a Border Slot, allowing you to manipulate layout information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a border panel. |

**Return:** UBorderSlot *  

### SlotAsCanvasSlot

Gets the slot object on the child widget as a Canvas Slot, allowing you to manipulate layout information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a canvas panel. |

**Return:** UCanvasPanelSlot *  

### SlotAsGridSlot

Gets the slot object on the child widget as a Grid Slot, allowing you to manipulate layout information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a grid panel. |

**Return:** UGridSlot *  

### SlotAsHorizontalBoxSlot

Gets the slot object on the child widget as a Horizontal Box Slot, allowing you to manipulate its information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a Horizontal Box. |

**Return:** UHorizontalBoxSlot *  

### SlotAsOverlaySlot

Gets the slot object on the child widget as a Overlay Slot, allowing you to manipulate layout information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a overlay panel. |

**Return:** UOverlaySlot *  

### SlotAsUniformGridSlot

Gets the slot object on the child widget as a Uniform Grid Slot, allowing you to manipulate layout information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a uniform grid panel. |

**Return:** UUniformGridSlot *  

### SlotAsVerticalBoxSlot

Gets the slot object on the child widget as a Vertical Box Slot, allowing you to manipulate its information.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * | The child widget of a Vertical Box. |

**Return:** UVerticalBoxSlot *  

### RemoveAllWidgets

Removes all widgets from the viewport.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** void  

### SetNewUsedLayerPolicy

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget *  |  |
| NewLayerPolicy | int32 |  |

**Return:** void