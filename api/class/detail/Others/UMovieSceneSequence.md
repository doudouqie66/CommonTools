---
title: UMovieSceneSequence
language: cpp
---

# UMovieSceneSequence

Abstract base class for movie scene animations (C++ version).

> Inheritance: UMovieSceneSignedObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| EvaluationTemplate | FCachedMovieSceneEvaluationTemplate |  |
| TemplateParameters | FMovieSceneTrackCompilationParams |  |
| InstancedSubSequenceEvaluationTemplates | TMap < UObject * , FCachedMovieSceneEvaluationTemplate > |  |
| bParentContextsAreSignificant | bool | true if the result of GetParentObject is significant in object resolution for Lo |