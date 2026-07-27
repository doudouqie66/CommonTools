---
title: UBTTask_PlayAnimation
language: cpp
---

# UBTTask_PlayAnimation

Play indicated AnimationAsset on Pawn controlled by BT 
 	Note that this node is generic and is handing multiple special cases,
 	If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)

> Inheritance: UBTTaskNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| AnimationToPlay | UAnimationAsset * | Animation asset to play. Note that it needs to match the skeleton of pawn this B |
| bLooping | uint32 |  |
| bNonBlocking | uint32 | if true the task will just trigger the animation and instantly finish. Fire and  |
| MyOwnerComp | UBehaviorTreeComponent * |  |
| CachedSkelMesh | USkeletalMeshComponent * |  |