---
title: UMovieSceneFolder
language: cpp
---

# UMovieSceneFolder

Reprents a folder used for organizing objects in tracks in a movie scene.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| FolderName | FName | The name of this folder. |
| ChildFolders | TArray < UMovieSceneFolder * > | The folders contained by this folder. |
| ChildMasterTracks | TArray < UMovieSceneTrack * > | The master tracks contained by this folder. |
| ChildObjectBindingStrings | TArray < FString > | The guid strings used to serialize the guids for the object bindings contained b |