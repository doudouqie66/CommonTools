---
title: ALevelSequenceActor
language: cpp
---

# ALevelSequenceActor

Actor responsible for controlling a specific level sequence in the world.

> Inheritance: AActor -> IMovieSceneBindingOwnerInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAutoPlay | bool |  |
| PlaybackSettings | FMovieSceneSequencePlaybackSettings |  |
| SequencePlayer | ULevelSequencePlayer * |  |
| LevelSequence | FSoftObjectPath |  |
| TempLevelSequence | ULevelSequence * |  |
| AdditionalEventReceivers | TArray < AActor * > |  |
| BurnInOptions | ULevelSequenceBurnInOptions * |  |
| BindingOverrides | UMovieSceneBindingOverrides * | Mapping of actors to override the sequence bindings with |
| bReduceFrequency | bool |  |
| ReduceFrameCount | int32 |  |
| IgnoreFrameTolerance | float |  |
| bOverrideInstanceData | uint8 | Enable specification of dynamic instance data to be supplied to the sequence dur |
| DefaultInstanceData | UObject * | Instance data that can be used to dynamically control sequence evaluation at run |
| BurnInInstance | ULevelSequenceBurnIn * | Burn-in widget |
| OwnCharacter | AActor * | 所属玩家, feishen, 20210623 |

## Functions

### GetSequence

Get the level sequence being played by this actor.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bLoad | bool  | Whether to load the sequence object if it is not already in memory. |
| bInitializePlayer | bool | Whether to initialize the player when the sequence has been loaded. |

**Return:** ULevelSequence *  Level sequence, or nullptr if not assigned or if it cannot be loaded.

### SetSequence

Set the level sequence being played by this actor.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSequence | ULevelSequence * | The sequence object to set. |

**Return:** void  

### SetEventReceivers

Set an array of additional actors that will receive events triggerd from this sequence actor
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AdditionalReceivers | TArray < AActor * > | An array of actors to receive events |

**Return:** void  

### SetBinding

Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Binding | FMovieSceneObjectBindingID  |  |
| Actors | TArray < AActor * > &  |  |
| bAllowBindingsFromAsset | bool |  |

**Return:** void  

### AddBinding

Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Binding | FMovieSceneObjectBindingID  |  |
| Actor | AActor *  |  |
| bAllowBindingsFromAsset | bool |  |

**Return:** void  

### RemoveBinding

Removes the specified actor from the specified binding's actor array

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Binding | FMovieSceneObjectBindingID  |  |
| Actor | AActor * |  |

**Return:** void  

### ResetBinding

Resets the specified binding back to the defaults defined by the Level Sequence asset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Binding | FMovieSceneObjectBindingID |  |

**Return:** void  

### ResetBindings

Resets all overridden bindings back to the defaults defined by the Level Sequence asset

**Return:** void 

### UGCAddBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| TrackName | FString |  |

**Return:** FMovieSceneObjectBindingID  

### UGCRemoveBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| TrackName | FString |  |

**Return:** FMovieSceneObjectBindingID  

### ReceiveInitailizePlayer

**Return:** void 

### SetOwnCharacter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor * |  |

**Return:** void