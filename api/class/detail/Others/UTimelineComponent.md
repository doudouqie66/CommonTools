---
title: UTimelineComponent
language: cpp
---

# UTimelineComponent

TimelineComponent holds a series of events, floats, vectors or colors with associated keyframes.
  Events can be triggered at keyframes along the timeline. 
  Floats, vectors, and colors are interpolated between keyframes along the timeline.

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| TheTimeline | FTimeline | The actual timeline structure |
| bIgnoreTimeDilation | uint32 | True if global time dilation should be ignored by this timeline, false otherwise |

## Functions

### Play

Start playback of timeline

**Return:** ENGINE_API void 

### PlayFromStart

Start playback of timeline from the start

**Return:** ENGINE_API void 

### Reverse

Start playback of timeline in reverse

**Return:** ENGINE_API void 

### ReverseFromEnd

Start playback of timeline in reverse from the end

**Return:** ENGINE_API void 

### Stop

Stop playback of timeline

**Return:** ENGINE_API void 

### IsPlaying

Get whether this timeline is playing or not.

**Return:** ENGINE_API bool 

### IsReversing

Get whether we are reversing or not

**Return:** ENGINE_API bool 

### SetPlaybackPosition

Jump to a position in the timeline. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPosition | float  |  |
| bFireEvents | bool  | If true, event functions that are between current position and new playback position will fire. |
| bFireUpdate | bool | If true, the update output exec will fire after setting the new playback position. |

**Return:** ENGINE_API void  

### GetPlaybackPosition

Get the current playback position of the Timeline

**Return:** ENGINE_API float 

### SetLooping

true means we would loop, false means we should not.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewLooping | bool |  |

**Return:** ENGINE_API void  

### IsLooping

Get whether we are looping or not

**Return:** ENGINE_API bool 

### SetPlayRate

Sets the new play rate for this timeline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRate | float |  |

**Return:** ENGINE_API void  

### GetPlayRate

Get the current play rate for this timeline

**Return:** ENGINE_API float 

### SetNewTime

Set the new playback position time to use

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTime | float |  |

**Return:** ENGINE_API void  

### GetTimelineLength

Get length of the timeline

**Return:** ENGINE_API float 

### SetTimelineLength

Set length of the timeline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLength | float |  |

**Return:** ENGINE_API void  

### SetTimelineLengthMode

Sets the length mode of the timeline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLengthMode | ETimelineLengthMode |  |

**Return:** ENGINE_API void  

### SetIgnoreTimeDilation

Set whether to ignore time dilation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewIgnoreTimeDilation | bool |  |

**Return:** ENGINE_API void  

### GetIgnoreTimeDilation

Get whether to ignore time dilation.

**Return:** ENGINE_API bool 

### SetFloatCurve

Update a certain float track's curve

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFloatCurve | UCurveFloat *  |  |
| FloatTrackName | FName |  |

**Return:** ENGINE_API void  

### SetVectorCurve

Update a certain vector track's curve

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVectorCurve | UCurveVector *  |  |
| VectorTrackName | FName |  |

**Return:** ENGINE_API void  

### SetLinearColorCurve

Update a certain linear color track's curve

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLinearColorCurve | UCurveLinearColor *  |  |
| LinearColorTrackName | FName |  |

**Return:** ENGINE_API void  

### OnRep_Timeline

**Return:** void