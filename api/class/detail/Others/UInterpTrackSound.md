---
title: UInterpTrackSound
language: cpp
---

# UInterpTrackSound

> Inheritance: UInterpTrackVectorBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Sounds | TArray < struct FSoundTrackKey > | Array of sounds to play at specific times. |
| bPlayOnReverse | uint32 | if set, sound plays only when playing the matinee in reverse instead of when the |
| bContinueSoundOnMatineeEnd | uint32 | If true, sounds on this track will not be forced to finish when the matinee sequ |
| bSuppressSubtitles | uint32 | If true, don't show subtitles for sounds played by this track. |
| bTreatAsDialogue | uint32 | If true and track is controlling a pawn, makes the pawn "speak" the given audio. |
| bAttach | uint32 |  |