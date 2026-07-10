---
title: FTickFunction
---

# FTickFunction

Abstract Base class for all tick functions.

## Variables

| Name | Type | Description |
|------|------|-------------|
| TickGroup | TEnumAsByte < enum ETickingGroup > | Defines the minimum tick group for this tick function. These groups determine th |
| EndTickGroup | TEnumAsByte < enum ETickingGroup > | Defines the tick group that this tick function must finish in. These groups dete |
| bTickEvenWhenPaused | uint8 | Bool indicating that this function should execute even if the game is paused. Pa |
| bCanEverTick | uint8 | If false, this tick function will never be registered and will never tick. Only  |
| bStartWithTickEnabled | uint8 | If true, this tick function will start enabled, but can be disabled later on. |
| bAllowTickOnDedicatedServer | uint8 | If we allow this tick to run on a dedicated server |
| bPureLogicTick | uint8 | Pure logic tick group that is actually tick in game thread,  don't need to queue |
| bAllowDynamicSchedule | uint8 | Whether dynamic scheduling is allowed for this tick function |
| TickInterval | float | The frequency in seconds at which this tick function will be executed.  If less  |
| TickIntervalStartTime | float | TickInterval Start Time Offset |