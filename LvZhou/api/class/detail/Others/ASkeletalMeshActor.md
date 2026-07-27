---
title: ASkeletalMeshActor
language: cpp
---

# ASkeletalMeshActor

SkeletalMeshActor is an instance of a USkeletalMesh in the world.
  Skeletal meshes are deformable meshes that can be animated and change their geometry at run-time.
  Skeletal meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors.
  
  @see USkeletalMesh

> Inheritance: AActor -> IMatineeAnimInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| bShouldDoAnimNotifies | uint32 | Whether or not this actor should respond to anim notifies - CURRENTLY ONLY AFFEC |
| bWakeOnLevelStart_DEPRECATED | uint32 |  |
| SkeletalMeshComponent | USkeletalMeshComponent * |  |
| ReplicatedMesh | USkeletalMesh * | Used to replicate mesh to clients |
| ReplicatedPhysAsset | UPhysicsAsset * | Used to replicate physics asset to clients |
| ReplicatedMaterial0 | UMaterialInterface * | used to replicate the material in index 0 |
| ReplicatedMaterial1 | UMaterialInterface * |  |

## Functions

### OnRep_ReplicatedMesh

Replication Notification Callbacks

**Return:** void 

### OnRep_ReplicatedPhysAsset

**Return:** void 

### OnRep_ReplicatedMaterial0

**Return:** void 

### OnRep_ReplicatedMaterial1

**Return:** void