---
title: UUserWidget
language: cpp
---

# UUserWidget

The user widget is extensible by users through the WidgetBlueprint.

> Inheritance: UWidget -> INamedSlotInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| ColorAndOpacity | FLinearColor | The color and opacity of this widget.  Tints all child widgets. |
| ColorAndOpacityDelegate | FGetLinearColor |  |
| ForegroundColor | FSlateColor | The foreground color of the widget, this is inherited by sub widgets.  Any color |
| ForegroundColorDelegate | FGetSlateColor |  |
| Padding | FMargin | The padding area around the content. |
| ActiveSequencePlayers | TArray < UUMGSequencePlayer * > | All the sequence players currently playing |
| StoppedSequencePlayers | TArray < UUMGSequencePlayer * > | List of sequence players to cache and clean up when safe |
| NamedSlotBindings | TArray < FNamedSlotBinding > | Stores the widgets being assigned to named slots |
| WidgetTree | UWidgetTree * | The widget tree contained inside this user widget initialized by the blueprint |
| bOptimiseAnimation | bool |  |
| bNoBubbleUpEvent | bool |  |
| Priority | int32 |  |
| bSupportsKeyboardFocus_DEPRECATED | uint8 |  |
| bIsFocusable | uint8 | Setting this flag to true, allows this widget to accept focus when clicked, or w |
| bStopAction | uint8 |  |
| CanDisableDrag | uint8 |  |
| bCanEverTick | uint8 | If a widget doesn't ever need to tick the blueprint, setting this to false is an |
| bCanEverPaint | uint8 | If a widget doesn't ever need to do custom painting in the blueprint, setting th |
| bCookedWidgetTree | uint8 | If this user widget was created using a cooked widget tree.  If that's true, we  |
| WidgetSkinProxy | UObject * | UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "WidgetSkin") |
| InputComponent | UInputComponent * |  |
| AnimationCallbacks | TArray < FAnimationEventBinding > |  |

## Functions

### AddToViewport

Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called
	  to explicitly set the size.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ZOrder | int32 | The higher the number, the more on top this widget will be. |

**Return:** void  

### AddToPlayerScreen

Adds the widget to the game's viewport in a section dedicated to the player.  This is valuable in a split screen
	  game where you need to only show a widget over a player's portion of the viewport.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ZOrder | int32 | The higher the number, the more on top this widget will be. |

**Return:** bool  

### RemoveFromViewport

Removes the widget from the viewport.

**Return:** void 

### GetZOrderOfViewportWidget

Get Z-order of Viewport Widget, added by fourthchen

**Return:** int 

### SetPositionInViewport

Sets the widgets position in the viewport.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector2D  | The 2D position to set the widget to in the viewport. |
| bRemoveDPIScale | bool | If you've already calculated inverse DPI, set this to false. |

**Return:** void  

### SetDesiredSizeInViewport

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Size | FVector2D |  |

**Return:** void  

### SetOffsetsInViewport

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Margin | FMargin |  |

**Return:** void  

### SetAnchorsInViewport

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Anchors | FAnchors |  |

**Return:** void  

### SetAlignmentInViewport

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Alignment | FVector2D |  |

**Return:** void  

### GetAnchorsInViewport

**Return:** FAnchors 

### GetAlignmentInViewport

**Return:** FVector2D 

### GetIsVisible

**Return:** bool 

### IsInViewport

**Return:** bool true if the widget was added to the viewport using AddToViewport.

### GetOwningLocalPlayer

Gets the local player associated with this UI.

**Return:** ULocalPlayer * The owning local player.

### SetOwningLocalPlayer

Sets the player associated with this UI via LocalPlayer reference.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocalPlayer | ULocalPlayer * | The local player you want to be the conceptual owner of this UI. |

**Return:** void  

### GetOwningPlayer

Gets the player controller associated with this UI.

**Return:** APlayerController * The player controller that owns the UI.

### SetOwningPlayer

Sets the local player associated with this UI via PlayerController reference.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocalPlayerController | APlayerController * | The PlayerController of the local player you want to be the conceptual owner of this UI. |

**Return:** void  

### GetOwningPlayerPawn

Gets the player pawn associated with this UI.

**Return:** APawn * Gets the owning player pawn that's owned by the player controller assigned to this widget.

### PreConstruct

Called by both the game and the editor.  Allows users to run initial setup for their widgets to better preview
	  the setup in the designer and since generally that same setup code is required at runtime, it's called there
	  as well.
	 
	  WARNING
	  This is intended purely for cosmetic updates using locally owned data, you can not safely access any game related
	  state, if you call something that doesn't expect to be run at editor time, you may crash the editor.
	 
	  In the event you save the asset with blueprint code that causes a crash on evaluation.  You can turn off
	  PreConstruct evaluation in the Widget Designer settings in the Editor Preferences.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsDesignTime | bool |  |

**Return:** void  

### Construct

Called after the underlying slate widget is constructed.  Depending on how the slate object is used
	  this event may be called multiple times due to adding and removing from the hierarchy.

**Return:** void 

### ConstructForLua

**Return:** void 

### Destruct

Called when a widget is no longer referenced causing the slate resource to destroyed.  Just like
	  Construct this event can be called multiple times.

**Return:** void 

### Tick

Ticks this widget.  Override in derived classes, but always call the parent implementation.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The space allotted for this widget |
| InDeltaTime | float | Real time passed since last tick |

**Return:** void  

### OnPaint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Context | FPaintContext & |  |

**Return:** void  

### IsInteractable

Gets a value indicating if the widget is interactive.

**Return:** bool 

### OnFocusReceived

Called when keyboard focus is given to this widget.  This event does not bubble.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InFocusEvent | FFocusEvent | FocusEvent |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnFocusLost

Called when this widget loses focus.  This event does not bubble.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFocusEvent | FFocusEvent | FocusEvent |

**Return:** void  

### OnAddedToFocusPath

If focus is gained on on this widget or on a child widget and this widget is added
	  to the focus path, and wasn't previously part of it, this event is called.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFocusEvent | FFocusEvent | FocusEvent |

**Return:** void  

### OnRemovedFromFocusPath

If focus is lost on on this widget or on a child widget and this widget is
	  no longer part of the focus path.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFocusEvent | FFocusEvent | FocusEvent |

**Return:** void  

### OnKeyChar

Called after a character is entered while this widget has focus
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InCharacterEvent | FCharacterEvent | Character event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnPreviewKeyDown

Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus
	  If a widget handles this event, OnKeyDown will not be passed to the focused widget.
	 
	  This event is primarily to allow parent widgets to consume an event before a child widget processes
	  it and it should be used only when there is no better design alternative.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InKeyEvent | FKeyEvent | Key event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnKeyDown

Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled)
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InKeyEvent | FKeyEvent | Key event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnKeyUp

Called after a key (keyboard, controller, ...) is released when this widget has focus
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InKeyEvent | FKeyEvent | Key event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnAnalogValueChanged

Called when an analog value changes on a button that supports analog
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| InAnalogInputEvent | FAnalogInputEvent | Analog Event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnMouseButtonDown

The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** FEventReply  Whether the event was handled along with possible requests for the system to take action.

### OnPreviewMouseButtonDown

Just like OnMouseButtonDown, but tunnels instead of bubbling.
	  If this even is handled, OnMouseButtonDown will not be sent.
	  
	  Use this event sparingly as preview events generally make UIs more
	  difficult to reason about.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** FEventReply  Whether the event was handled along with possible requests for the system to take action.

### OnMouseButtonUp

The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** FEventReply  Whether the event was handled along with possible requests for the system to take action.

### OnMouseMove

The system calls this method to notify the widget that a mouse moved within it. This event is bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** FEventReply  Whether the event was handled along with possible requests for the system to take action.

### OnMouseEnter

The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  | The Geometry of the widget receiving the event |
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** void  

### OnMouseLeave

The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MouseEvent | FPointerEvent & | Information about the input event |

**Return:** void  

### OnMouseWheel

Called when the mouse wheel is spun. This event is bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  |
| MouseEvent | FPointerEvent & | Mouse event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnMouseButtonDoubleClick

Called when a mouse button is double clicked.  Override this in derived classes.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMyGeometry | FGeometry  | Widget geometry |
| InMouseEvent | FPointerEvent & | Mouse button event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnDragDetected

Called when Slate detects that a widget started to be dragged.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  |
| PointerEvent | FPointerEvent &  | MouseMove that triggered the drag |
| Operation | UDragDropOperation * & |   The drag operation that was detected. |

**Return:** void  

### OnDragCancelled

Called when the user cancels the drag operation, typically when they simply release the mouse button after
	  beginning a drag operation, but failing to complete the drag.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerEvent | FPointerEvent &  | Last mouse event from when the drag was canceled. |
| Operation | UDragDropOperation * |   The drag operation that was canceled. |

**Return:** void  

### OnDragEnter

Called during drag and drop when the drag enters the widget.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |   The geometry of the widget receiving the event. |
| PointerEvent | FPointerEvent  |  The mouse event from when the drag entered the widget. |
| Operation | UDragDropOperation * |   The drag operation that entered the widget. |

**Return:** void  

### OnDragLeave

Called during drag and drop when the drag leaves the widget.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerEvent | FPointerEvent  |  The mouse event from when the drag left the widget. |
| Operation | UDragDropOperation * |   The drag operation that entered the widget. |

**Return:** void  

### OnDragOver

Called during drag and drop when the the mouse is being dragged over a widget.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |   The geometry of the widget receiving the event. |
| PointerEvent | FPointerEvent  |  The mouse event from when the drag occurred over the widget. |
| Operation | UDragDropOperation * |   The drag operation over the widget. |

**Return:** bool  'true' to indicate that you handled the drag over operation.  Returning 'false' will cause the operation to continue to bubble up.

### OnDrop

Called when the user is dropping something onto a widget.  Ends the drag and drop operation, even if no widget handles this.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |   The geometry of the widget receiving the event. |
| PointerEvent | FPointerEvent  |  The mouse event from when the drag occurred over the widget. |
| Operation | UDragDropOperation * |   The drag operation over the widget. |

**Return:** bool  'true' to indicate you handled the drop operation.

### OnTouchGesture

Called when the user performs a gesture on trackpad. This event is bubbled.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |   The geometry of the widget receiving the event. |
| GestureEvent | FPointerEvent & | gesture event |

**Return:** FEventReply   Returns whether the event was handled, along with other possible actions

### OnTouchStarted

Called when a touchpad touch is started (finger down)
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  The geometry of the widget receiving the event. |
| InTouchEvent | FPointerEvent & | The touch event generated |

**Return:** FEventReply  

### OnTouchMoved

Called when a touchpad touch is moved  (finger moved)
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  The geometry of the widget receiving the event. |
| InTouchEvent | FPointerEvent & | The touch event generated |

**Return:** FEventReply  

### OnTouchEnded

Called when a touchpad touch is ended (finger lifted)
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  The geometry of the widget receiving the event. |
| InTouchEvent | FPointerEvent & | The touch event generated |

**Return:** FEventReply  

### OnMotionDetected

Called when motion is detected (controller or device)
	  e.g. Someone tilts or shakes their controller.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MyGeometry | FGeometry  |  The geometry of the widget receiving the event. |
| InMotionEvent | FMotionEvent |  |

**Return:** FEventReply  

### OnMouseCaptureLost

Called when mouse capture is lost if it was owned by this widget.

**Return:** void 

### GetAllChildrenOfType

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Type | FString  |  |
| Children | TArray < UWidget * > & |  |

**Return:** void  

### GetTypedChildrenOfWidget

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | UWidget *  |  |
| Type | FString  |  |
| Children | TArray < UWidget * > & |  |

**Return:** void  

### BindToAnimationStarted

Bind an animation started delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation *  | the animation to listen for starting or finishing. |
| Delegate | FWidgetAnimationDynamicEvent | the delegate to call when the animation's state changes |

**Return:** void  

### UnbindFromAnimationStarted

Unbind an animation started delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation *  | the animation to listen for starting or finishing. |
| Delegate | FWidgetAnimationDynamicEvent | the delegate to call when the animation's state changes |

**Return:** void  

### UnbindAllFromAnimationStarted

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation * |  |

**Return:** void  

### BindToAnimationFinished

Bind an animation finished delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation *  | the animation to listen for starting or finishing. |
| Delegate | FWidgetAnimationDynamicEvent | the delegate to call when the animation's state changes |

**Return:** void  

### UnbindFromAnimationFinished

Unbind an animation finished delegate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation *  | the animation to listen for starting or finishing. |
| Delegate | FWidgetAnimationDynamicEvent | the delegate to call when the animation's state changes |

**Return:** void  

### UnbindAllFromAnimationFinished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation * |  |

**Return:** void  

### BindToAnimationEvent

Allows binding to a specific animation's event.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation *  | the animation to listen for starting or finishing. |
| Delegate | FWidgetAnimationDynamicEvent  | the delegate to call when the animation's state changes |
| AnimationEvent | EWidgetAnimationEvent  | the event to watch for. |
| UserTag | FName | Scopes the delegate to only be called when the animation completes with a specific tag set on it when it was played. |

**Return:** void  

### OnAnimationStarted

Called when an animation is started.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation * | the animation that started |

**Return:** void  

### OnAnimationFinished

Called when an animation has either played all the way through or is stopped
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UWidgetAnimation * | The animation that has finished playing |

**Return:** void  

### SetColorAndOpacity

Sets the tint of the widget, this affects all child widgets.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColorAndOpacity | FLinearColor | The tint to apply to all child widgets. |

**Return:** void  

### SetForegroundColor

Sets the foreground color of the widget, this is inherited by sub widgets.  Any color property 
	  that is marked as inherit will use this color.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InForegroundColor | FSlateColor | The foreground color. |

**Return:** void  

### SetPadding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FMargin |  |

**Return:** void  

### PlayAnimation

Plays an animation in this widget a specified number of times
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation *  | The animation to play |
| StartAtTime | float  | The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation. |
| NumLoopsToPlay | int32  | The number of times to loop this animation (0 to loop indefinitely) |
| PlayMode | EUMGSequencePlayMode :: Type  | Specifies the playback mode |
| PlaybackSpeed | float | The speed at which the animation should play |

**Return:** void  

### PlayAnimationTo

Plays an animation in this widget a specified number of times stoping at a specified time
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation *  | The animation to play |
| StartAtTime | float  | The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation. |
| EndAtTime | float  | The absolute time in the animation where to stop, this is only considered in the last loop. |
| NumLoopsToPlay | int32  | The number of times to loop this animation (0 to loop indefinitely) |
| PlayMode | EUMGSequencePlayMode :: Type  | Specifies the playback mode |
| PlaybackSpeed | float | The speed at which the animation should play |

**Return:** void  

### StopAnimation

Stops an already running animation in this widget
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * |  |

**Return:** void  

### JumpAnimation

Stop and jump to the specified time in this widget
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation *  | The animation to jump |
| JumpAtTime | float | specified time |

**Return:** void  

### PauseAnimation

Pauses an already running animation in this widget
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * |  |

**Return:** float  the time point the animation was at when it was paused, relative to its start position.  Use this as the StartAtTime when you trigger PlayAnimation.

### GetAnimationCurrentTime

Gets the current time of the animation in this widget
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * |  |

**Return:** float  the current time of the animation.

### IsAnimationPlaying

Gets whether an animation is currently playing on this widget.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * | The animation to check the playback status of |

**Return:** bool  True if the animation is currently playing

### IsAnyAnimationPlaying

**Return:** bool True if any animation is currently playing

### SetNumLoopsToPlay

Changes the number of loops to play given a playing animation
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation *  | The animation that is already playing |
| NumLoopsToPlay | int32 | The number of loops to play. (0 to loop indefinitely) |

**Return:** void  

### SetPlaybackSpeed

Changes the playback rate of a playing animation
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation *  | The animation that is already playing |
| PlaybackSpeed | float |  |

**Return:** void  

### ReverseAnimation

If an animation is playing, this function will reverse the playback.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * | The playing animation that we want to reverse |

**Return:** void  

### IsAnimationPlayingForward

returns true if the animation is currently playing forward, false otherwise.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimation | UWidgetAnimation * | The playing animation that we want to know about |

**Return:** bool  

### PlaySound

Plays a sound through the UI
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SoundToPlay | USoundBase * |  |

**Return:** void  

### GetWidgetFromName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Name | FName & |  |

**Return:** UWidget *   The uobject widget corresponding to a given name

### GetVariableWidgetFromName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Name | FName & |  |

**Return:** UWidget *  

### IsPlayingAnimation

Are we currently playing any animations?

**Return:** bool 

### NewWidgetObjectBP

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Outer | UObject *  |  |
| UserWidgetClass | UClass * |  |

**Return:** UUserWidget *  

### GetCacheLayerId

return CacheLayerId only windows

**Return:** int32 

### ListenForInputAction

Listens for a particular Player Input Action by name.  This requires that those actions are being executed, and
	  that we're not currently in UI-Only Input Mode.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionName | FName  |  |
| EventType | TEnumAsByte < EInputEvent >  |  |
| bConsume | bool  |  |
| Callback | FOnInputAction |  |

**Return:** void  

### StopListeningForInputAction

Removes the binding for a particular action's callback.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionName | FName  |  |
| EventType | TEnumAsByte < EInputEvent > |  |

**Return:** void  

### StopListeningForAllInputActions

Stops listening to all input actions, and unregisters the input component with the player controller.

**Return:** void 

### RegisterInputComponent

ListenForInputAction will automatically Register an Input Component with the player input system.
	  If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
	  UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.

**Return:** void 

### UnregisterInputComponent

StopListeningForAllInputActions will automatically Register an Input Component with the player input system.
	  If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
	  UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.

**Return:** void 

### IsListeningForInputAction

Checks if the action has a registered callback with the input component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionName | FName |  |

**Return:** bool  

### SetInputActionPriority

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPriority | int32 |  |

**Return:** void  

### SetInputActionBlocking

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bShouldBlock | bool |  |

**Return:** void