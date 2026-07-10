---
title: UBTTask_MoveTo
language: cpp
---

# UBTTask_MoveTo

Move To task node.
  Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.

> Inheritance: UBTTask_BlackboardBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| AcceptableRadius | float | fixed distance added to threshold between AI and goal location in destination re |
| FilterClass | TSubclassOf < UNavigationQueryFilter > | "None" will result in default filter being used |
| ObservedBlackboardValueTolerance | float | if task is expected to react to changes to location represented by BB key  	 	th |
| bObserveBlackboardValue | uint32 | if move goal in BB changes the move will be redirected to new location |
| bAllowStrafe | uint32 |  |
| bAllowPartialPath | uint32 | if set, use incomplete path when goal can't be reached |
| bTrackMovingGoal | uint32 | if set, path to goal actor will update itself when actor moves |
| bProjectGoalLocation | uint32 | if set, goal location will be projected on navigation data (navmesh) before usin |
| bReachTestIncludesAgentRadius | uint32 | if set, radius of AI's capsule will be added to threshold between AI and goal lo |
| bReachTestIncludesGoalRadius | uint32 | if set, radius of goal's capsule will be added to threshold between AI and goal  |
| bStopOnOverlap | uint32 | DEPRECATED, please use combination of bReachTestIncludesRadius instead |
| bStopOnOverlapNeedsUpdate | uint32 |  |