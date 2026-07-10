---
title: UBTTask_RunBehaviorDynamic
language: cpp
---

# UBTTask_RunBehaviorDynamic

RunBehaviorDynamic task allows pushing subtrees on execution stack.
  Subtree asset can be assigned at runtime with SetDynamicSubtree function of BehaviorTreeComponent.
 
  Does NOT support subtree's root level decorators!

> Inheritance: UBTTaskNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| InjectionTag | FGameplayTag | Gameplay tag that will identify this task for subtree injection |
| DefaultBehaviorAsset | UBehaviorTree * | default behavior to run |
| BehaviorAsset | UBehaviorTree * | current subtree |