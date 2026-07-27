---
title: UAutomatedLevelSequenceCapture
language: cpp
---

# UAutomatedLevelSequenceCapture

> Inheritance: UMovieSceneCapture

## Variables

| Name | Type | Description |
|------|------|-------------|
| LevelSequenceAsset | FSoftObjectPath | A level sequence asset to playback at runtime - used where the level sequence do |
| bUseCustomStartFrame | bool | When enabled, the StartFrame setting will override the default starting frame nu |
| StartFrame | int32 | Frame number to start capturing.  The frame number range depends on whether the  |
| bUseCustomEndFrame | bool | When enabled, the EndFrame setting will override the default ending frame number |
| EndFrame | int32 | Frame number to end capturing.  The frame number range depends on whether the bU |
| WarmUpFrameCount | int32 | The number of extra frames to play before the sequence's start frame, to "warm u |
| DelayBeforeWarmUp | float | The number of seconds to wait (in real-time) before we start playing back the wa |
| BurnInOptions | ULevelSequenceBurnInOptions * |  |
| bWriteEditDecisionList | bool | Whether to write edit decision lists (EDLs) if the sequence contains shots |
| LevelSequenceActor | TWeakObjectPtr < ALevelSequenceActor > | The pre-existing level sequence actor to use for capture that specifies playback |