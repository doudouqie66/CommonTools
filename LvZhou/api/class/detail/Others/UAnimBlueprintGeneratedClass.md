---
title: UAnimBlueprintGeneratedClass
language: cpp
---

# UAnimBlueprintGeneratedClass

> Inheritance: UBlueprintGeneratedClass -> IAnimClassInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| BakedStateMachines | TArray < FBakedAnimationStateMachine > |  |
| TargetSkeleton | USkeleton * | Target skeleton for this blueprint class |
| AnimNotifies | TArray < FAnimNotifyEvent > | A list of anim notifies that state machines (or anything else) may reference |
| RootAnimNodeIndex | int32 |  |
| OrderedSavedPoseIndices | TArray < int32 > |  |
| SyncGroupNames | TArray < FName > |  |
| bFMPrecomputeDone | bool | 预计算标记：编辑器编译蓝图时（PostCompile）扫描并写入，打包后序列化到.uasset， 	   运行时加载后直接读取正确值，无需再次扫描。 	   编 |
| bHasAnyFunctionModule | bool | 预计算缓存：该动画蓝图类（含父类继承链）是否含有任何FunctionModule属性。 	   仅在bFMPrecomputeDone为true时有效。打包后序 |