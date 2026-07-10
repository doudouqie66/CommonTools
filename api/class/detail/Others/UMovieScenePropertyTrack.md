---
title: UMovieScenePropertyTrack
language: cpp
---

# UMovieScenePropertyTrack

Base class for tracks that animate an object property

> Inheritance: UMovieSceneNameableTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| PropertyName | FName | Name of the property being changed |
| PropertyPath | FString | Path to the property from the source object being changed |
| Sections | TArray < UMovieSceneSection * > | All the sections in this list |