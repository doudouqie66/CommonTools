---
title: UParticleModuleCollision
language: cpp
---

# UParticleModuleCollision

> Inheritance: UParticleModuleCollisionBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| DampingFactor | FRawDistributionVector | How much to `slow' the velocity of the particle after a collision. 	 	Value is o |
| DampingFactorRotation | FRawDistributionVector | How much to `slow' the rotation of the particle after a collision. 	 	Value is o |
| MaxCollisions | FRawDistributionFloat | The maximum number of collisions a particle can have.  	   Value is obtained usi |
| CollisionCompletionOption | TEnumAsByte < enum EParticleCollisionComplete > | What to do once a particles MaxCollisions is reached. 	 	One of the following: 	 |
| CollisionTypes | TArray < TEnumAsByte < enum EObjectTypeQuery > > | Which ObjectTypes to collide with |
| bApplyPhysics | uint32 | If true, physic will be applied between a particle and the  	 	object it collide |
| bIgnoreTriggerVolumes | uint32 | Any trigger volumes that are hit will be ignored. NOTE: This can be turned off i |
| ClassesToIgnore | TArray < UClass * > |  |
| ActorTagsToIgnore | TArray < FName > |  |
| ComponentClassesToIgnore | TArray < UClass * > |  |
| ComponentTagsToIgnore | TArray < FName > |  |
| bTraceByChannel | bool |  |
| TraceChannel | TEnumAsByte < ECollisionChannel > |  |
| ParticleMass | FRawDistributionFloat | The mass of the particle - for use when bApplyPhysics is true.  	 	Value is obta |
| DirScalar | float | The directional scalar value - used to scale the bounds to  	 	'assist' in avoid |
| bPawnsDoNotDecrementCount | uint32 | If true, then collisions with Pawns will still react, but  	 	the UsedMaxCollisi |
| bOnlyVerticalNormalsDecrementCount | uint32 | If true, then collisions that do not have a vertical hit  	 	normal will still r |
| VerticalFudgeFactor | float | The fudge factor to use to determine vertical. 	 	True vertical will have a Hit. |
| DelayAmount | FRawDistributionFloat | How long to delay before checking a particle for collisions. 	 	Value is retriev |
| bDropDetail | uint32 | If true, when the World->bDropDetail flag is set, the module will be ignored. |
| bCollideOnlyIfVisible | uint32 | If true, Particle collision only if particle system is currently being rendered. |
| bIgnoreSourceActor | uint32 | If true, then the source actor is ignored in collision checks. 	 	Defaults to tr |
| bClearCacheIgnoreActorsAndCompsOnSpawn | uint32 |  |
| ClearCacheIgnoreActorsAndCompsInterval | float |  |
| MaxCollisionDistance | float | Max distance at which particle collision will occur. |