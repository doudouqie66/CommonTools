---
title: UKismetInputLibrary
language: cpp
---

# UKismetInputLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### CalibrateTilt

Calibrate the tilt for the input device

**Return:** void 

### EqualEqual_KeyKey

Test if the input key are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FKey  | - The key to compare against |
| B | FKey | - The key to compare |

**Return:** bool   True if the key are equal, false otherwise

### EqualEqual_InputChordInputChord

Test if the input chords are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FInputChord  | - The chord to compare against |
| B | FInputChord | - The chord to compare |

**Return:** bool   True if the chords are equal, false otherwise

### Key_IsModifierKey

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a modifier key: Ctrl, Command, Alt, Shift

### Key_IsGamepadKey

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a gamepad button

### Key_IsMouseButton

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a mouse button

### Key_IsKeyboardKey

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a keyboard button

### Key_IsFloatAxis

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a float axis

### Key_IsVectorAxis

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** bool   True if the key is a vector axis

### Key_GetDisplayName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey & |  |

**Return:** FText   The display name of the key.

### InputEvent_IsRepeat

Returns whether or not this character is an auto-repeated keystroke
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if this character is a repeat

### InputEvent_IsShiftDown

Returns true if either shift key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if shift is pressed

### InputEvent_IsLeftShiftDown

Returns true if left shift key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool  True if left shift is pressed.

### InputEvent_IsRightShiftDown

Returns true if right shift key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool  True if right shift is pressed.

### InputEvent_IsControlDown

Returns true if either control key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if control is pressed

### InputEvent_IsLeftControlDown

Returns true if left control key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if left control is pressed

### InputEvent_IsRightControlDown

Returns true if left control key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if left control is pressed

### InputEvent_IsAltDown

Returns true if either alt key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if alt is pressed

### InputEvent_IsLeftAltDown

Returns true if left alt key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if left alt is pressed

### InputEvent_IsRightAltDown

Returns true if right alt key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if right alt is pressed

### InputEvent_IsCommandDown

Returns true if either command key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if command is pressed

### InputEvent_IsLeftCommandDown

Returns true if left command key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if left command is pressed

### InputEvent_IsRightCommandDown

Returns true if right command key was down when this event occurred
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FInputEvent & |  |

**Return:** bool   True if right command is pressed

### GetKeyByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyName | FName & |  |

**Return:** FKey  

### GetKey

Returns the key for this event.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FKeyEvent & |  |

**Return:** FKey   Key name

### GetUserIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FKeyEvent & |  |

**Return:** int32  

### GetAnalogValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FAnalogInputEvent & |  |

**Return:** float  

### PointerEvent_GetScreenSpacePosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** FVector2D  The position of the cursor in screen space

### PointerEvent_GetLastScreenSpacePosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** FVector2D  The position of the cursor in screen space last time we handled an input event

### PointerEvent_GetCursorDelta

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** FVector2D  the distance the mouse traveled since the last event was handled.

### PointerEvent_IsMouseButtonDown

Mouse buttons that are currently pressed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent &  |  |
| MouseButton | FKey |  |

**Return:** bool  

### PointerEvent_GetEffectingButton

Mouse button that caused this event to be raised (possibly EB_None)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** FKey  

### PointerEvent_GetWheelDelta

How much did the mouse wheel turn since the last mouse event

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** float  

### PointerEvent_GetUserIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** int32  The index of the user that caused the event

### PointerEvent_GetPointerIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** int32  The unique identifier of the pointer (e.g., finger index)

### PointerEvent_GetTouchpadIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** int32  The index of the touch pad that generated this event (for platforms with multiple touch pads per user)

### PointerEvent_IsTouchEvent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** bool  Is this event a result from a touch (as opposed to a mouse)

### PointerEvent_TouchForce

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** float  

### PointerEvent_GetGestureType

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** ESlateGesture  The type of touch gesture

### PointerEvent_GetGestureDelta

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Input | FPointerEvent & |  |

**Return:** FVector2D  The change in gesture value since the last gesture event of the same type.