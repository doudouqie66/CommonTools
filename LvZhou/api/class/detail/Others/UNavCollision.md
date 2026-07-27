---
title: UNavCollision
language: cpp
---

# UNavCollision

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| CylinderCollision | TArray < FNavCollisionCylinder > | list of nav collision cylinders |
| BoxCollision | TArray < FNavCollisionBox > | list of nav collision boxes |
| AreaClass | TSubclassOf < UNavArea > | navigation area type (empty = default obstacle) |
| bIsDynamicObstacle | uint32 | If set, mesh will be used as dynamic obstacle (don't create navmesh on top, much |
| bGatherConvexGeometry | uint32 | If set, convex collisions will be exported offline for faster runtime navmesh bu |