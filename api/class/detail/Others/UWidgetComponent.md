---
title: UWidgetComponent
language: cpp
---

# UWidgetComponent

The widget component provides a surface in the 3D environment on which to render widgets normally rendered to the screen.
  Widgets are first rendered to a render target, then that render target is displayed in the world.
 
  Material Properties set by this component on whatever material overrides the default.
  SlateUI [Texture]
  BackColor [Vector]
  TintColorAndOpacity [Vector]
  OpacityFromTexture [Scalar]

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Space | EWidgetSpace | The coordinate space in which to render the widget |
| TimingPolicy | EWidgetTimingPolicy | How this widget should deal with timing, pausing, etc. |
| WidgetClass | TSubclassOf < UUserWidget > | The class of User Widget to create and display an instance of |
| DrawSize | FIntPoint | The size of the displayed quad. |
| bManuallyRedraw | bool | Should we wait to be told to redraw to actually draw? |
| bCheckLowDeviceQualityLevel | bool | Should LowDevice Phone draw UI? |
| bRedrawRequested | bool | Has anyone requested we redraw? |
| RedrawTime | float | The time in between draws, if 0 - we would redraw every frame.  If 1, we would r |
| CurrentDrawSize | FIntPoint | The actual draw size, this changes based on DrawSize - or the desired size of th |
| bDrawAtDesiredSize | bool | Causes the render target to automatically match the desired size. 	  	  WARNING: |
| Pivot | FVector2D | The AlignmentPivot point that the widget is placed at relative to the position. |
| bReceiveHardwareInput | bool | Register with the viewport for hardware input from the true mouse and keyboard.  |
| bWindowFocusable | bool | Is the virtual window created to host the widget focusable? |
| OwnerPlayer | ULocalPlayer * | The owner player for a widget component, if this widget is drawn on the screen,  |
| BackgroundColor | FLinearColor | The background color of the component |
| TintColorAndOpacity | FLinearColor | Tint color and opacity for this component |
| OpacityFromTexture | float | Sets the amount of opacity from the widget's UI texture to use when rendering th |
| BlendMode | EWidgetBlendMode | The blend mode for the widget. |
| bIsTwoSided | bool | Is the component visible from behind? |
| TickWhenOffscreen | bool | Should the component tick the widget when it's off screen? |
| Widget | UUserWidget * | The User Widget object displayed and managed by this component |
| BodySetup | UBodySetup * | The body setup of the displayed quad |
| TranslucentMaterial | UMaterialInterface * | The material instance for translucent widget components |
| TranslucentMaterial_OneSided | UMaterialInterface * | The material instance for translucent, one-sided widget components |
| OpaqueMaterial | UMaterialInterface * | The material instance for opaque widget components |
| OpaqueMaterial_OneSided | UMaterialInterface * | The material instance for opaque, one-sided widget components |
| MaskedMaterial | UMaterialInterface * | The material instance for masked widget components. |
| MaskedMaterial_OneSided | UMaterialInterface * | The material instance for masked, one-sided widget components. |
| RenderTarget | UTextureRenderTarget2D * | The target to which the user widget is rendered |
| MaterialInstance | UMaterialInstanceDynamic * | The dynamic instance of the material that the render target is attached to |
| bAddedToScreen | bool |  |
| bEditTimeUsable | bool | Allows the widget component to be used at editor time.  For use in the VR-Editor |
| SharedLayerName | FName | Layer Name the widget will live on |
| LayerZOrder | int32 | ZOrder the layer will be created on, note this only matters on the first time a  |
| GeometryMode | EWidgetGeometryMode | Controls the geometry of the widget component. See EWidgetGeometryMode. |
| CylinderArcAngle | float | Curvature of a cylindrical widget in degrees. |
| FlipVector | FVector | Curvature of a cylindrical widget in degrees. |
| bUseBackColorInTwoSideMode | bool | For Two side Color |
| BackColor | FLinearColor |  |
| bHideIfOccluded | bool | Hide widget component when the attached parent is occluded in player's view (ONL |

## Functions

### GetUserWidgetObject

**Return:** UUserWidget * The user widget object displayed by this component

### GetRenderTarget

**Return:** UTextureRenderTarget2D * The render target to which the user widget is rendered

### ForceWidgetUpdateImmediate

**Return:** void 

### ForceWidgetUpdateImmediately

**Return:** void 

### ForceUpdateRenderTarget

**Return:** void 

### GetMaterialInstance

**Return:** UMaterialInstanceDynamic * The dynamic material instance used to render the user widget

### SetWidget

Sets the widget to use directly. This function will keep track of the widget till the next time it's called
	 	with either a newer widget or a nullptr

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UUserWidget * |  |

**Return:** void  

### SetOwnerPlayer

Sets the local player that owns this widget component.  Setting the owning player controls
	  which player's viewport the widget appears on in a split screen scenario.  Additionally it
	  forwards the owning player to the actual UserWidget that is spawned.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocalPlayer | ULocalPlayer * |  |

**Return:** void  

### GetOwnerPlayer

Gets the local player that owns this widget component.

**Return:** ULocalPlayer * 

### GetDrawSize

**Return:** FVector2D The draw size of the quad in the world

### GetCurrentDrawSize

Returns the "actual" draw size of the quad in the world

**Return:** FVector2D 

### SetDrawSize

Sets the draw size of the quad in the world

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Size | FVector2D |  |

**Return:** void  

### RequestRedraw

Requests that the widget be redrawn.

**Return:** void 

### GetTickWhenOffscreen

Gets whether the widget ticks when offscreen or not

**Return:** bool 

### SetTickWhenOffscreen

Sets whether the widget ticks when offscreen or not

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bWantTickWhenOffscreen | bool |  |

**Return:** void  

### SetBackgroundColor

Sets the background color and opacityscale for this widget

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewBackgroundColor | FLinearColor |  |

**Return:** void  

### SetTintColorAndOpacity

Sets the tint color and opacity scale for this widget

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTintColorAndOpacity | FLinearColor |  |

**Return:** void