---
title: FMovieSceneEvaluationTemplate
---

# FMovieSceneEvaluationTemplate

Template that is used for efficient runtime evaluation of a movie scene sequence. Potentially serialized into the asset.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Tracks | TMap < uint32 , FMovieSceneEvaluationTrack > | Map of evaluation tracks from identifier to track |
| EvaluationField | FMovieSceneEvaluationField | Evaluation field for efficient runtime evaluation |
| Hierarchy | FMovieSceneSequenceHierarchy | Map of all sequences found in this template (recursively) |
| TemplateLedger | FMovieSceneTemplateGenerationLedger |  |
| bHasLegacyTrackInstances | uint32 | When set, this template contains legacy track instances that require the initial |
| bKeepStaleTracks | uint32 | Primarily used in editor to keep stale tracks around during template regeneratio |