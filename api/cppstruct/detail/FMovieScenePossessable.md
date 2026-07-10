---
title: FMovieScenePossessable
---

# FMovieScenePossessable

MovieScenePossessable is a "typed slot" used to allow the MovieScene to control an already-existing object

## Variables

| Name | Type | Description |
|------|------|-------------|
| Guid | FGuid | Unique identifier of the possessable object. |
| Name | FString | Name label for this slot |
| PossessedObjectClass | UClass * | Type of the object we'll be possessing |
| ParentGuid | FGuid | GUID relating to this possessable's parent, if applicable. |