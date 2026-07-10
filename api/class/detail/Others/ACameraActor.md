---
title: ACameraActor
language: cpp
---

# ACameraActor

A CameraActor is a camera viewpoint that can be placed in a level.

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| AutoActivateForPlayer | TEnumAsByte < EAutoReceiveInput :: Type > | Specifies which player controller, if any, should automatically use this Camera  |
| CameraComponent | UCameraComponent * | The camera component for this camera |
| SceneComponent | USceneComponent * |  |
| bConstrainAspectRatio_DEPRECATED | uint32 |  |
| AspectRatio_DEPRECATED | float |  |
| FOVAngle_DEPRECATED | float |  |
| PostProcessBlendWeight_DEPRECATED | float |  |
| PostProcessSettings_DEPRECATED | FPostProcessSettings |  |

## Functions

### GetAutoActivatePlayerIndex

Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled.

**Return:** int32