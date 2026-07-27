---
title: FMovieSceneEvalTemplate
---

# FMovieSceneEvalTemplate

Structure used for movie scene evaluation templates contained within a track. Typically these are defined as one per-section.
  Serialized into a FMovieSceneEvaluationTemplate contained within the sequence itself (for fast initialization at runtime).
  Templates are executed in a 3-phase algorithm:
 		1) Initialize: (opt-in) Called at the start of the frame. Able to access mutable state from the playback context. Used to initialize any persistent state required for the evaluation pass.
 		2) Evaluate: Potentially called on a thread. Should (where possible) perform all costly evaluation logic, accumulating into execution tokens which will be executed at a later time on the game thread.
 		3) Execute: Called on all previously submitted execution tokens to apply the evaluated state to the movie scene player

## Variables

| Name | Type | Description |
|------|------|-------------|
| CompletionMode | EMovieSceneCompletionMode | Enumeration value signifying whether we should restore any animated state stored |
| SourceSection | UMovieSceneSection * | The section from which this template originates |