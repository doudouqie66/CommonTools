---
title: UAIPerceptionSystem
language: cpp
---

# UAIPerceptionSystem

By design checks perception between hostile teams

> Inheritance: UObject -> FTickableGameObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Senses | TArray < UAISense * > |  |
| PerceptionAgingRate | float |  |

## Functions

### ReportEvent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PerceptionEvent | UAISenseEvent * |  |

**Return:** void  

### ReportPerceptionEvent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PerceptionEvent | UAISenseEvent * |  |

**Return:** void  

### RegisterPerceptionStimuliSource

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sense | TSubclassOf < UAISense >  |  |
| Target | AActor * |  |

**Return:** bool  

### GetSenseClassForStimulus

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Stimulus | FAIStimulus & |  |

**Return:** TSubclassOf < UAISense >  

### OnPerceptionStimuliSourceEndPlay

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| EndPlayReason | EEndPlayReason :: Type |  |

**Return:** void