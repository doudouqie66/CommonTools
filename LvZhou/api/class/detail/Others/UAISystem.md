---
title: UAISystem
language: cpp
---

# UAISystem

> Inheritance: UAISystemBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| PerceptionSystemClassName | FSoftClassPath |  |
| HotSpotManagerClassName | FSoftClassPath |  |
| NavLocalGridManagerClassName | FSoftClassPath | Class that will be used to spawn the hot spot manager, can be game-specific |
| AcceptanceRadius | float | Default AI movement's acceptance radius used to determine whether   	  AI reache |
| PathfollowingRegularPathPointAcceptanceRadius | float | Value used for pathfollowing's internal code to determine whether AI reached pat |
| PathfollowingNavLinkAcceptanceRadius | float | Similarly to PathfollowingRegularPathPointAcceptanceRadius used by pathfollowing |
| bFinishMoveOnGoalOverlap | bool |  |
| bAcceptPartialPaths | bool |  |
| bAllowStrafing | bool |  |
| bEnableBTAITasks | bool | this property is just a transition-time flag - in the end we're going to switch  |
| bAllowControllersAsEQSQuerier | bool | if enable will make EQS not complaint about using Controllers as queriers. Defau |
| bEnableDebuggerPlugin | bool | if set, GameplayDebuggerPlugin will be loaded on module's startup |
| DefaultSightCollisionChannel | TEnumAsByte < ECollisionChannel > |  |
| BehaviorTreeManager | UBehaviorTreeManager * | Behavior tree manager used by game |
| EnvironmentQueryManager | UEnvQueryManager * | Environment query manager used by game |
| PerceptionSystem | UAIPerceptionSystem * |  |
| AllProxyObjects | TArray < UAIAsyncTaskBlueprintProxy * > |  |
| HotSpotManager | UAIHotSpotManager * |  |
| NavLocalGrids | UNavLocalGridManager * |  |

## Functions

### AIIgnorePlayers

**Return:** void 

### AILoggingVerbose

**Return:** void