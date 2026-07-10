---
title: UBlueprintGameplayTagLibrary
language: cpp
---

# UBlueprintGameplayTagLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### MatchesTag

Determine if TagOne matches against TagTwo
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagOne | FGameplayTag  |  Tag to check for match |
| TagTwo | FGameplayTag  |  Tag to check match against |
| bExactMatch | bool | If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching |

**Return:** bool  True if TagOne matches TagTwo

### MatchesAnyTags

Determine if TagOne matches against any tag in OtherContainer
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagOne | FGameplayTag  |  Tag to check for match |
| OtherContainer | FGameplayTagContainer &  | Container to check against. |
| bExactMatch | bool | If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching |

**Return:** GAMEPLAYTAGS_API bool  True if TagOne matches any tags explicitly present in OtherContainer

### EqualEqual_GameplayTag

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTag  |  |
| B | FGameplayTag |  |

**Return:** bool  

### NotEqual_GameplayTag

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTag  |  |
| B | FGameplayTag |  |

**Return:** bool  

### IsGameplayTagValid

Returns true if the passed in gameplay tag is non-null

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GameplayTag | FGameplayTag |  |

**Return:** bool  

### GetTagName

Returns FName of this tag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GameplayTag | FGameplayTag & |  |

**Return:** FName  

### MakeLiteralGameplayTag

Creates a literal FGameplayTag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FGameplayTag |  |

**Return:** FGameplayTag  

### GetNumGameplayTagsInContainer

Get the number of gameplay tags in the specified container
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer & | Tag container to get the number of tags from |

**Return:** int32  The number of tags in the specified container

### HasTag

Check if the tag container has the specified tag
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  Container to check for the tag |
| Tag | FGameplayTag  |   Tag to check for in the container |
| bExactMatch | bool |  If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching |

**Return:** bool  True if the container has the specified tag, false if it does not

### HasAnyTags

Check if the specified tag container has ANY of the tags in the other container
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  Container to check if it matches any of the tags in the other container |
| OtherContainer | FGameplayTagContainer &  | Container to check against. |
| bExactMatch | bool |  If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching |

**Return:** bool  True if the container has ANY of the tags in the other container

### HasAllTags

Check if the specified tag container has ALL of the tags in the other container
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  Container to check if it matches all of the tags in the other container |
| OtherContainer | FGameplayTagContainer &  | Container to check against. If this is empty, the check will succeed |
| bExactMatch | bool |  If true, the tag has to be exactly present, if false then TagContainer will include it's parent tags while matching |

**Return:** bool  True if the container has ALL of the tags in the other container

### DoesContainerMatchTagQuery

Check if the specified tag container matches the given Tag Query
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  Container to check if it matches all of the tags in the other container |
| TagQuery | FGameplayTagQuery & |  Query to match against |

**Return:** bool  True if the container matches the query, false otherwise.

### GetAllActorsOfClassMatchingTagQuery

Get an array of all actors of a specific class (or subclass of that class) which match the specified gameplay tag query.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActorClass | TSubclassOf < AActor >  |  Class of actors to fetch |
| GameplayTagQuery | FGameplayTagQuery &  | Query to match against |
| OutActors | TArray < AActor * > & |  |

**Return:** void  

### AddGameplayTag

Adds a single tag to the passed in tag container
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  |
| Tag | FGameplayTag |   The tag to add to the container |

**Return:** void  

### RemoveGameplayTag

Remove a single tag from the passed in tag container, returns true if found
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer &  |  |
| Tag | FGameplayTag |   The tag to add to the container |

**Return:** bool  

### AppendGameplayTagContainers

Appends all tags in the InTagContainer to InOutTagContainer
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOutTagContainer | FGameplayTagContainer &  | The container that will be appended too. |
| InTagContainer | FGameplayTagContainer & | The container to append. |

**Return:** void  

### EqualEqual_GameplayTagContainer

Returns true if the values are equal (A == B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTagContainer &  |  |
| B | FGameplayTagContainer & |  |

**Return:** bool  

### NotEqual_GameplayTagContainer

Returns true if the values are not equal (A != B)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTagContainer &  |  |
| B | FGameplayTagContainer & |  |

**Return:** bool  

### MakeLiteralGameplayTagContainer

Creates a literal FGameplayTagContainer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | FGameplayTagContainer |  |

**Return:** FGameplayTagContainer  

### MakeGameplayTagContainerFromArray

Creates a FGameplayTagContainer from the array of passed in tags

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GameplayTags | TArray < FGameplayTag > & |  |

**Return:** FGameplayTagContainer  

### MakeGameplayTagContainerFromTag

Creates a FGameplayTagContainer containing a single tag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SingleTag | FGameplayTag |  |

**Return:** FGameplayTagContainer  

### BreakGameplayTagContainer

Breaks tag container into explicit array of tags

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GameplayTagContainer | FGameplayTagContainer &  |  |
| GameplayTags | TArray < FGameplayTag > & |  |

**Return:** void  

### MakeGameplayTagQuery

Creates a literal FGameplayTagQuery
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagQuery | FGameplayTagQuery | value to set the FGameplayTagQuery to |

**Return:** FGameplayTagQuery  The literal FGameplayTagQuery

### HasAllMatchingGameplayTags

Check Gameplay tags in the interface has all of the specified tags in the tag container (expands to include parents of asset tags)
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainerInterface | TScriptInterface < IGameplayTagAssetInterface >  | An Interface to a tag container |
| OtherContainer | FGameplayTagContainer & |  A Tag Container |

**Return:** bool  True if the tagcontainer in the interface has all the tags inside the container.

### DoesTagAssetInterfaceHaveTag

Check if the specified tag container has the specified tag, using the specified tag matching types
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainerInterface | TScriptInterface < IGameplayTagAssetInterface >  | An Interface to a tag container |
| Tag | FGameplayTag |   Tag to check for in the container |

**Return:** bool  True if the container has the specified tag, false if it does not

### NotEqual_TagTag

Checks if a gameplay tag's name and a string are not equal to one another

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTag  |  |
| B | FString |  |

**Return:** bool  

### NotEqual_TagContainerTagContainer

Checks if a gameplay tag containers's name and a string are not equal to one another

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | FGameplayTagContainer  |  |
| B | FString |  |

**Return:** bool  

### GetDebugStringFromGameplayTagContainer

Returns an FString listing all of the gameplay tags in the tag container for debugging purposes.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TagContainer | FGameplayTagContainer & | The tag container to get the debug string from. |

**Return:** FString  

### GetDebugStringFromGameplayTag

Returns an FString representation of a gameplay tag for debugging purposes.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GameplayTag | FGameplayTag | The tag to get the debug string from. |

**Return:** FString