---
title: UDefaultLevelSequenceInstanceData
language: cpp
---

# UDefaultLevelSequenceInstanceData

Default instance data class that level sequences understand. Implements IMovieSceneTransformOrigin.

> Inheritance: UObject -> IMovieSceneTransformOrigin

## Variables

| Name | Type | Description |
|------|------|-------------|
| TransformOriginActor | AActor * | When set, this actor's world position will be used as the transform origin for a |
| TransformOrigin | FTransform | Specifies a transform that offsets all absolute transform sections in this seque |
| ShouldIgnoreScale | bool |  |