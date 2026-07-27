---
title: UMovieSceneSequencePlayer
language: cpp
---

# UMovieSceneSequencePlayer

Abstract class that provides consistent player behaviour for various animation players

> Inheritance: UObject -> IMovieScenePlayer

## Variables

| Name | Type | Description |
|------|------|-------------|
| Status | TEnumAsByte < EMovieScenePlayerStatus :: Type > | Movie player status. |
| bReversePlayback | uint32 | Whether we're currently playing in reverse. |
| bPendingFirstUpdate | uint32 | True where we're waiting for the first update of the sequence after calling Star |
| Sequence | UMovieSceneSequence * | The sequence to play back |
| TimeCursorPosition | float | The current time cursor position within the sequence (in seconds) |
| StartTime | float | Time time at which to start playing the sequence (defaults to the lower bound of |
| EndTime | float | Time time at which to end playing the sequence (defaults to the upper bound of t |
| CurrentNumLoops | int32 | The number of times we have looped in the current playback |
| PlaybackSettings | FMovieSceneSequencePlaybackSettings | Specific playback settings for the animation. |
| RootTemplateInstance | FMovieSceneRootEvaluationTemplateInstance | The root template instance we're evaluating |

## Functions

### Play

Start playback forwards from the current time cursor position, using the current play rate.

**Return:** void 

### PlayReverse

Reverse playback.

**Return:** void 

### ChangePlaybackDirection

Changes the direction of playback (go in reverse if it was going forward, or vice versa)

**Return:** void 

### PlayLooping

Start playback from the current time cursor position, looping the specified number of times.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NumLoops | int32 | - The number of loops to play. -1 indicates infinite looping. |

**Return:** void  

### StartPlayingNextTick

Start playback from the current time cursor position, using the current play rate. Does not update the animation until next tick.

**Return:** void 

### Pause

Pause playback.

**Return:** void 

### Scrub

Scrub playback.

**Return:** void 

### Stop

Stop playback.

**Return:** void 

### GoToEndAndStop

Go to end and stop.

**Return:** void 

### GetPlaybackPosition

Get the current playback position

**Return:** float 

### SetPlaybackPosition

Set the current playback position

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPlaybackPosition | float | - The new playback position to set. |

**Return:** void  

### SetPlaybackPostionWithloop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTime | float |  |

**Return:** void  

### GetTargetTimePostionWithloop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTime | float |  |

**Return:** float  

### JumpToPosition

Jump to new playback position

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPlaybackPosition | float | - The new playback position to set. |

**Return:** void  

### JumpToPositionEx

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPlaybackPosition | float |  |

**Return:** void  

### IsPlaying

Check whether the sequence is actively playing.

**Return:** bool 

### IsPaused

Check whether the sequence is paused.

**Return:** bool 

### GetLength

Get the playback length of the sequence

**Return:** float 

### GetPlayRate

Get the playback rate of this player.

**Return:** float 

### IsEvaluating

**Return:** bool 

### SetPlayRate

Set the playback rate of this player. Negative values will play the animation in reverse.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayRate | float | - The new rate of playback for the animation. |

**Return:** void  

### SetPlayLoopCount

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NumLoops | int32 |  |

**Return:** void  

### SetPlaybackRange

Sets the range in time to be played back by this player, overriding the default range stored in the asset
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewStartTime | float  | The new starting time for playback |
| NewEndTime | float | The new ending time for playback. Must be larger than the start time. |

**Return:** void  

### GetPlaybackStart

Get the offset within the level sequence to start playing

**Return:** float 

### GetPlaybackStartSeconds

Get the offset seconds within the level sequence to start playing

**Return:** float 

### GetPlaybackEnd

Get the offset within the level sequence to finish playing

**Return:** float 

### GetPlaybackEndSeconds

Get the offset seconds within the level sequence to finish playing

**Return:** float 

### GetBoundObjects

Retrieve all objects currently bound to the specified binding identifier

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectBinding | FMovieSceneObjectBindingID |  |

**Return:** TArray < UObject * >