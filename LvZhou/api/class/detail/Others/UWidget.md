---
title: UWidget
language: cpp
---

# UWidget

This is the base class for all wrapped Slate controls that are exposed to UObjects.

> Inheritance: UVisual

## Variables

| Name | Type | Description |
|------|------|-------------|
| Slot | UPanelSlot * | The parent slot of the UWidget.  Allows us to easily inline edit the layout cont |
| CachedPanel_ForGC | UPanelWidget * |  |
| ToolTipText | FText | Tooltip text to show when the user hovers over the widget with the mouse |
| ToolTipWidget | UWidget * | Tooltip widget to show when the user hovers over the widget with the mouse |
| IgnorePixelSnapping | bool |  |
| RelatedStyleWidgetName | FName |  |
| RelatedStyleWidget | TWeakObjectPtr < UWidget > |  |
| RenderTransform | FWidgetTransform | The render transform of the widget allows for arbitrary 2D transforms to be appl |
| RenderTransformPivot | FVector2D | The render transform pivot controls the location about which transforms are appl |
| bIsVariable | uint8 | Allows controls to be exposed as variables in a blueprint.  Not all controls nee |
| bCreatedByConstructionScript | uint8 | Flag if the Widget was created from a blueprint |
| bIsEnabled | uint8 | Sets whether this widget can be modified interactively by the user |
| bOverride_Cursor | uint8 |  |
| bIsVolatile | uint8 | Engine modify End 	 	 	  If true prevents the widget or its child's geometry or  |
| bWriteSceneZBuffer | uint8 |  |
| UsedLayerPolicy | uint8 | DrawLayer's policy, 0: default, 1: prevent increasing layer to force batch |
| PreservedLayerNum | uint8 |  |
| FixedLayerPolicy | uint8 | DrawLayer's policy, 0: default, 1: Fixed layer to force batch |
| FixedLayerNum | uint8 |  |
| IngoreRectMove | uint8 |  |
| CareRectMove | uint8 |  |
| Cursor | TEnumAsByte < EMouseCursor :: Type > | The cursor to show when the mouse is over the widget |
| Clipping | EWidgetClipping | Controls how the clipping behavior of this widget.  Normally content that overfl |
| Visibility | ESlateVisibility | The visibility of the widget |
| RenderOpacity | float | The opacity of the widget |
| Navigation | UWidgetNavigation * | The navigation object for this widget is optionally created if the user has conf |
| bCatchVisibilityChangedEvent | bool | True if you want to enable auto destroy user widget stragegy |
| NativeBindings | TArray < UPropertyBinding * > | Native property bindings. |
| AreaTypeFlags | int32 |  |
| ZValue | int32 |  |
| bLogTraceVisibilityChange | uint8 | Engine modify Start |
| bHiddenInDesigner | uint8 | Stores the design time flag setting if the widget is hidden inside the designer |
| bExpandedInDesigner | uint8 | Stores the design time flag setting if the widget is expanded inside the designe |
| bLockedInDesigner | uint8 | Stores the design time flag setting if the widget is locked inside the designer |
| DesignerFlags | TEnumAsByte < EWidgetDesignFlags :: Type > | Any flags used by the designer at edit time. |
| DisplayLabel | FString | The friendly name for this widget displayed in the designer and BP graph. |
| bStyleHidding | bool |  |
| bStyleRemove | bool |  |
| bStyleInsertInvBox | bool |  |

## Functions

### SetRenderTransform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTransform | FWidgetTransform |  |

**Return:** void  

### SetRenderScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Scale | FVector2D |  |

**Return:** void  

### SetRenderShear

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Shear | FVector2D |  |

**Return:** void  

### SetRenderAngle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Angle | float |  |

**Return:** void  

### SetRenderTranslation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Translation | FVector2D |  |

**Return:** void  

### SetRenderTransformPivot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Pivot | FVector2D |  |

**Return:** void  

### GetIsEnabled

Gets the current enabled status of the widget

**Return:** bool 

### SetIsEnabled

Sets the current enabled status of the widget

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInIsEnabled | bool |  |

**Return:** void  

### SetToolTipText

Sets the tooltip text for the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InToolTipText | FText & |  |

**Return:** void  

### SetToolTip

Sets a custom widget as the tooltip of the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * |  |

**Return:** void  

### SetCursor

Sets the cursor to show over the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InCursor | EMouseCursor :: Type |  |

**Return:** void  

### ResetCursor

Resets the cursor to use on the widget, removing any customization for it.

**Return:** void 

### IsVisible

**Return:** bool true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible.

### GetVisibility

Gets the current visibility of the widget.

**Return:** ESlateVisibility 

### GetUVisibility

**Return:** ESlateVisibility 

### SetLocalVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldVisibility | ESlateVisibility  |  |
| NewVisibility | ESlateVisibility  |  |
| Widget | UWidget * |  |

**Return:** void  

### SetLocalVisibilityWithoutPCUIStyle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldVisibility | ESlateVisibility  |  |
| NewVisibility | ESlateVisibility  |  |
| Widget | UWidget * |  |

**Return:** void  

### GetPCVisibility

**Return:** ESlateVisibility 

### IsPCVisible

**Return:** bool 

### SetVisibility

Sets the visibility of the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InVisibility | ESlateVisibility |  |

**Return:** void  

### SetAdvancedCollapsed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsAdvancedCollapsed | bool |  |

**Return:** void  

### GetRenderOpacity

Gets the current visibility of the widget.

**Return:** float 

### SetRenderOpacity

Sets the visibility of the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOpacity | float |  |

**Return:** void  

### GetClipping

Gets the clipping state of this widget.

**Return:** EWidgetClipping 

### SetClipping

Sets the clipping state of this widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InClipping | EWidgetClipping |  |

**Return:** void  

### ForceVolatile

Sets the forced volatility of the widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bForce | bool |  |

**Return:** void  

### IsVolatile

**Return:** bool 

### IsHovered

**Return:** bool true if the widget is currently being hovered by a pointer device

### SetWriteSceneZBuffer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInWriteSceneZBuffer | bool |  |

**Return:** void  

### HasKeyboardFocus

Checks to see if this widget currently has the keyboard focus
	 

**Return:** bool  True if this widget has keyboard focus

### HasMouseCapture

Checks to see if this widget is the current mouse captor

**Return:** bool  True if this widget has captured the mouse

### SetKeyboardFocus

Sets the focus to this widget.

**Return:** void 

### HasUserFocus

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * |  |

**Return:** bool  true if this widget is focused by a specific user.

### HasAnyUserFocus

**Return:** bool true if this widget is focused by any user.

### HasFocusedDescendants

**Return:** bool true if any descendant widget is focused by any user.

### HasUserFocusedDescendants

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * |  |

**Return:** bool  true if any descendant widget is focused by a specific user.

### SetUserFocus

Sets the focus to this widget for a specific user

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * |  |

**Return:** void  

### ForceLayoutPrepass

Forces a pre-pass.  A pre-pass caches the desired size of the widget hierarchy owned by this widget.
	  One pre-pass is already happens for every widget before Tick occurs.  You only need to perform another
	  pre-pass if you are adding child widgets this frame and want them to immediately be visible this frame.

**Return:** void 

### InvalidateLayoutAndVolatility

Invalidates the widget from the view of a layout caching widget that may own this widget.
	  will force the owning widget to redraw and cache children on the next paint pass.

**Return:** void 

### GetDesiredSize

Gets the widgets desired size.
	  NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must
	        have occurred before this value will be of any use.
	 

**Return:** FVector2D The widget's desired size

### SetAllNavigationRules

Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rule | EUINavigationRule  | The rule to use when navigation is taking place |
| WidgetToFocus | FName | When using the Explicit rule, focus on this widget |

**Return:** void  

### SetNavigationRule

Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Direction | EUINavigation  |  |
| Rule | EUINavigationRule  | The rule to use when navigation is taking place |
| WidgetToFocus | FName | When using the Explicit rule, focus on this widget |

**Return:** void  

### GetParent

Gets the parent widget

**Return:** UPanelWidget * 

### RemoveFromParent

Removes the widget from its parent widget.  If this widget was added to the player's screen or the viewport
	  it will also be removed from those containers.

**Return:** void 

### GetCachedGeometry

Gets the last geometry used to Tick the widget.  This data may not exist yet if this call happens prior to
	  the widget having been tickedpainted, or it may be out of date, or a frame behind.
	 
	  We recommend not to use this data unless there's no other way to solve your problem.  Normally in Slate we
	  try and handle these issues by making a dependent widget part of the hierarchy, as to avoid frame behind
	  or what are referred to as hysteresis problems, both caused by depending on geometry from the previous frame
	  being used to advise how to layout a dependent object the current frame.

**Return:** const FGeometry & 

### GetCachedAllottedGeometry

**Return:** const FGeometry & 

### SetIgnorePixelSnapping

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Ignore | bool |  |

**Return:** void  

### GetOwningPlayer

Gets the player controller associated with this UI.

**Return:** APlayerController * The player controller that owns the UI.

### AddAdvancedCollapsedCount

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Num | uint8 |  |

**Return:** void  

### SubAdvancedCollapsedCount

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Num | uint8 |  |

**Return:** void  

### GetWidgetOutlineName

**Return:** FString 

### IsCachedWidgetValid

**Return:** bool