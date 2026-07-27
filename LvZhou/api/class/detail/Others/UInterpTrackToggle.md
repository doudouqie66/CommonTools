---
title: UInterpTrackToggle
language: cpp
---

# UInterpTrackToggle

> Inheritance: UInterpTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| ToggleTrack | TArray < struct FToggleTrackKey > | Array of events to fire off. |
| bActivateSystemEachUpdate | uint32 | If true, the track will call ActivateSystem on the emitter each update (the old  |
| bActivateWithJustAttachedFlag | uint32 | If true, the track will activate the system w the 'Just Attached' flag. |
| bFireEventsWhenForwards | uint32 | If events should be fired when passed playing the sequence forwards. |
| bFireEventsWhenBackwards | uint32 | If events should be fired when passed playing the sequence backwards. |
| bFireEventsWhenJumpingForwards | uint32 | If true, events on this track are fired even when jumping forwads through a sequ |