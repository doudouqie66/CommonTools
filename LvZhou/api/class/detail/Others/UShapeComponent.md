---
title: UShapeComponent
language: cpp
---

# UShapeComponent

ShapeComponent is a PrimitiveComponent that is represented by a simple geometrical shape (sphere, capsule, box, etc).

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ShapeColor | FColor | Color used to draw the shape. |
| ShapeBodySetup | UBodySetup * | Description of collision |
| bDrawOnlyIfSelected | uint8 | Only show this component if the actor is selected |
| bShouldCollideWhenPlacing | uint8 | If true it allows Collision when placing even if collision is not enabled |
| bDynamicObstacle | uint8 | If set, shape will be exported for navigation as dynamic modifier instead of usi |
| AreaClass | TSubclassOf < UNavArea > | Navigation area type (empty = default obstacle) |