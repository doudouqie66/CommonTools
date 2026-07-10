---
title: UAnimClassData
language: cpp
---

# UAnimClassData

> Inheritance: UObject -> IAnimClassInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| BakedStateMachines | TArray < FBakedAnimationStateMachine > |  |
| TargetSkeleton | USkeleton * | Target skeleton for this blueprint class |
| AnimNotifies | TArray < FAnimNotifyEvent > | A list of anim notifies that state machines (or anything else) may reference |
| RootAnimNodeIndex | int32 |  |
| OrderedSavedPoseIndices | TArray < int32 > |  |
| RootAnimNodeProperty | UStructProperty * |  |
| AnimNodeProperties | TArray < UStructProperty * > |  |
| SyncGroupNames | TArray < FName > |  |