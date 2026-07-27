---
title: UAIPerceptionStimuliSourceComponent
language: cpp
---

# UAIPerceptionStimuliSourceComponent

Gives owning actor a way to auto-register as perception system's sense stimuli source

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAutoRegisterAsSource | uint32 |  |
| RegisterAsSourceForSenses | TArray < TSubclassOf < UAISense > > |  |

## Functions

### RegisterWithPerceptionSystem

Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses. 
	 	Note that you don't have to do it if bAutoRegisterAsSource == true

**Return:** void 

### RegisterForSense

Registers owning actor as source for specified sense class

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseClass | TSubclassOf < UAISense > |  |

**Return:** void  

### UnregisterFromPerceptionSystem

Unregister owning actor from being a source of sense stimuli

**Return:** void 

### UnregisterFromSense

Unregisters owning actor from sources list of a specified sense class

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SenseClass | TSubclassOf < UAISense > |  |

**Return:** void