---
title: AMatineeActor
language: cpp
---

# AMatineeActor

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| MatineeData | UInterpData * | The matinee data used by this actor |
| MatineeControllerName | FName | Name of controller node in level script, used to know what function to try and f |
| PlayRate | float | Time multiplier for playback. |
| bPlayOnLevelLoad | uint32 | If true, the matinee will play when the level is loaded. |
| bForceStartPos | uint32 | Lets you force the sequence to always start at ForceStartPosition |
| ForceStartPosition | float | Time position to always start at if bForceStartPos is set to true. |
| bLooping | uint32 | If sequence should pop back to beginning when finished. 	 	Note, if true, will n |
| bRewindOnPlay | uint32 | If true, sequence will rewind itself back to the start each time the Play input  |
| bNoResetOnRewind | uint32 | If true, when rewinding this interpolation, reset the 'initial positions' of any |
| bRewindIfAlreadyPlaying | uint32 | Only used if bRewindOnPlay if true. Defines what should happen if the Play input |
| bDisableRadioFilter | uint32 | If true, disables the realtime radio effect |
| bClientSideOnly | uint32 | Indicates that this interpolation does not affect gameplay. This means that: 	   |
| bSkipUpdateIfNotVisible | uint32 | if bClientSideOnly is true, whether this matinee should be completely skipped if |
| bIsSkippable | uint32 | Lets you skip the matinee with the CANCELMATINEE exec command. Triggers all even |
| PreferredSplitScreenNum | int32 | Preferred local viewport number (when split screen is active) the director track |
| bDisableMovementInput | uint32 | Disable Input from player during play |
| bDisableLookAtInput | uint32 | Disable LookAt Input from player during play |
| bHidePlayer | uint32 | Hide Player Pawn during play |
| bHideHud | uint32 | Hide HUD during play |
| GroupActorInfos | TArray < struct FInterpGroupActorInfo > | @todo UE4 matinee - shouldnt be directly editable.  Needs a nice interface in ma |
| bShouldShowGore | uint32 | Cached value that indicates whether or not gore was enabled when the sequence wa |
| GroupInst | TArray < UInterpGroupInst * > | Instance data for interp groups. One for each variablegroup combination. |
| CameraCuts | TArray < struct FCameraCutInfo > | Contains the camera world-position for each camera cut in the cinematic. |
| bIsPlaying | uint32 | properties that may change on InterpAction that we need to notify clients about, |
| bReversePlayback | uint32 |  |
| bPaused | uint32 |  |
| bPendingStop | uint32 |  |
| InterpPosition | float |  |
| ReplicationForceIsPlaying | uint8 | Counter to indicate that play count has changed. Used to work around single fram |

## Functions

### Play

Begin playback of the matinee. Only called in game.
	  Will then advance Position by (PlayRate  Deltatime) each time the matinee is ticked.

**Return:** void 

### Stop

Stops playback at the current position

**Return:** void 

### Reverse

Similar to play, but the playback will go backwards until the beginning of the sequence is reached.

**Return:** void 

### Pause

Hold playback at its current position. Calling Pause again will continue playback in its current direction.

**Return:** void 

### SetPosition

Set the position of the interpolation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPosition | float  | the new position to set the interpolation to |
| bJump | bool | if true, teleport to the new position (don't trigger any events between the old and new positions, etc) |

**Return:** void  

### ChangePlaybackDirection

Changes the direction of playback (go in reverse if it was going forward, or vice versa)

**Return:** void 

### SetLoopingState

Change the looping behaviour of this matinee

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewLooping | bool |  |

**Return:** void  

### EnableGroupByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupName | FString  |  |
| bEnable | bool |  |

**Return:** void