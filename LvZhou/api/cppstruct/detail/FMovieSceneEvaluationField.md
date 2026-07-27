---
title: FMovieSceneEvaluationField
---

# FMovieSceneEvaluationField

Memory layout optimized primarily for speed of searching the applicable ranges

## Variables

| Name | Type | Description |
|------|------|-------------|
| Ranges | TArray < FFloatRange > | Ranges stored separately for fast (cache efficient) lookup. Each index has a cor |
| Groups | TArray < FMovieSceneEvaluationGroup > | Groups that store segment pointers for each of the above ranges. Each index has  |
| MetaData | TArray < FMovieSceneEvaluationMetaData > | Meta data that maps to entries in the 'Ranges' array. |