---
title: UInterpTrackVisibility
language: cpp
---

# UInterpTrackVisibility

> Inheritance: UInterpTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| VisibilityTrack | TArray < struct FVisibilityTrackKey > | Array of events to fire off. |
| bFireEventsWhenForwards | uint32 | If events should be fired when passed playing the sequence forwards. |
| bFireEventsWhenBackwards | uint32 | If events should be fired when passed playing the sequence backwards. |
| bFireEventsWhenJumpingForwards | uint32 | If true, events on this track are fired even when jumping forwads through a sequ |