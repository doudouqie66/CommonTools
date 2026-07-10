---
title: FMovieSceneSequenceHierarchy
---

# FMovieSceneSequenceHierarchy

Structure that stores hierarchical information pertaining to all sequences contained within a master sequence

## Variables

| Name | Type | Description |
|------|------|-------------|
| SubSequences | TMap < uint32 , FMovieSceneSubSequenceData > | Map of all (recursive) sub sequences found in this template, keyed on sequence I |
| Hierarchy | TMap < uint32 , FMovieSceneSequenceHierarchyNode > | Structural information describing the structure of the sequence |