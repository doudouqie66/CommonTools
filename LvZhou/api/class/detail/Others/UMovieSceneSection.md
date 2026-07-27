---
title: UMovieSceneSection
language: cpp
---

# UMovieSceneSection

Base class for movie scene sections

> Inheritance: UMovieSceneSignedObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| EvalOptions | FMovieSceneSectionEvalOptions |  |
| Easing | FMovieSceneEasingSettings |  |
| StartTime | float | The start time of the section |
| EndTime | float | The end time of the section |
| RowIndex | int32 | The row index that this section sits on |
| OverlapPriority | int32 | This section's priority over overlapping sections |
| bIsActive | uint32 | Toggle whether this section is activeinactive |
| bIsLocked | uint32 | Toggle whether this section is lockedunlocked |
| bIsInfinite | uint32 | Toggle to set this section to be infinite |
| PreRollTime | float | The amount of time to prepare this section for evaluation before it actually sta |
| PostRollTime | float | The amount of time to continue 'postrolling' this section for after evaluation h |
| BlendType | FOptionalMovieSceneBlendType |  |