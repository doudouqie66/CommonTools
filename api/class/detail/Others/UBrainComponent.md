---
title: UBrainComponent
language: cpp
---

# UBrainComponent

> Inheritance: UActorComponent -> IAIResourceInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| BlackboardComp | UBlackboardComponent * | blackboard component |
| AIOwner | AAIController * |  |

## Functions

### RestartLogic

**Return:** void 

### StopLogic

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Reason | FString & |  |

**Return:** void  

### PauseLogic

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Reason | FString & |  |

**Return:** void  

### ResumeLogic

MUST be called by child implementations!

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Reason | FString & |  |

**Return:** EAILogicResuming :: Type  indicates whether child class' ResumeLogic should be called (true) or has it been 

### IsRunning

**Return:** bool 

### IsPaused

**Return:** bool