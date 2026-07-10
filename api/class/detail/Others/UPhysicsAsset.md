---
title: UPhysicsAsset
language: cpp
---

# UPhysicsAsset

PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll.
  The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints.
  A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents
  The asset can be configured inside the Physics Asset Editor.
 
  @see USkeletalMesh

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoundsBodies | TArray < int32 > | Index of bodies that are marked bConsiderForBounds |
| SkeletalBodySetups | TArray < USkeletalBodySetup * > | Array of SkeletalBodySetup objects. Stores information about collision shape etc |
| ConstraintSetup | TArray < UPhysicsConstraintTemplate * > | Array of RB_ConstraintSetup objects.  	 	Stores information about a joint betwee |
| bUseAsyncScene | uint8 | If true, bodies of the physics asset will be put into the asynchronous physics s |
| ThumbnailInfo | UThumbnailInfo * | Information for thumbnail rendering |
| BodySetup_DEPRECATED | TArray < UBodySetup * > |  |