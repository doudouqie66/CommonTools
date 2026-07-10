---
title: FCameraLookatTrackingSettings
---

# FCameraLookatTrackingSettings

Settings to control the camera's lookat feature

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnableLookAtTracking | uint8 | True to enable lookat tracking, false otherwise.  	UPROPERTY(Interp, EditAnywher |
| bDrawDebugLookAtTrackingPosition | uint8 | True to draw a debug representation of the lookat location |
| LookAtTrackingInterpSpeed | float | Controls degree of smoothing. 0.f for no smoothing, higher numbers for fastertig |
| ActorToTrack | AActor * | If set, camera will track this actor's location |
| RelativeOffset | FVector | Offset from actor position to look at. Relative to actor if tracking an actor, r |
| bAllowRoll | uint8 | True to allow user-defined roll, false otherwise. |