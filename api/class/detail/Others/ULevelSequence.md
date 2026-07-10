---
title: ULevelSequence
language: cpp
---

# ULevelSequence

Movie scene animation for Actors.

> Inheritance: UMovieSceneSequence

## Variables

| Name | Type | Description |
|------|------|-------------|
| MovieScene | UMovieScene * | Pointer to the movie scene that controls this animation. |
| ObjectReferences | FLevelSequenceObjectReferenceMap | Legacy object references - should be read-only. Not deprecated because they need |
| BindingReferences | FLevelSequenceBindingReferences | References to bound objects. |
| PossessedObjects_DEPRECATED | TMap < FString , FLevelSequenceObject > | Deprecated property housing old possessed object bindings |
| DirectorClass | UClass * | The class that is used to spawn this level sequence's director instance. 	  Dire |
| DirectorBlueprint | UBlueprint * | A pointer to the director blueprint that generates this sequence's DirectorClass |