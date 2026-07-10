---
title: UAIBlueprintHelperLibrary
language: cpp
---

# UAIBlueprintHelperLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### CreateMoveToProxyObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Pawn | APawn *  |  |
| Destination | FVector  |  |
| TargetActor | AActor *  |  |
| AcceptanceRadius | float  |  |
| bStopOnOverlap | bool |  |

**Return:** UAIAsyncTaskBlueprintProxy *  

### SendAIMessage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Target | APawn *  |  |
| Message | FName  |  |
| MessageSource | UObject *  |  |
| bSuccess | bool |  |

**Return:** void  

### SpawnAIFromClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PawnClass | TSubclassOf < APawn >  |  |
| BehaviorTree | UBehaviorTree *  |  |
| Location | FVector  |  |
| Rotation | FRotator  |  |
| bNoCollisionFail | bool |  |

**Return:** APawn *  

### GetAIController

The way it works exactly is if the actor passed in is a pawn, then the function retrieves 
	 	pawn's controller cast to AIController. Otherwise the function returns actor cast to AIController.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ControlledActor | AActor * |  |

**Return:** AAIController *  

### GetBlackboard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Target | AActor * |  |

**Return:** UBlackboardComponent *  

### LockAIResourcesWithAnimation

locks indicated AI resources of animated pawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInstance | UAnimInstance *  |  |
| bLockMovement | bool  |  |
| LockAILogic | bool |  |

**Return:** void  

### UnlockAIResourcesWithAnimation

unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInstance | UAnimInstance *  |  |
| bUnlockMovement | bool  |  |
| UnlockAILogic | bool |  |

**Return:** void  

### IsValidAILocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Location | FVector |  |

**Return:** bool  

### IsValidAIDirection

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DirectionVector | FVector |  |

**Return:** bool  

### IsValidAIRotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rotation | FRotator |  |

**Return:** bool  

### GetCurrentPath

Returns a copy of navigation path given controller is currently using. 
	 	The result being a copy means you won't be able to influence agent's pathfollowing 
	 	by manipulating received path

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AController * |  |

**Return:** UNavigationPath *