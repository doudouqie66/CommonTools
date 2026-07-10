---
title: UPawnAction_Move
language: cpp
---

# UPawnAction_Move

> Inheritance: UPawnAction

## Variables

| Name | Type | Description |
|------|------|-------------|
| GoalActor | AActor * |  |
| GoalLocation | FVector |  |
| AcceptableRadius | float |  |
| FilterClass | TSubclassOf < UNavigationQueryFilter > | "None" will result in default filter being used |
| bAllowStrafe | uint32 |  |
| bFinishOnOverlap | uint32 | if set to true (default) will make action succeed when the pawn's collision comp |
| bUsePathfinding | uint32 | if set, movement will use path finding |
| bAllowPartialPath | uint32 | if set, use incomplete path when goal can't be reached |
| bProjectGoalToNavigation | uint32 | if set, GoalLocation will be projected on navigation before using |
| bUpdatePathToGoal | uint32 | if set, path to GoalActor will be updated with goal's movement |
| bAbortChildActionOnPathChange | uint32 | if set, other actions with the same priority will be aborted when path is change |