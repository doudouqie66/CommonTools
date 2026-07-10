---
title: UMovieScene
language: cpp
---

# UMovieScene

Implements a movie scene asset.

> Inheritance: UMovieSceneSignedObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Spawnables | TArray < FMovieSceneSpawnable > | Data-only blueprints for all of the objects that we we're able to spawn. 	  Thes |
| Possessables | TArray < FMovieScenePossessable > | Typed slots for already-spawned objects that we are able to control with this Mo |
| ObjectBindings | TArray < FMovieSceneBinding > | Tracks bound to possessed or spawned objects |
| MasterTracks | TArray < UMovieSceneTrack * > | Master tracks which are not bound to spawned or possessed objects |
| CameraCutTrack | UMovieSceneTrack * | The camera cut track is a specialized track for switching between cameras on a c |
| SelectionRange | FFloatRange | User-defined selection range. |
| PlaybackRange | FFloatRange | User-defined playback range for this movie scene. Must be a finite range. Relati |
| bForceFixedFrameIntervalPlayback | bool |  |
| FixedFrameInterval | float |  |
| InTime_DEPRECATED | float |  |
| OutTime_DEPRECATED | float |  |
| StartTime_DEPRECATED | float |  |
| EndTime_DEPRECATED | float |  |
| EmptySections | TArray < UMovieSceneSection * > |  |
| bPlaybackRangeLocked | bool | User-defined playback range is locked. |
| ObjectsToDisplayNames | TMap < FString , FText > | Maps object GUIDs to user defined display names. |
| ObjectsToLabels | TMap < FString , FMovieSceneTrackLabels > | Maps object GUIDs to user defined labels. |
| EditorData | FMovieSceneEditorData | Editor only data that needs to be saved between sessions for editing but has no  |
| RootFolders | TArray < UMovieSceneFolder * > | The root folders for this movie scene. |