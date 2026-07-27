---
title: UCrowdFollowingComponent
language: cpp
---

# UCrowdFollowingComponent

> Inheritance: UPathFollowingComponent -> ICrowdAgentInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| CrowdAgentMoveDirection | FVector |  |
| CharacterMovement | UCharacterMovementComponent * |  |
| AvoidanceGroup_DEPRECATED | FNavAvoidanceMask | DEPRECATED: Group mask for this agent - use property from CharacterMovementCompo |
| GroupsToAvoid_DEPRECATED | FNavAvoidanceMask | DEPRECATED: Will avoid other agents if they are in one of specified groups - use |
| GroupsToIgnore_DEPRECATED | FNavAvoidanceMask | DEPRECATED: Will NOT avoid other agents if they are in one of specified groups,  |

## Functions

### SuspendCrowdSteering

master switch for crowd steering & avoidance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bSuspend | bool |  |

**Return:** void