---
title: UNavLinkCustomComponent
language: cpp
---

# UNavLinkCustomComponent

Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation
   
   Additional functionality:
   - can be toggled
   - can create obstacle area for easierforced separation of link end points
   - can broadcast state changes to nearby agents

> Inheritance: UNavRelevantComponent -> INavLinkCustomInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| NavLinkUserId | uint32 | link Id assigned by navigation system |
| EnabledAreaClass | TSubclassOf < UNavArea > | area class to use when link is enabled |
| DisabledAreaClass | TSubclassOf < UNavArea > | area class to use when link is disabled |
| LinkRelativeStart | FVector | start point, relative to owner |
| LinkRelativeEnd | FVector | end point, relative to owner |
| LinkDirection | TEnumAsByte < ENavLinkDirection :: Type > | direction of link |
| bLinkEnabled | uint32 | is link currently in enabled state? (area class) |
| bNotifyWhenEnabled | uint32 | should link notify nearby agents when it changes state to enabled |
| bNotifyWhenDisabled | uint32 | should link notify nearby agents when it changes state to disabled |
| bCreateBoxObstacle | uint32 | if set, box obstacle area will be added to generation |
| ObstacleOffset | FVector | offset of simple box obstacle |
| ObstacleExtent | FVector | extent of simple box obstacle |
| ObstacleAreaClass | TSubclassOf < UNavArea > | area class for simple box obstacle |
| BroadcastRadius | float | radius of state change broadcast |
| BroadcastInterval | float | interval for state change broadcast (0 = single broadcast) |
| BroadcastChannel | TEnumAsByte < ECollisionChannel > | trace channel for state change broadcast |