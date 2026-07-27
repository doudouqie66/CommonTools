---
title: AController
language: cpp
---

# AController

Controllers are non-physical actors that can possess a Pawn to control
  its actions.  PlayerControllers are used by human players to control pawns, while
  AIControllers implement the artificial intelligence for the pawns they control.
  Controllers take control of a pawn using their Possess() method, and relinquish
  control of the pawn by calling UnPossess().
 
  Controllers receive notifications for many of the events occurring for the Pawn they
  are controlling.  This gives the controller the opportunity to implement the behavior
  in response to this event, intercepting the event and superseding the Pawn's default
  behavior.
 
  ControlRotation (accessed via GetControlRotation()), determines the viewingaiming
  direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.

> Inheritance: AActor -> INavAgentInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| Pawn | APawn * | Pawn currently being controlled by this controller.  Use Pawn.Possess() to take  |
| Character | ACharacter * | Character currently being controlled by this controller.  Value is same as Pawn  |
| PlayerState | APlayerState * | PlayerState containing replicated information about the player using this contro |
| TransformComponent | USceneComponent * | Component to give controllers a transform and enable attachment if desired. |
| ControlRotation | FRotator | The control rotation of the Controller. See GetControlRotation. |
| bAttachToPawn | uint32 | If true, the controller location will match the possessed Pawn's location. If fa |
| bIsPlayerController | uint32 | Whether this controller is a PlayerController. |
| IgnoreMoveInput | uint8 | Ignores movement input. Stacked state storage, Use accessor function IgnoreMoveI |
| IgnoreLookInput | uint8 | Ignores look input. Stacked state storage, use accessor function IgnoreLookInput |
| StateName | FName |  |

## Functions

### GetControlRotation

Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view),
	   and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example).

**Return:** FRotator 

### SetControlRotation

Set the control rotation. The RootComponent's rotation will also be updated to match it if RootComponent->bAbsoluteRotation is true.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator & |  |

**Return:** void  

### SetInitialLocationAndRotation

Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector &  |  |
| NewRotation | FRotator & |  |

**Return:** void  

### SetStartSpot

Set the StartSpot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActor | AActor * |  |

**Return:** void  

### ClearStartSpot

Clear the StartSpot

**Return:** void 

### GetStartSpot

**Return:** AActor * 

### LineOfSightTo

Checks line to center and top of other actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Other | AActor *  | is the actor whose visibility is being checked. |
| ViewPoint | FVector  | is eye position visibility is being checked from. If vect(0,0,0) passed in, uses current viewtarget's eye position. |
| bAlternateChecks | bool | used only in AIController implementation |

**Return:** bool  true if controller's pawn can see Other actor.

### OnRep_Pawn

Replication Notification Callbacks

**Return:** void 

### OnRep_PlayerState

**Return:** void 

### CastToPlayerController

DEPRECATED! Use the standard "Cast To" node instead. Casts this Controller to a Player Controller, if possible.

**Return:** APlayerController * 

### ClientSetLocation

Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  |  |
| NewRotation | FRotator |  |

**Return:** void  

### ClientSetRotation

Replicated function to set the pawn rotation, allowing the server to force.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator  |  |
| bResetCamera | bool |  |

**Return:** void  

### K2_GetPawn

Return the Pawn that is currently 'controlled' by this PlayerController

**Return:** APawn * 

### GetViewTarget

Get the actor the controller is looking at

**Return:** AActor * 

### GetDesiredRotation

Get the desired pawn target rotation

**Return:** FRotator 

### IsPlayerController

Returns whether this Controller is a PlayerController.

**Return:** bool 

### IsLocalPlayerController

Returns whether this Controller is a locally controlled PlayerController.

**Return:** bool 

### IsLocalController

Returns whether this Controller is a local controller.

**Return:** bool 

### Possess

Handles attaching this controller to the specified pawn.
	  Only runs on the network authority (where HasAuthority() returns true).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPawn | APawn * | The Pawn to be possessed. |

**Return:** void  

### UnPossess

Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()).

**Return:** void 

### StopMovement

Aborts the move the controller is currently performing

**Return:** void 

### SetIgnoreMoveInput

Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewMoveInput | bool | If true, move input is ignored. If false, input is not ignored. |

**Return:** void  

### ResetIgnoreMoveInput

Stops ignoring move input by resetting the ignore move input state.

**Return:** void 

### IsMoveInputIgnored

Returns true if movement input is ignored.

**Return:** bool 

### SetIgnoreLookInput

Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewLookInput | bool | If true, look input is ignored. If false, input is not ignored. |

**Return:** void  

### ResetIgnoreLookInput

Stops ignoring look input by resetting the ignore look input state.

**Return:** void 

### IsLookInputIgnored

Returns true if look input is ignored.

**Return:** bool 

### ResetIgnoreInputFlags

Reset move and look input ignore flags.

**Return:** void 

### ReceiveInstigatedAnyDamage

Event when this controller instigates ANY damage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Damage | float  |  |
| DamageType | UDamageType *  |  |
| DamagedActor | AActor *  |  |
| DamageCauser | AActor * |  |

**Return:** void