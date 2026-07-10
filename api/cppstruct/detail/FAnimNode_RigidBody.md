---
title: FAnimNode_RigidBody
---

# FAnimNode_RigidBody

Controller that simulates physics based on the physics asset of the skeletal mesh component

## Variables

| Name | Type | Description |
|------|------|-------------|
| OverridePhysicsAsset | UPhysicsAsset * | Physics asset to use. If empty use the skeletal mesh's default physics asset |
| LastUsePhysicsAsset | TWeakObjectPtr < UPhysicsAsset > |  |
| OverrideWorldGravity | FVector | Override gravity |
| ExternalForce | FVector | Applies a uniform external force in world space. This allows for easily faking i |
| OverlapChannel | TEnumAsByte < ECollisionChannel > | The channel we use to find static geometry to collide with |
| bEnableWorldGeometry | bool |  |
| SimulationSpace | ESimulationSpace | What space to simulate the bodies in. This affects how velocities are generated |
| bOverrideWorldGravity | bool |  |
| CachedBoundsScale | float | Scale of cached bounds (vs. actual bounds). 	  Increasing this may improve perfo |
| bUseCompPhysicsAssetWhenNotSet | bool |  |
| bUseIntersectDetect | bool |  |
| bUseMultipleRigidBodyNodeInitDelay | bool |  |
| bComponentSpaceSimulation_DEPRECATED | bool |  |
| BoneShiftTolerenceChecker | FAnimNodeBoneShiftTolerenceChecker | Bone Shift Tolerence Check Start |