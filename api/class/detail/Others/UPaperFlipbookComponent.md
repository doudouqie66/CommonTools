---
title: UPaperFlipbookComponent
language: cpp
---

# UPaperFlipbookComponent

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceFlipbook | UPaperFlipbook * | Flipbook currently being played |
| Material_DEPRECATED | UMaterialInterface * |  |
| PlayRate | float | Current play rate of the flipbook |
| bLooping | uint32 | Whether the flipbook should loop when it reaches the end, or stop |
| bReversePlayback | uint32 | If playback should move the current position backwards instead of forwards |
| bPlaying | uint32 | Are we currently playing (moving Position) |
| AccumulatedTime | float | Current position in the timeline |
| CachedFrameIndex | int32 | Last frame index calculated |
| SpriteColor | FLinearColor | Vertex color to apply to the frames |
| CachedBodySetup | UBodySetup * | The cached body setup |

## Functions

### SetFlipbook

Change the flipbook used by this instance (will reset the play time to 0 if it is a new flipbook).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFlipbook | UPaperFlipbook * |  |

**Return:** bool  

### GetFlipbook

Gets the flipbook used by this instance.

**Return:** UPaperFlipbook * 

### SetSpriteColor

Set color of the sprite

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewColor | FLinearColor |  |

**Return:** void  

### Play

Start playback of flipbook

**Return:** void 

### PlayFromStart

Start playback of flipbook from the start

**Return:** void 

### Reverse

Start playback of flipbook in reverse

**Return:** void 

### ReverseFromEnd

Start playback of flipbook in reverse from the end

**Return:** void 

### Stop

Stop playback of flipbook

**Return:** void 

### IsPlaying

Get whether this flipbook is playing or not.

**Return:** bool 

### IsReversing

Get whether we are reversing or not

**Return:** bool 

### SetPlaybackPositionInFrames

Jump to a position in the flipbook (expressed in frames). If bFireEvents is true, event functions will fire, otherwise they will not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFramePosition | int32  |  |
| bFireEvents | bool |  |

**Return:** void  

### GetPlaybackPositionInFrames

Get the current playback position (in frames) of the flipbook

**Return:** int32 

### SetPlaybackPosition

Jump to a position in the flipbook (expressed in seconds). If bFireEvents is true, event functions will fire, otherwise they will not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPosition | float  |  |
| bFireEvents | bool |  |

**Return:** void  

### GetPlaybackPosition

Get the current playback position (in seconds) of the flipbook

**Return:** float 

### SetLooping

true means we should loop, false means we should not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewLooping | bool |  |

**Return:** void  

### IsLooping

Get whether we are looping or not

**Return:** bool 

### SetPlayRate

Sets the new play rate for this flipbook

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRate | float |  |

**Return:** void  

### GetPlayRate

Get the current play rate for this flipbook

**Return:** float 

### SetNewTime

Set the new playback position time to use

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTime | float |  |

**Return:** void  

### GetFlipbookLength

Get length of the flipbook (in seconds)

**Return:** float 

### GetFlipbookLengthInFrames

Get length of the flipbook (in frames)

**Return:** int32 

### GetFlipbookFramerate

Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second

**Return:** float 

### OnRep_SourceFlipbook

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldFlipbook | UPaperFlipbook * |  |

**Return:** void