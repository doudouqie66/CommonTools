---
title: ADebugCameraController
language: cpp
---

# ADebugCameraController

Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules.

 To turn it on, please press Alt+C or both (left and right) analogs on XBox pad,
 or use the "ToggleDebugCamera" console command. Check the debug camera bindings
 in DefaultPawn.cpp for the camera controls.

> Inheritance: APlayerController

## Variables

| Name | Type | Description |
|------|------|-------------|
| bShowSelectedInfo | uint32 | Whether to show information about the selected actor on the debug camera HUD. |
| bIsFrozenRendering | uint32 | @todo document |
| DrawFrustum | UDrawFrustumComponent * | @todo document |
| SpeedScale | float | Allows control over the speed of the spectator pawn. This scales the speed based |
| InitialMaxSpeed | float | Initial max speed of the spectator pawn when we start possession. |
| InitialAccel | float | Initial acceleration of the spectator pawn when we start possession. |
| InitialDecel | float | Initial deceleration of the spectator pawn when we start possession. |

## Functions

### ShowDebugSelectedInfo

**Return:** void 

### ToggleDisplay

Toggles the display of debug info and input commands for the Debug Camera.

**Return:** void 

### GetSelectedActor

**Return:** AActor * 

### SetPawnMovementSpeedScale

Sets the pawn movement speed scale.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSpeedScale | float |  |

**Return:** void  

### ReceiveOnActivate

Function called on activation of debug camera controller.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OriginalPC | APlayerController * | The active player controller before this debug camera controller was possessed by the player. |

**Return:** void  

### ReceiveOnDeactivate

Function called on deactivation of debug camera controller.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RestoredPC | APlayerController * | The Player Controller that the player input is being returned to. |

**Return:** void  

### ReceiveOnActorSelected

Called when an actor has been selected with the primary key (e.g. left mouse button).
	 
	  The selection trace starts from the center of the debug camera's view.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSelectedActor | AActor *  |  |
| SelectHitLocation | FVector &  | The exact world-space location where the selection trace hit the New Selected Actor. |
| SelectHitNormal | FVector &  | The world-space surface normal of the New Selected Actor at the hit location. |
| Hit | FHitResult & |  |

**Return:** void