---
title: UMovieSceneBindingOverrides
language: cpp
---

# UMovieSceneBindingOverrides

A one-to-many definition of movie scene object binding IDs to overridden objects that should be bound to that binding.

> Inheritance: UObject -> IMovieSceneBindingOverridesInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| BindingData | TArray < FMovieSceneBindingOverrideData > | The actual binding data |

## Functions

### GetBindingData

**Return:** const TArray < FMovieSceneBindingOverrideData > & 

### MakeBindingID

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBindingID | FGuid &  |  |
| InSequenceID | FMovieSceneSequenceID  |  |
| InSpace | EMovieSceneObjectBindingSpace |  |

**Return:** FMovieSceneObjectBindingID  

### GetGuidStr

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BindingID | FMovieSceneObjectBindingID & |  |

**Return:** FString