---
title: FMovieSceneEvaluationKey
---

# FMovieSceneEvaluationKey

Keyable struct that represents a particular entity within an evaluation template (either a sectiontemplate or a track)

## Variables

| Name | Type | Description |
|------|------|-------------|
| TrackIdentifier | FMovieSceneTrackIdentifier | ID of the track this key relates to |
| SequenceID | FMovieSceneSequenceID | ID of the sequence that the entity is contained within |
| SectionIdentifier | uint32 | ID of the section this key relates to (or -1 where this key relates to a track) |