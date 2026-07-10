---
title: ASTExtraPlayerController
language: cpp
---

# ASTExtraPlayerController

主角控制器

> Inheritance: AUAEPlayerController -> IInGameReconnectingInterface -> IGameplayTaskOwnerInterface -> ISTExtraPlayerController_UGCEventInterface -> IGISPlayerInterface -> IClickActorPCInterface -> IGetCommonBackpackInterface -> IUniversalTaskOwnerInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| BackpackComponent | UBackpackComponent * | 背包组件 |

## Functions

### GetPlayerCharacterSafety

获得主角Pawn,如果正在观战,取出来是nullptr

**Return:** ASTExtraBaseCharacter * 主角Pawn