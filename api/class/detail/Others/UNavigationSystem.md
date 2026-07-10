---
title: UNavigationSystem
language: cpp
---

# UNavigationSystem

> Inheritance: UBlueprintFunctionLibrary

## Variables

| Name | Type | Description |
|------|------|-------------|
| MainNavData | ANavigationData * |  |
| AbstractNavData | ANavigationData * | special navigation data for managing direct paths, not part of NavDataSet! |
| CrowdManagerClass | TSubclassOf < UCrowdManagerBase > |  |
| bAutoCreateNavigationData | uint32 | Should navigation system spawn default Navigation Data when there's none and the |
| bAllowClientSideNavigation | uint32 |  |
| bSupportRebuilding | uint32 | gets set to true if gathering navigation data (like in navoctree) is required du |
| ObstacleManagerClassPath | FSoftClassPath |  |
| bInitialBuildingLocked | uint32 | if set to true will result navigation system not rebuild navigation until 	 	a c |
| bWholeWorldNavigable | uint32 | If set to true (default) navigation will be generated only within special naviga |
| bSkipAgentHeightCheckWhenPickingNavData | uint32 | false by default, if set to true will result in not caring about nav agent heigh |
| DataGatheringMode | ENavDataGatheringModeConfig |  |
| bGenerateNavigationOnlyAroundNavigationInvokers | uint32 | If set to true navigation will be generated only around registered "navigation e |
| ActiveTilesUpdateInterval | float | Minimal time, in seconds, between active tiles set update |
| SupportedAgents | TArray < FNavDataConfig > |  |
| DirtyAreasUpdateFreq | float | update frequency for dirty areas on navmesh |
| NavDataSet | TArray < ANavigationData * > |  |
| NavDataRegistrationQueue | TArray < ANavigationData * > |  |
| OperationMode | FNavigationSystemRunMode |  |

## Functions

### BP_ChangeRecastPartitioning

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName  |  |
| High | bool |  |

**Return:** bool  

### BP_BuildOne

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName |  |

**Return:** void  

### BP_DynamicBuildOne

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName |  |

**Return:** void  

### BP_Build

**Return:** void 

### BP_AddDynamicNavAffect

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName  |  |
| InBounds | FBox & |  |

**Return:** bool  

### BP_IncrementalBuild

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName |  |

**Return:** bool  

### BP_CancelBuild

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName |  |

**Return:** bool  

### BP_GetNavigationData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AgentName | FName |  |

**Return:** ANavigationData *  

### GetNavigationSystem

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** UNavigationSystem *  

### K2_ProjectPointToNavigation

Project a point onto the NavigationData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Point | FVector &  |  |
| ProjectedLocation | FVector &  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  |  |
| QueryExtent | FVector |  |

**Return:** bool  

### K2_GetRandomReachablePointInRadius

Generates a random location reachable from given Origin location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Origin | FVector &  |  |
| RandomLocation | FVector &  |  |
| Radius | float  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  |  |
| ExtentRadius | float |  |

**Return:** bool  Return Value represents if the call was successful

### K2_GetRandomPointInNavigableRadius

Generates a random location in navigable space within given radius of Origin.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Origin | FVector &  |  |
| RandomLocation | FVector &  |  |
| Radius | float  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** bool  Return Value represents if the call was successful

### GetPathCost

Potentially expensive. Use with caution. Consider using UPathFollowingComponent::GetRemainingPathCost instead

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PathStart | FVector &  |  |
| PathEnd | FVector &  |  |
| PathCost | float &  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** ENavigationQueryResult :: Type  

### GetPathLength

Potentially expensive. Use with caution

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PathStart | FVector &  |  |
| PathEnd | FVector &  |  |
| PathLength | float &  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** ENavigationQueryResult :: Type  

### IsNavigationBeingBuilt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** bool  

### IsNavigationBeingBuiltOrLocked

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** bool  

### SimpleMoveToActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AController *  |  |
| Goal | AActor * |  |

**Return:** void  

### SimpleMoveToLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AController *  |  |
| Goal | FVector & |  |

**Return:** void  

### FindPathToLocationSynchronously

Finds path instantly, in a FindPath Synchronously.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PathStart | FVector &  |  |
| PathEnd | FVector &  |  |
| PathfindingContext | AActor *  | could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** UNavigationPath *  

### FindPathToActorSynchronously

Finds path instantly, in a FindPath Synchronously. Main advantage over FindPathToLocationSynchronously is that
	 	the resulting path will automatically get updated if goal actor moves more than TetherDistance away from last path node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PathStart | FVector &  |  |
| GoalActor | AActor *  |  |
| TetherDistance | float  |  |
| PathfindingContext | AActor *  | could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** UNavigationPath *  

### NavigationRaycast

Performs navigation raycast on NavigationData appropriate for given Querier.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| RayStart | FVector &  |  |
| RayEnd | FVector &  |  |
| HitLocation | FVector &  | if line was obstructed this will be set to hit location. Otherwise it contains SegmentEnd |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  |  |
| Querier | AController * | if not passed default navigation data will be used |

**Return:** bool  true if line from RayStart to RayEnd was obstructed. Also, true when no navigation data present

### SetMaxSimultaneousTileGenerationJobsCount

will limit the number of simultaneously running navmesh tile generation jobs to specified number.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaxNumberOfJobs | int32 | gets trimmed to be at least 1. You cannot use this function to pause navmesh generation |

**Return:** void  

### ResetMaxSimultaneousTileGenerationJobsCount

Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value

**Return:** void 

### RegisterNavigationInvoker

Registers given actor as a "navigation enforcer" which means navigation system will
	 	make sure navigation is being generated in specified radius around it.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Invoker | AActor *  |  |
| TileGenerationRadius | float  |  |
| TileRemovalRadius | float |  |

**Return:** void  

### UnregisterNavigationInvoker

Removes given actor from the list of active navigation enforcers.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Invoker | AActor * |  |

**Return:** void  

### SetGeometryGatheringMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMode | ENavDataGatheringModeConfig |  |

**Return:** void  

### OnNavigationBoundsUpdated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NavVolume | ANavMeshBoundsVolume * |  |

**Return:** void  

### ProjectPointToNavigation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Point | FVector &  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter >  |  |
| QueryExtent | FVector |  |

**Return:** FVector  

### GetRandomReachablePointInRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Origin | FVector &  |  |
| Radius | float  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** FVector  

### GetRandomPointInNavigableRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Origin | FVector &  |  |
| Radius | float  |  |
| NavData | ANavigationData *  |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > |  |

**Return:** FVector  

### UpdateDynamicGenerateTargetNav

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsAdd | bool  |  |
| GenerateTargetNav | FDynamicGenerateTargetNavigation |  |

**Return:** void