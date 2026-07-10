---
title: UAIPerceptionComponent
language: cpp
---

# UAIPerceptionComponent

AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem
 	and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SensesConfig | TArray < UAISenseConfig * > |  |
| DominantSense | TSubclassOf < UAISense > | Indicated sense that takes precedence over other senses when determining sensed  |
| AIOwner | AAIController * |  |

## Functions

### OnOwnerEndPlay

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| EndPlayReason | EEndPlayReason :: Type |  |

**Return:** void  

### RequestStimuliListenerUpdate

Notifies AIPerceptionSystem to update properties for this "stimuli listener"

**Return:** void 

### GetPerceivedHostileActors

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OutActors | TArray < AActor * > & |  |

**Return:** void  

### GetCurrentlyPerceivedActors

If SenseToUse is none all actors currently perceived in any way will get fetched

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseToUse | TSubclassOf < UAISense >  |  |
| OutActors | TArray < AActor * > & |  |

**Return:** void  

### GetKnownPerceivedActors

If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseToUse | TSubclassOf < UAISense >  |  |
| OutActors | TArray < AActor * > & |  |

**Return:** void  

### GetPerceivedActors

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseToUse | TSubclassOf < UAISense >  |  |
| OutActors | TArray < AActor * > & |  |

**Return:** void  

### GetActorsPerception

Retrieves whatever has been sensed about given actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| Info | FActorPerceptionBlueprintInfo & |  |

**Return:** bool  

### SetSenseEnabled

Note that this works only if given sense has been already configured for
	 	this component instance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseClass | TSubclassOf < UAISense >  |  |
| bEnable | bool |  |

**Return:** void