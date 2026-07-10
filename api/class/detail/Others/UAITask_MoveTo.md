---
title: UAITask_MoveTo
language: cpp
---

# UAITask_MoveTo

> Inheritance: UAITask

## Variables

| Name | Type | Description |
|------|------|-------------|
| OnRequestFailed | FGenericGameplayTaskDelegate |  |
| MoveRequest | FAIMoveRequest | parameters of move request |

## Functions

### AIMoveTo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AAIController *  |  |
| GoalLocation | FVector  |  |
| GoalActor | AActor *  |  |
| AcceptanceRadius | float  |  |
| StopOnOverlap | EAIOptionFlag :: Type  |  |
| AcceptPartialPath | EAIOptionFlag :: Type  |  |
| bUsePathfinding | bool  |  |
| bLockAILogic | bool  |  |
| bUseContinuosGoalTracking | bool |  |

**Return:** UAITask_MoveTo *