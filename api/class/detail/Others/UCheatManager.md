---
title: UCheatManager
language: cpp
---

# UCheatManager

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| DebugCameraControllerRef | ADebugCameraController * | Debug camera - used to have independent camera without stopping gameplay |
| DebugCameraControllerClass | TSubclassOf < ADebugCameraController > | Debug camera - used to have independent camera without stopping gameplay |

## Functions

### FreezeFrame

Pause the game for Delay seconds.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delay | float |  |

**Return:** void  

### Teleport

Teleport to surface player is looking at.

**Return:** void 

### ChangeSize

Scale the player's size to be F  default size.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| F | float |  |

**Return:** void  

### ChangeTickGroup

Change the tickgroup of aipawns near character

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTickGroup | int32  |  |
| Num | int32 |  |

**Return:** void  

### Fly

Pawn can fly.

**Return:** void 

### Walk

Return to walking movement mode from Fly or Ghost cheat.

**Return:** void 

### Ghost

Pawn no longer collides with the world, and can fly

**Return:** void 

### God

Invulnerability cheat.

**Return:** void 

### Slomo

Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTimeDilation | float |  |

**Return:** void  

### DamageTarget

Damage the actor you're looking at (sourced from the player).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DamageAmount | float |  |

**Return:** void  

### DestroyTarget

Destroy the actor you're looking at.

**Return:** void 

### DestroyAll

Destroy all actors of class aClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| aClass | TSubclassOf < AActor > |  |

**Return:** void  

### DestroyAllPawnsExceptTarget

Destroy all pawns except for the (pawn) target.  If no (pawn) target is found we don't destroy anything.

**Return:** void 

### DestroyPawns

Destroys (by calling destroy directly) all non-player pawns of class aClass in the level

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| aClass | TSubclassOf < APawn > |  |

**Return:** void  

### Summon

Load Classname and spawn an actor of that class

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClassName | FString & |  |

**Return:** void  

### PlayersOnly

Freeze everything in the level except for players.

**Return:** void 

### ViewSelf

Make controlled pawn the viewtarget again.

**Return:** void 

### ViewPlayer

View from the point of view of player with PlayerName S.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| S | FString & |  |

**Return:** void  

### ViewActor

View from the point of view of AActor with Name ActorName.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActorName | FName |  |

**Return:** void  

### ViewClass

View from the point of view of an AActor of class DesiredClass.  Each subsequent ViewClass cycles through the list of actors of that class.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DesiredClass | TSubclassOf < AActor > |  |

**Return:** void  

### StreamLevelIn

Stream in the given level.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageName | FName |  |

**Return:** void  

### OnlyLoadLevel

Load the given level.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageName | FName |  |

**Return:** void  

### StreamLevelOut

Stream out the given level.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageName | FName |  |

**Return:** void  

### ToggleDebugCamera

Toggle between debug cameraplayer camera without locking gameplay and with locking local player controller input.

**Return:** void 

### ToggleAILogging

toggles AI logging

**Return:** void 

### ServerToggleAILogging

**Return:** void 

### DebugCapsuleSweep

Toggle capsule trace debugging. Will trace a capsule from current view point and show where it hits the world

**Return:** void 

### DebugCapsuleSweepSize

Change Trace capsule size

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HalfHeight | float  |  |
| Radius | float |  |

**Return:** void  

### DebugCapsuleSweepChannel

Change Trace Channel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Channel | ECollisionChannel |  |

**Return:** void  

### DebugCapsuleSweepComplex

Change Trace Complex setting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bTraceComplex | bool |  |

**Return:** void  

### DebugCapsuleSweepCapture

Capture current trace and add to persistent list

**Return:** void 

### DebugCapsuleSweepPawn

Capture current local PC's pawn's location and add to persistent list

**Return:** void 

### DebugCapsuleSweepClear

Clear persistent list for trace capture

**Return:** void 

### TestCollisionDistance

Test all volumes in the world to the player controller's view location

**Return:** void 

### RebuildNavigation

Builds the navigation mesh (or rebuilds it).

**Return:** void 

### SetNavDrawDistance

Sets navigation drawing distance. Relevant only in non-editor modes.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DrawDistance | float |  |

**Return:** void  

### DumpOnlineSessionState

Dump online session information

**Return:** void 

### DumpPartyState

Dump known party information

**Return:** void 

### DumpChatState

Dump known chat information

**Return:** void 

### DumpVoiceMutingState

Dump current state of voice chat

**Return:** void 

### BugItGo

This will move the player and set their rotation to the passed in values.
	  We have this version of the BugIt family as it is easier to type in just raw numbers in the console.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| X | float  |  |
| Y | float  |  |
| Z | float  |  |
| Pitch | float  |  |
| Yaw | float  |  |
| Roll | float |  |

**Return:** void  

### BugIt

This function is used to print out the BugIt location.  It prints out copy and paste versions for both IMing someone to type in
	 and also a gameinfo ?options version so that you can append it to your launching url and be taken to the correct place.
	 Additionally, it will take a screen shot so reporting bugs is a one command action!

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ScreenShotDescription | FString & |  |

**Return:** void  

### BugItStringCreator

This will create a BugItGo string for us.  Nice for calling form c++ where you just want the string and no Screenshots

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ViewLocation | FVector  |  |
| ViewRotation | FRotator  |  |
| GoString | FString &  |  |
| LocString | FString & |  |

**Return:** void  

### FlushLog

This will force a flush of the output log to file

**Return:** void 

### LogLoc

Logs the current location in bugit format without taking screenshot and further routing.

**Return:** void 

### SetWorldOrigin

Translate world origin to this player position

**Return:** void 

### SetMouseSensitivityToDefault

Exec function to return the mouse sensitivity to its default value

**Return:** void 

### InvertMouse

Backwards compatibility exec function for people used to it instead of using InvertAxisKey

**Return:** void 

### CheatScript

Executes commands listed in CheatScript.ScriptName ini section of DefaultGame.ini

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ScriptName | FString |  |

**Return:** void  

### ReceiveInitCheatManager

BP implementable event for when CheatManager is created to allow any needed initialization.

**Return:** void 

### ReceiveEndPlay

This is the End Play event for the CheatManager

**Return:** void 

### EnableDebugCamera

Switch controller to debug camera without locking gameplay and with locking local player controller input

**Return:** void 

### DisableDebugCamera

Switch controller from debug camera back to normal controller

**Return:** void