---
title: UMovieSceneSubSection
language: cpp
---

# UMovieSceneSubSection

Implements a section in sub-sequence tracks.

> Inheritance: UMovieSceneSection

## Variables

| Name | Type | Description |
|------|------|-------------|
| Parameters | FMovieSceneSectionParameters |  |
| StartOffset_DEPRECATED | float |  |
| TimeScale_DEPRECATED | float |  |
| PrerollTime_DEPRECATED | float |  |
| SubSequence | UMovieSceneSequence * | Movie scene being played by this section. 	  	  @todo Sequencer: Should this be  |
| ActorToRecord | TLazyObjectPtr < AActor > | Target actor to record |
| TargetSequenceName | FString | Target name of sequence to try to record to (will record automatically to anothe |
| TargetPathToRecordTo | FDirectoryPath | Target path of sequence to record to |