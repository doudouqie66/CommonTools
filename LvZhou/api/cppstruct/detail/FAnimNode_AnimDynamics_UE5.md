---
title: FAnimNode_AnimDynamics_UE5
---

# FAnimNode_AnimDynamics_UE5

## Variables

| Name | Type | Description |
|------|------|-------------|
| LinearDampingOverride | float | Overridden linear damping value. The default is 0.7. Values below 0.7 won't have |
| AngularDampingOverride | float | Overridden angular damping value. The default is 0.7. Values below 0.7 won't hav |
| RelativeSpaceBone | FBoneReference | When in BoneRelative sim space, the simulation will use this bone as the origin |
| BoundBone | FBoneReference | The bone to attach the physics body to, if bChain is true this is the top of the |
| ChainEnd | FBoneReference | If bChain is true this is the bottom of the chain, otherwise ignored |
| PhysicsBodyDefinitions | TArray < FAnimPhysBodyDefinition_UE5 > |  |
| GravityScale | float | Scale for gravity, higher values increase forces due to gravity |
| GravityOverride | FVector | Gravity Override Value |
| LinearSpringConstant | float | Spring constant to use when calculating linear springs, higher values mean a str |
| AngularSpringConstant | float | Spring constant to use when calculating angular springs, higher values mean a st |
| WindScale | float | Scale to apply to calculated wind velocities in the solver |
| ComponentLinearAccScale | FVector | When using non-world-space sim, this controls how much of the components world-s |
| ComponentLinearVelScale | FVector | When using non-world-space sim, this applies a 'drag' to the bodies in the local |
| ComponentAppliedLinearAccClamp | FVector | When using non-world-space sim, this is an overall clamp on acceleration derived |
| AngularBiasOverride | float | Overridden angular bias value 	   Angular bias is essentially a twist reduction  |
| NumSolverIterationsPreUpdate | int32 | Number of update passes on the linear and angular limits before we solve the pos |
| NumSolverIterationsPostUpdate | int32 | Number of update passes on the linear and angular limits after we solve the posi |
| SphericalLimits | TArray < FAnimPhysSphericalLimit_UE5 > | List of available spherical limits for this node |
| ExternalForce | FVector | An external force to apply to all bodies in the simulation when ticked, specifie |
| PlanarLimits | TArray < FAnimPhysPlanarLimit_UE5 > | List of available planar limits for this node |
| SimulationSpace | AnimPhysSimSpaceType_UE5 | The space used to run the simulation |
| bUseSphericalLimits | uint8 | Whether to evaluate spherical limits |
| bUsePlanarLimit | uint8 | Whether to evaluate planar limits |
| bDoUpdate | uint8 | If true we will perform physics update, otherwise skip - allows visualization of |
| bDoEval | uint8 | If true we will perform bone transform evaluation, otherwise skip - allows visua |
| bOverrideLinearDamping | uint8 | If true, the override value will be used for linear damping |
| bOverrideAngularBias | uint8 | If true, the override value will be used for the angular bias for bodies in this |
| bOverrideAngularDamping | uint8 | If true, the override value will be used for angular damping |
| bEnableWind | uint8 | Whether or not wind is enabled for the bodies in this simulation |
| bUseGravityOverride | uint8 | Use gravity override value vs gravity scale |
| bGravityOverrideInSimSpace | uint8 | If true the gravity override value is defined in simulation space, by default it |
| bLinearSpring | uint8 | If true the body will attempt to spring back to its initial position |
| bAngularSpring | uint8 | If true the body will attempt to align itself with the specified angular target |
| bChain | uint8 | Set to true to use the solver to simulate a connected chain |
| BoxExtents_DEPRECATED | FVector |  |
| LocalJointOffset_DEPRECATED | FVector |  |
| ConstraintSetup_DEPRECATED | FAnimPhysConstraintSetup_UE5 |  |
| CollisionType_DEPRECATED | AnimPhysCollisionType |  |
| SphereCollisionRadius_DEPRECATED | float |  |