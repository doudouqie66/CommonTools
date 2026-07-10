---
title: UBTDecorator_CheckGameplayTagsOnActor
language: cpp
---

# UBTDecorator_CheckGameplayTagsOnActor

GameplayTag decorator node.
  A decorator node that bases its condition on whether the specified Actor (in the blackboard) has a Gameplay Tag or
  Tags specified.

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| ActorToCheck | FBlackboardKeySelector |  |
| TagsToMatch | EGameplayContainerMatchType |  |
| GameplayTags | FGameplayTagContainer |  |
| CachedDescription | FString | cached description |