---
title: AAIController
language: cpp
---

# AAIController

AIController is the base class of controllers for AI-controlled Pawns.
  
  Controllers are non-physical actors that can be attached to a pawn to control its actions.
  AIControllers manage the artificial intelligence for the pawns they control.
  In networked games, they only exist on the server.

> Inheritance: AController -> IAIPerceptionListenerInterface -> IGameplayTaskOwnerInterface -> IGenericTeamAgentInterface -> IVisualLoggerDebugSnapshotInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| bStopAILogicOnUnposses | uint32 | By default AI's logic gets stopped when controlled Pawn is unpossesed. Setting t |
| bSkipExtraLOSChecks | uint32 | Skip extra line of sight traces to extremities of target being checked. |
| bAllowStrafe | uint32 | Is strafing allowed during movement? |
| bWantsPlayerState | uint32 | Specifies if this AI wants its own PlayerState. |
| bSetControlRotationFromPawnOrientation | uint32 | Copy Pawn rotation to ControlRotation, if there is no focus point. |
| PathFollowingComponent | UPathFollowingComponent * | Component used for moving along a path. |
| BrainComponent | UBrainComponent * | Component responsible for behaviors. |
| Blackboard | UBlackboardComponent * | blackboard |
| PerceptionComponent | UAIPerceptionComponent * |  |
| CachedGameplayTasksComponent | UGameplayTasksComponent * |  |
| DefaultNavigationFilterClass | TSubclassOf < UNavigationQueryFilter > |  |
| ActionsComp | UPawnActionsComponent * |  |

## Functions

### OnPossess

Event called when PossessedPawn is possessed by this controller.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PossessedPawn | APawn * |  |

**Return:** void  

### OnUnpossess

Gets triggered after given pawn has been unpossesed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UnpossessedPawn | APawn * |  |

**Return:** void  

### MoveToActor

Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Goal | AActor *  |  |
| AcceptanceRadius | float  | - finish move if pawn gets close enough |
| bStopOnOverlap | bool  | - add pawn's radius to AcceptanceRadius |
| bUsePathfinding | bool  | - use navigation data to calculate path (otherwise it will go in straight line) |
| bCanStrafe | bool  | - set focus related flag: bAllowStrafe |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  | - navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used |
| bAllowPartialPath | bool | - use incomplete path when goal can't be reached |

**Return:** EPathFollowingRequestResult :: Type  

### MoveToLocation

Makes AI go toward specified Dest location, aborts any active path following

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Dest | FVector &  |  |
| AcceptanceRadius | float  | - finish move if pawn gets close enough |
| bStopOnOverlap | bool  | - add pawn's radius to AcceptanceRadius |
| bUsePathfinding | bool  | - use navigation data to calculate path (otherwise it will go in straight line) |
| bProjectDestinationToNavigation | bool  | - project location on navigation data before using it |
| bCanStrafe | bool  | - set focus related flag: bAllowStrafe |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  | - navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used |
| bAllowPartialPath | bool  | - use incomplete path when goal can't be reached |
| bUseNavLink | bool |  |

**Return:** EPathFollowingRequestResult :: Type  

### GetMoveStatus

Returns status of path following

**Return:** EPathFollowingStatus :: Type 

### HasPartialPath

Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).

**Return:** bool 

### GetImmediateMoveDestination

Returns position of current path segment's end.

**Return:** FVector 

### SetMoveBlockDetection

Updates state of movement block detection.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### RunBehaviorTree

Starts executing behavior tree.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BTAsset | UBehaviorTree * |  |

**Return:** bool  

### UseBlackboard

Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BlackboardAsset | UBlackboardData *  |  The Blackboard asset to use. |
| BlackboardComponent | UBlackboardComponent * & | The Blackboard component that was used or created to work with the passed-in Blackboard Asset. |

**Return:** bool  true if we successfully linked the blackboard asset to the blackboard component.

### ClaimTaskResource

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ResourceClass | TSubclassOf < UGameplayTaskResource > |  |

**Return:** void  

### UnclaimTaskResource

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ResourceClass | TSubclassOf < UGameplayTaskResource > |  |

**Return:** void  

### OnUsingBlackBoard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BlackboardComp | UBlackboardComponent *  |  |
| BlackboardAsset | UBlackboardData * |  |

**Return:** void  

### GetFocalPoint

Retrieve the final position that controller should be looking at.

**Return:** FVector 

### GetFocalPointOnActor

Retrieve the focal point this controller should focus to on given actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor * |  |

**Return:** FVector  

### K2_SetFocalPoint

Set the position that controller should be looking at.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FP | FVector |  |

**Return:** void  

### K2_SetFocus

Set Focus for actor, will set FocalPoint as a result.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFocus | AActor * |  |

**Return:** void  

### GetFocusActor

Get the focused actor.

**Return:** AActor * 

### K2_ClearFocus

Clears Focus, will also clear FocalPoint as a result

**Return:** void 

### OnGameplayTaskResourcesClaimed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewlyClaimed | FGameplayResourceSet  |  |
| FreshlyReleased | FGameplayResourceSet |  |

**Return:** void  

### GetPathFollowingComponent

Returns PathFollowingComponent subobject

**Return:** UPathFollowingComponent * 

### GetAIPerceptionComponent

**Return:** UAIPerceptionComponent *