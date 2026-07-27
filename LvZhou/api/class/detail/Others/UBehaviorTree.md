---
title: UBehaviorTree
language: cpp
---

# UBehaviorTree

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| RootNode | UBTCompositeNode * | root node of loaded tree |
| BlackboardAsset | UBlackboardData * | blackboard asset for this tree |
| RootDecorators | TArray < UBTDecorator * > | root level decorators, used by subtrees |
| RootDecoratorOps | TArray < FBTDecoratorLogic > | logic operators for root level decorators, used by subtrees |