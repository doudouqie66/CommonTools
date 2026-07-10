---
title: ANavigationObjectBase
language: cpp
---

# ANavigationObjectBase

> Inheritance: AActor -> INavAgentInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| CapsuleComponent | UCapsuleComponent * |  |
| GoodSprite | UBillboardComponent * | Normal editor sprite. |
| BadSprite | UBillboardComponent * | Used to draw bad collision intersection in editor. |
| bIsPIEPlayerStart | uint32 | True if this nav point was spawned to be a PIE player start. |