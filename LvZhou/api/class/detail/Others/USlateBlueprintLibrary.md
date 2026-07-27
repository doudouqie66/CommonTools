---
title: USlateBlueprintLibrary
language: cpp
---

# USlateBlueprintLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### IsUnderLocation

Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry &  |  |
| AbsoluteCoordinate | FVector2D & |  |

**Return:** bool  true if the provided location in absolute coordinates is within the bounds of this geometry.

### AbsoluteToLocal

Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry &  |  |
| AbsoluteCoordinate | FVector2D |  |

**Return:** FVector2D  Transforms AbsoluteCoordinate into the local space of this Geometry.

### LocalToAbsolute

Translates local coordinates into absolute coordinates
	 
	  Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry &  |  |
| LocalCoordinate | FVector2D |  |

**Return:** FVector2D   Absolute coordinates

### GetLocalSize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry & |  |

**Return:** FVector2D  the size of the geometry in local space.

### GetAbsoluteSize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry & |  |

**Return:** FVector2D  the size of the geometry in absolute space.

### GetAbsolutePosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Geometry | FGeometry & |  |

**Return:** FVector2D  

### EqualEqual_SlateBrush

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FSlateBrush &  |  |
| B | FSlateBrush & |  |

**Return:** bool  Whether brushes A and B are identical.

### LocalToViewport

Translates local coordinate of the geometry provided into local viewport coordinates.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Geometry | FGeometry &  |  |
| LocalCoordinate | FVector2D  |  |
| PixelPosition | FVector2D &  | The position in the game's viewport, usable for line traces and |
| ViewportPosition | FVector2D & | The position in the space of other widgets in the viewport. Like if you wanted |

**Return:** void  

### AbsoluteToViewport

Translates absolute coordinate in desktop space of the geometry provided into local viewport coordinates.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| AbsoluteDesktopCoordinate | FVector2D  |  |
| PixelPosition | FVector2D &  | The position in the game's viewport, usable for line traces and |
| ViewportPosition | FVector2D & | The position in the space of other widgets in the viewport. Like if you wanted |

**Return:** void  

### ScreenToWidgetLocal

Translates a screen position in pixels into the local space of a widget with the given geometry.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Geometry | FGeometry &  |  |
| ScreenPosition | FVector2D  |  |
| LocalCoordinate | FVector2D & |  |

**Return:** void  

### ScreenToWidgetAbsolute

Translates a screen position in pixels into absolute application coordinates.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ScreenPosition | FVector2D  |  |
| AbsoluteCoordinate | FVector2D & |  |

**Return:** void  

### ScreenToViewport

Translates a screen position in pixels into the local space of the viewport widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ScreenPosition | FVector2D  |  |
| ViewportPosition | FVector2D & |  |

**Return:** void  

### GetSlateConstant_GlobalScrollAmount

Provide GetGlobalScrollAmount() to Lua.

**Return:** float 

### ReleaseAllMouseCapture

**Return:** void 

### ReleaseMouseCaptureWithIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIndex | int32 |  |

**Return:** void  

### ReleaseAllMousePassThroughCapture

**Return:** void 

### ReleaseMousePassThroughCaptureWithIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIndex | int32 |  |

**Return:** void  

### SetMouseCaptor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerIndex | int32  |  |
| Widget | UWidget * |  |

**Return:** bool  

### SetMousePassThroughCaptor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerIndex | int32  |  |
| Widget | UWidget * |  |

**Return:** bool