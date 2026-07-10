---
title: UWidgetInteractionComponent
language: cpp
---

# UWidgetInteractionComponent

This is a component to allow interaction with the Widget Component.  This class allows you to 
  simulate a sort of laser pointer device, when it hovers over widgets it will send the basic signals 
  to show as if the mouse were moving on top of it.  You'll then tell the component to simulate key presses, 
  like Left Mouse, down and up, to simulate a mouse click.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| VirtualUserIndex | int32 | Represents the Virtual User Index.  Each virtual user should be represented by a |
| PointerIndex | float | Each user virtual controller or virtual finger tips being simulated should use a |
| TraceChannel | TEnumAsByte < ECollisionChannel > | The trace channel to use when tracing for widget components in the world. |
| InteractionDistance | float | The distance in game units the component should be able to interact with a widge |
| InteractionSource | EWidgetInteractionSource | Should we project from the world location of the component?  If you set this to  |
| bEnableHitTesting | bool | Should the interaction component perform hit testing (Automatic or Custom) and a |
| bShowDebug | bool | Shows some debugging lines and a hit sphere to help you debug interactions. |
| DebugColor | FLinearColor | Determines the color of the debug lines. |
| CustomHitResult | FHitResult | Stores the custom hit result set by the player. |
| LocalHitLocation | FVector2D | The 2D location on the widget component that was hit. |
| LastLocalHitLocation | FVector2D | The last 2D location on the widget component that was hit. |
| HoveredWidgetComponent | UWidgetComponent * | The widget component we're currently hovering over. |
| LastHitResult | FHitResult | The last hit result we used. |
| bIsHoveredWidgetInteractable | bool | Are we hovering over any interactive widgets. |
| bIsHoveredWidgetFocusable | bool | Are we hovering over any focusable widget? |
| bIsHoveredWidgetHitTestVisible | bool | Are we hovered over a widget that is hit test visible? |

## Functions

### PressPointerKey

Presses a key as if the mousepointer were the source of it.  Normally you would just use
	  LeftRight mouse button for the Key.  However - advanced uses could also be imagined where you
	  send other keys to signal widgets to take special actions if they're under the cursor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey |  |

**Return:** void  

### ReleasePointerKey

Releases a key as if the mousepointer were the source of it.  Normally you would just use
	  LeftRight mouse button for the Key.  However - advanced uses could also be imagined where you
	  send other keys to signal widgets to take special actions if they're under the cursor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey |  |

**Return:** void  

### PressKey

Press a key as if it had come from the keyboard.  Avoid using this for 'a-z|A-Z', things like
	  the Editable Textbox in Slate expect OnKeyChar to be called to signal a specific character being
	  send to the widget.  So for those cases you should use SendKeyChar.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey  |  |
| bRepeat | bool |  |

**Return:** bool  

### ReleaseKey

Releases a key as if it had been released by the keyboard.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey |  |

**Return:** bool  

### PressAndReleaseKey

Does both the press and release of a simulated keyboard key.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey |  |

**Return:** bool  

### SendKeyChar

Transmits a list of characters to a widget by simulating a OnKeyChar event for each key listed in
	  the string.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Characters | FString  |  |
| bRepeat | bool |  |

**Return:** bool  

### ScrollWheel

Sends a scroll wheel event to the widget under the last hit result.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ScrollDelta | float |  |

**Return:** void  

### GetHoveredWidgetComponent

Get the currently hovered widget component.

**Return:** UWidgetComponent * 

### IsOverInteractableWidget

Returns true if a widget under the hit result is interactive.  e.g. Slate widgets 
	  that return true for IsInteractable().

**Return:** bool 

### IsOverFocusableWidget

Returns true if a widget under the hit result is focusable.  e.g. Slate widgets that 
	  return true for SupportsKeyboardFocus().

**Return:** bool 

### IsOverHitTestVisibleWidget

Returns true if a widget under the hit result is has a visibility that makes it hit test 
	  visible.  e.g. Slate widgets that return true for GetVisibility().IsHitTestVisible().

**Return:** bool 

### GetLastHitResult

Gets the last hit result generated by the component.  Returns the custom hit result if that was set.

**Return:** const FHitResult & 

### Get2DHitLocation

Gets the last hit location on the widget in 2D, local pixel units of the render target.

**Return:** FVector2D 

### SetCustomHitResult

Set custom hit result.  This is only taken into account if InteractionSource is set to EWidgetInteractionSource::Custom.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HitResult | FHitResult & |  |

**Return:** void