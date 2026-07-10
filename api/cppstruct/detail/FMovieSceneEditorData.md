---
title: FMovieSceneEditorData
---

# FMovieSceneEditorData

Editor only data that needs to be saved between sessions for editing but has no runtime purpose

## Variables

| Name | Type | Description |
|------|------|-------------|
| ExpansionStates | TMap < FString , FMovieSceneExpansionState > | Map of node path -> expansion state. |
| WorkingRange | FFloatRange | User-defined working range in which the entire sequence should reside. |
| ViewRange | FFloatRange | The last view-range that the user was observing |