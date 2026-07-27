---
title: ULevelSequencePlayer
language: cpp
---

# ULevelSequencePlayer

ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime.
 
  This class keeps track of playback state and provides functions for manipulating
  an level sequence while its playing.

> Inheritance: UMovieSceneSequencePlayer

## Variables

| Name | Type | Description |
|------|------|-------------|
| AdditionalEventReceivers | TArray < UObject * > | Array of additional event receivers |

## Functions

### CreateLevelSequencePlayer

Create a new level sequence player.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | Context object from which to retrieve a UWorld. |
| LevelSequence | ULevelSequence *  | The level sequence to play. |
| Settings | FMovieSceneSequencePlaybackSettings  | The desired playback settings |
| OutActor | ALevelSequenceActor * & | The level sequence actor created to play this sequence. |

**Return:** ULevelSequencePlayer *  

### GetEventReceivers

**Return:** TArray < UObject * >