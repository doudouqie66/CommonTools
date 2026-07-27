---
title: UAnimBlueprint
language: cpp
---

# UAnimBlueprint

An Anim Blueprint is essentially a specialized Blueprint whose graphs control the animation of a Skeletal Mesh.
  It can perform blending of animations, directly control the bones of the skeleton, and output a final pose
  for a Skeletal Mesh each frame.

> Inheritance: UBlueprint

## Variables

| Name | Type | Description |
|------|------|-------------|
| TargetSkeleton | USkeleton * | The kind of skeleton that animation graphs compiled from the blueprint will anim |
| Groups | TArray < FAnimGroupInfo > |  |
| bUseMultiThreadedAnimationUpdate | bool | Allows this anim Blueprint to update its native update, blend tree, montages and |
| bWarnAboutBlueprintUsage | bool | Selecting this option will cause the compiler to emit warnings whenever a call i |