---
title: UInterpTrackAnimControl
language: cpp
---

# UInterpTrackAnimControl

> Inheritance: UInterpTrackFloatBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SlotName | FName | Name of slot to use when playing animation. Passed to Actor.  	 	When multiple t |
| AnimSeqs | TArray < struct FAnimControlTrackKey > | Track of different animations to play and when to start playing them. |
| bSkipAnimNotifiers | uint32 | Skip all anim notifiers |