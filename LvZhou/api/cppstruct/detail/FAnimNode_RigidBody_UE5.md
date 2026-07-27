---
title: FAnimNode_RigidBody_UE5
---

# FAnimNode_RigidBody_UE5

Controller that simulates physics based on the physics asset of the skeletal mesh component

## Variables

| Name | Type | Description |
|------|------|-------------|
| OverridePhysicsAsset | UPhysicsAsset * | Physics asset to use. If empty use the skeletal mesh's default physics asset |
| OverrideWorldGravity | FVector | Override gravity |
| ExternalForce | FVector | Applies a uniform external force in world space. This allows for easily faking i |
| ComponentLinearAccScale | FVector | When using non-world-space sim, this controls how much of the components world-s |
| ComponentLinearVelScale | FVector | When using non-world-space sim, this applies a 'drag' to the bodies in the local |
| ComponentAppliedLinearAccClamp | FVector | When using non-world-space sim, this is an overall clamp on acceleration derived |
| SimSpaceSettings | FSimSpaceSettings | Settings for the system which passes motion of the simulation's space 	  into th |
| CachedBoundsScale | float | Scale of cached bounds (vs. actual bounds). 	  Increasing this may improve perfo |
| BaseBoneRef | FBoneReference | Matters if SimulationSpace is BaseBone |
| OverlapChannel | TEnumAsByte < ECollisionChannel > | The channel we use to find static geometry to collide with  	UPROPERTY(EditAnywh |
| SimulationSpace | ESimulationSpace_UE5 | What space to simulate the bodies in. This affects how velocities are generated |
| bForceDisableCollisionBetweenConstraintBodies | bool | Whether to allow collisions between two bodies joined by a constraint |
| bEnableWorldGeometry | uint8 |  |
| bOverrideWorldGravity | uint8 | UPROPERTY(EditAnywhere, Category = Settings, meta = (InlineEditConditionToggle)) |
| bTransferBoneVelocities | uint8 | UPROPERTY(EditAnywhere, Category = Settings, meta=(PinHiddenByDefault)) |
| bFreezeIncomingPoseOnStart | uint8 | UPROPERTY(EditAnywhere, Category = Settings Not Support Feature for Depends on C |
| bClampLinearTranslationLimitToRefPose | uint8 |  |
| WorldSpaceMinimumScale | float |  |
| EvaluationResetTime | float |  |
| bComponentSpaceSimulation_DEPRECATED | bool |  |