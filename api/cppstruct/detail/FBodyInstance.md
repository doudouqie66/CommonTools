---
title: FBodyInstance
---

# FBodyInstance

Container for a physics representation of an object

## Variables

| Name | Type | Description |
|------|------|-------------|
| SleepFamily | ESleepFamily | The set of values used in considering when put this body to sleep. |
| DOFMode | TEnumAsByte < EDOFMode :: Type > | Locks physical movement along specified axis. |
| CollisionEnabled | TEnumAsByte < ECollisionEnabled :: Type > | Type of collision enabled. 	   	 	No Collision      : Will not create any repres |
| CollisionProfileName | FName | Collision Profile Name |
| CollisionResponses | FCollisionResponse | Custom Channels for Responses |
| bUseCCD | uint8 | If true Continuous Collision Detection (CCD) will be used for this component |
| bNotifyRigidBodyCollision | uint8 | Should 'Hit' events fire when this object collides during physics simulation. |
| bUseShapeCollisionOverride | uint8 | PhysicsAsset中有bCollisionPerShape功能，载具中经常用到。 	  在使用这个功能时，如果运行时调用了UpdatePhysicsSha |
| bSimulatePhysics | uint8 | If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) |
| bOverrideMass | uint8 | If true, mass will not be automatically computed and you must set it directly |
| bEnableGravity | uint8 | If object should have the force of gravity applied |
| bAutoWeld | uint8 | If true and is attached to a parent, the two bodies will be joined into a single |
| bStartAwake | uint8 | If object should start awake, or if it should initially be sleeping |
| bGenerateWakeEvents | uint8 | Should 'wakesleep' events fire when this object is woken up or put to sleep by t |
| bUpdateMassWhenScaleChanges | uint8 | If true, it will update mass when scale changes |
| bLockTranslation | uint8 | When a Locked Axis Mode is selected, will lock translation on the specified axis |
| bLockRotation | uint8 | When a Locked Axis Mode is selected, will lock rotation to the specified axis |
| bLockXTranslation | uint8 | Lock translation along the X-axis |
| bLockYTranslation | uint8 | Lock translation along the Y-axis |
| bLockZTranslation | uint8 | Lock translation along the Z-axis |
| bLockXRotation | uint8 | Lock rotation about the X-axis |
| bLockYRotation | uint8 | Lock rotation about the Y-axis |
| bLockZRotation | uint8 | Lock rotation about the Z-axis |
| bOverrideMaxAngularVelocity | uint8 | Override the default max angular velocity |
| bUseAsyncScene | uint8 | If true, this body will be put into the asynchronous physics scene. If false, it |
| bOverrideMaxDepenetrationVelocity | uint8 | Whether this body instance has its own custom MaxDepenetrationVelocity |
| bOverrideWalkableSlopeOnInstance | uint8 | Whether this instance of the object has its own custom walkable slope override s |
| MaxDepenetrationVelocity | float | The maximum velocity used to depenetrate this object |
| MassInKgOverride | float | Mass of the body in KG. By default we compute this based on physical material an |
| LinearDamping | float | 'Drag' force added to reduce linear movement |
| AngularDamping | float | 'Drag' force added to reduce angular movement |
| CustomDOFPlaneNormal | FVector | Locks physical movement along a custom plane for a given normal. |
| COMNudge | FVector | User specified offset for the center of mass of this object, from the calculated |
| bUseOverrideCOM | bool | 为true时，锁定重心位置为OverrideCOM(Component space)，只对载具有效 |
| OverrideCOM | FVector |  |
| MassScale | float | Per-instance scaling of mass |
| InertiaTensorScale | FVector | Per-instance scaling of inertia (bigger number means  it'll be harder to rotate) |
| bUsedPhysSimpleStaticMesh | uint8 |  |
| ObjectType | TEnumAsByte < enum ECollisionChannel > | Enum indicating what type of object this should be considered as when it moves |
| WalkableSlopeOverride | FWalkableSlopeOverride | Custom walkable slope override setting for this instance. 	 @see GetWalkableSlop |
| PhysMaterialOverride | UPhysicalMaterial * | Allows you to override the PhysicalMaterial to use for simple collision on this  |
| MaxAngularVelocity | float | The maximum angular velocity for this instance |
| CustomSleepThresholdMultiplier | float | If the SleepFamily is set to custom, multiply the natural sleep threshold by thi |
| StabilizationThresholdMultiplier | float | Stabilization factor for this body if Physics stabilization is enabled. A higher |
| PhysicsBlendWeight | float | Influence of rigid body physics (blending) on the mesh's pose (0.0 == use only a |
| PositionSolverIterationCount | int32 | This physics body's solver iteration count for position. Increasing this will be |
| VelocitySolverIterationCount | int32 | This physics body's solver iteration count for velocity. Increasing this will be |
| ResponseToChannels_DEPRECATED | FCollisionResponseContainer | Types of objects that this physics objects will collide with. |