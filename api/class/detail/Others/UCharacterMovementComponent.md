---
title: UCharacterMovementComponent
language: cpp
---

# UCharacterMovementComponent

CharacterMovementComponent handles movement logic for the associated Character owner.
  It supports various movement modes including: walking, falling, swimming, flying, custom.
 
  Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame
  based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()).
 
  Networking is fully implemented, with server-client correction and prediction included.
 
  @see ACharacter, UPawnMovementComponent

> Inheritance: UPawnMovementComponent -> IRVOAvoidanceInterface -> INetworkPredictionInterface -> IObjectPoolInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| CharacterOwner | ACharacter * | Character movement component belongs to |
| bApplyGravityWhileJumping | uint32 | Apply gravity while the character is actively jumping (e.g. holding the jump key |
| GravityScale | float | Custom gravity scale. Gravity is multiplied by this amount for the character. |
| MaxStepHeight | float | Maximum height character can step up |
| JumpZVelocity | float | Initial velocity (instantaneous vertical acceleration) when jumping. |
| JumpOffJumpZFactor | float | Fraction of JumpZVelocity to use when automatically "jumping off" of a base acto |
| WalkableFloorAngle | float | Max angle in degrees of a walkable surface. Any greater than this and it is too  |
| WalkableFloorZ | float | Minimum Z value for floor normal. If less, not a walkable surface. Computed from |
| MovementMode | TEnumAsByte < enum EMovementMode > | Actor's current movement mode (walking, falling, etc). 	     - walking:  Walking |
| CustomMovementMode | uint8 | Current custom sub-mode if MovementMode is set to Custom. 	  This is automatical |
| OldBaseLocation | FVector | Saved location of object we are standing on, for UpdateBasedMovement() to determ |
| OldBaseQuat | FQuat | Saved location of object we are standing on, for UpdateBasedMovement() to determ |
| OldReplaySampleLocation | FVector |  |
| OldReplaySampleTime | float |  |
| GroundFriction | float | Setting that affects movement control. Higher values allow faster changes in dir |
| MaxWalkSpeed | float | The maximum ground speed when walking. Also determines maximum lateral speed whe |
| MaxWalkSpeedCrouched | float | The maximum ground speed when walking and crouched. |
| MaxSwimSpeed | float | The maximum swimming speed. |
| MaxFlySpeed | float | The maximum flying speed. |
| MaxCustomMovementSpeed | float | The maximum speed when using Custom movement mode. |
| MaxAcceleration | float | Max Acceleration (rate of change of velocity) |
| MinAnalogWalkSpeed | float | The ground speed that we should accelerate up to when walking at minimum analog  |
| BrakingFrictionFactor | float | Factor used to multiply actual value of friction used when braking. 	  This appl |
| BrakingFriction | float | Friction (drag) coefficient applied when braking (whenever Acceleration = 0, or  |
| bUseSeparateBrakingFriction | uint32 | If true, BrakingFriction will be used to slow the character to a stop (when ther |
| BrakingDecelerationWalking | float | Deceleration when walking and not applying acceleration. This is a constant oppo |
| BrakingDecelerationFalling | float | Lateral deceleration when falling and not applying acceleration. 	  @see MaxAcce |
| BrakingDecelerationSwimming | float | Deceleration when swimming and not applying acceleration. 	  @see MaxAcceleratio |
| BrakingDecelerationFlying | float | Deceleration when flying and not applying acceleration. 	  @see MaxAcceleration |
| AirControl | float | When falling, amount of lateral movement control available to the character. 	   |
| AirControlBoostMultiplier | float | When falling, multiplier applied to AirControl when lateral velocity is less tha |
| AirControlBoostVelocityThreshold | float | When falling, if lateral velocity magnitude is less than this value, AirControl  |
| FallingLateralFriction | float | Friction to apply to lateral air movement when falling. 	  If bUseSeparateBrakin |
| CrouchedHalfHeight | float | Collision half-height when crouching (component scale is applied separately) |
| Buoyancy | float | Water buoyancy. A ratio (1.0 = neutral buoyancy, 0.0 = no buoyancy) |
| PerchRadiusThreshold | float | Don't allow the character to perch on the edge of a surface if the contact is th |
| PerchAdditionalHeight | float | When perching on a ledge, add this additional distance to MaxStepHeight when det |
| RotationRate | FRotator | Change in rotation per second, used when UseControllerDesiredRotation or OrientR |
| bUseControllerDesiredRotation | uint32 | If true, smoothly rotate the Character toward the Controller's desired rotation  |
| bOrientRotationToMovement | uint32 | If true, rotate the Character toward the direction of acceleration, using Rotati |
| bSweepWhileNavWalking | uint32 | Whether or not the character should sweep for collision geometry while walking.  |
| bMovementInProgress | uint32 | True during movement update. 	  Used internally so that attempts to change Chara |
| bEnableScopedMovementUpdates | uint32 | If true, high-level movement updates will be wrapped in a movement scope that ac |
| bForceMaxAccel | uint32 | Ignores size of acceleration component, and forces max acceleration to drive cha |
| bRunPhysicsWithNoController | uint32 | If true, movement will be performed even if there is no Controller for the Chara |
| bForceNextFloorCheck | uint32 | Force the Character in MOVE_Walking to do a check for a valid floor even if he h |
| bShrinkProxyCapsule | uint32 | If true, the capsule needs to be shrunk on this simulated proxy, to avoid replic |
| bCanWalkOffLedges | uint32 | If true, Character can walk off a ledge. |
| bCanWalkOffLedgesWhenCrouching | uint32 | If true, Character can walk off a ledge when crouching. |
| bNetworkSmoothingComplete | uint32 | Signals that smoothed positionrotation has reached target, and no more smoothing |
| bNetworkSkipProxyPredictionOnNetUpdate | uint32 | Whether we skip prediction on frames where a proxy receives a network update. Th |
| bForceNoSimulatePrediction | uint32 | Whether we skip prediction on simulate movement, only interpolate from server re |
| bDeferUpdateMoveComponent | uint32 | true to update CharacterOwner and UpdatedComponent after movement ends |
| DeferredUpdatedMoveComponent | USceneComponent * | What to update CharacterOwner and UpdatedComponent after movement ends |
| MaxOutOfWaterStepHeight | float | Maximum step height for getting out of water |
| OutofWaterZ | float | Z velocity applied when pawn tries to get out of water |
| Mass | float | Mass of pawn (for when momentum is imparted to it). |
| bEnablePhysicsInteraction | bool | If enabled, the player will interact with physics objects when walking into them |
| bTouchForceScaledToMass | bool | If enabled, the TouchForceFactor is applied per kg mass of the affected object. |
| bPushForceScaledToMass | bool | If enabled, the PushForceFactor is applied per kg mass of the affected object. |
| bPushForceUsingZOffset | bool | If enabled, the PushForce location is moved using PushForcePointZOffsetFactor. O |
| bScalePushForceToVelocity | bool | If enabled, the applied push force will try to get the physics object to the sam |
| StandingDownwardForceScale | float | Force applied to objects we stand on (due to Mass and Gravity) is scaled by this |
| InitialPushForceFactor | float | Initial impulse force to apply when the player bounces into a blocking physics o |
| PushForceFactor | float | Force to apply when the player collides with a blocking physics object. |
| PushForcePointZOffsetFactor | float | Z-Offset for the position the force is applied to. 0.0f is the center of the phy |
| TouchForceFactor | float | Force to apply to physics objects that are touched by the player. |
| MinTouchForce | float | Minimum Force applied to touched physics objects. If < 0.0f, there is no minimum |
| MaxTouchForce | float | Maximum force applied to touched physics objects. If < 0.0f, there is no maximum |
| RepulsionForce | float | Force per kg applied constantly to all overlapping components. |
| bForceBraking_DEPRECATED | uint32 |  |
| CrouchedSpeedMultiplier_DEPRECATED | float | Multiplier to max ground speed to use when crouched |
| UpperImpactNormalScale_DEPRECATED | float |  |
| Acceleration | FVector | Current acceleration vector (with magnitude). 	  This is calculated each update  |
| LastUpdateLocation | FVector | Location after last PerformMovement or SimulateMovement update. Used internally  |
| LastUpdateRotation | FQuat | Rotation after last PerformMovement or SimulateMovement update. |
| LastUpdateVelocity | FVector | Velocity after last PerformMovement or SimulateMovement update. Used internally  |
| ServerLastTransformUpdateTimeStamp | float | Timestamp when location or rotation last changed during an update. Only valid on |
| PendingImpulseToApply | FVector | Accumulated impulse to be added next tick. |
| PendingForceToApply | FVector | Accumulated force to be added next tick. |
| AnalogInputModifier | float | Modifier to applied to values such as acceleration and max speed due to analog i |
| LastStuckWarningTime | float | Used for throttling "stuck in geometry" logging. |
| LastPrintApplyImpactPhysicsForcesLog | float |  |
| MaxSimulationTimeStep | float | Max time delta for each discrete simulation step. 	  Used primarily in the the m |
| MaxSimulationIterations | int32 | Max number of iterations used for each discrete simulation step. 	  Used primari |
| MaxDepenetrationWithGeometry | float | Max distance we allow simulated proxies to depenetrate when moving out of anythi |
| MaxDepenetrationWithGeometryAsProxy | float | Max distance we allow simulated proxies to depenetrate when moving out of anythi |
| MaxDepenetrationWithPawn | float | Max distance we are allowed to depenetrate when moving out of other Pawns. 	 @se |
| MaxDepenetrationWithPawnAsProxy | float | Max distance we allow simulated proxies to depenetrate when moving out of other  |
| NetworkSimulatedSmoothLocationTime | float | How long to take to smoothly interpolate from the old pawn position on the clien |
| NetworkSimulatedSmoothRotationTime | float | How long to take to smoothly interpolate from the old pawn rotation on the clien |
| ListenServerNetworkSimulatedSmoothLocationTime | float | Similar setting as NetworkSimulatedSmoothLocationTime but only used on Listen se |
| ListenServerNetworkSimulatedSmoothRotationTime | float | Similar setting as NetworkSimulatedSmoothRotationTime but only used on Listen se |
| NetProxyShrinkRadius | float | Shrink simulated proxy capsule radius by this amount, to account for network rou |
| NetProxyShrinkHalfHeight | float | Shrink simulated proxy capsule half height by this amount, to account for networ |
| NetworkMaxSmoothUpdateDistance | float | Maximum distance character is allowed to lag behind server location when interpo |
| NetworkNoSmoothUpdateDistance | float | Maximum distance beyond which character is teleported to the new server location |
| bReplaySmoothUseInterp | bool |  |
| NetworkSmoothingMode | ENetworkSmoothingMode | Smoothing mode for simulated proxies in network game. |
| LedgeCheckThreshold | float | Used in determining if pawn is going off ledge.  If the ledge is "shorter" than  |
| JumpOutOfWaterPitch | float | When exiting water, jump if control pitch angle is this high or above. |
| CurrentFloor | FFindFloorResult | Information about the floor the Character is standing on (updated only during wa |
| DefaultLandMovementMode | TEnumAsByte < enum EMovementMode > | Default movement mode when not in water. Used at player startup or when teleport |
| DefaultWaterMovementMode | TEnumAsByte < enum EMovementMode > | Default movement mode when in water. Used at player startup or when teleported.  |
| GroundMovementMode | TEnumAsByte < enum EMovementMode > | Ground movement mode to switch to after falling and resuming ground movement. 	  |
| bMaintainHorizontalGroundVelocity | uint32 | If true, walking movement always maintains horizontal velocity when moving up ra |
| bImpartBaseVelocityX | uint32 | If true, impart the base actor's X velocity when falling off it (which includes  |
| bImpartBaseVelocityY | uint32 | If true, impart the base actor's Y velocity when falling off it (which includes  |
| bImpartBaseVelocityZ | uint32 | If true, impart the base actor's Z velocity when falling off it (which includes  |
| bImpartBaseAngularVelocity | uint32 | If true, impart the base component's tangential components of angular velocity w |
| bJustTeleported | uint32 | Used by movement code to determine if a change in position is based on normal mo |
| bNetworkUpdateReceived | uint32 | True when a network replication update is received for simulated proxies. |
| bNetworkMovementModeChanged | uint32 | True when the networked movement mode has been replicated. |
| bIgnoreClientMovementErrorChecksAndCorrection | uint32 | True when we should ignore server location difference checks for client error on |
| bNotifyApex | uint32 | If true, event NotifyJumpApex() to CharacterOwner's controller when at apex of j |
| bCheatFlying | uint32 | Instantly stop when in flying mode and no acceleration is being applied. |
| bWantsToCrouch | uint32 | If true, try to crouch (or keep crouching) on next update. If false, try to stop |
| bCrouchMaintainsBaseLocation | uint32 | If true, crouching should keep the base of the capsule in place by lowering the  |
| bIgnoreBaseRotation | uint32 | Whether the character ignores changes in rotation of the base it is standing on. |
| bFastAttachedMove | uint32 | Set this to true if riding on a moving base that you know is clear from non-movi |
| bAlwaysCheckFloor | uint32 | Whether we always force floor checks for stationary Characters while walking. 	  |
| bUseFlatBaseForFloorChecks | uint32 | Performs floor checks as if the character is using a shape with a flat base. 	   |
| bPerformingJumpOff | uint32 | Used to prevent reentry of JumpOff() |
| bWantsToLeaveNavWalking | uint32 | Used to safely leave NavWalking movement mode |
| bUseRVOAvoidance | uint32 | If set, component will use RVO avoidance. This only runs on the server. |
| bRequestedMoveUseAcceleration | uint32 | Should use acceleration for path following? 	  If true, acceleration is applied  |
| bIsNavWalkingOnServer | uint32 | Set on clients when server's movement mode is NavWalking |
| bHasRequestedVelocity | uint32 | Was velocity requested by path following? |
| bRequestedMoveWithMaxSpeed | uint32 | Was acceleration requested to be always max speed? |
| bWasAvoidanceUpdated | uint32 | Was avoidance updated in this frame? |
| bUseRVOPostProcess | uint32 | if set, PostProcessAvoidanceVelocity will be called |
| bDeferUpdateBasedMovement | uint32 | Flag set in pre-physics update to indicate that based movement should be updated |
| bProjectNavMeshWalking | uint32 | Whether to raycast to underlying geometry to better conform navmesh-walking char |
| bProjectNavMeshOnBothWorldChannels | uint32 | Use both WorldStatic and WorldDynamic channels for NavWalking geometry conformin |
| AvoidanceLockVelocity | FVector | forced avoidance velocity, used when AvoidanceLockTimer is > 0 |
| AvoidanceLockTimer | float | remaining time of avoidance velocity lock |
| AvoidanceConsiderationRadius | float |  |
| RequestedVelocity | FVector | Velocity requested by path following. 	  @see RequestDirectMove() |
| AvoidanceUID | int32 | No default value, for now it's assumed to be valid if GetAvoidanceManager() retu |
| AvoidanceGroup | FNavAvoidanceMask | Moving actor's group mask |
| GroupsToAvoid | FNavAvoidanceMask | Will avoid other agents if they are in one of specified groups |
| GroupsToIgnore | FNavAvoidanceMask | Will NOT avoid other agents if they are in one of specified groups, higher prior |
| AvoidanceWeight | float | De facto default value 0.5 (due to that being the default in the avoidance regis |
| PendingLaunchVelocity | FVector | Temporarily holds launch velocity when pawn is to be launched so it happens at e |
| CachedProjectedNavMeshHitResult | FHitResult | Last valid projected hit result from raycast to geometry from navmesh |
| NavMeshProjectionInterval | float | How often we should raycast to project from navmesh to underlying geometry |
| NavMeshProjectionTimer | float |  |
| NavMeshProjectionInterpSpeed | float | Speed at which to interpolate agent navmesh offset between traces. 0: Instant (n |
| NavMeshProjectionHeightScaleUp | float | Scale of the total capsule height to use for projection from navmesh to underlyi |
| NavMeshProjectionHeightScaleDown | float | Scale of the total capsule height to use for projection from navmesh to underlyi |
| NavWalkingFloorDistTolerance | float | Ignore small differences in ground height between server and client data during  |
| PostPhysicsTickFunction | FCharacterMovementComponentPostPhysicsTickFunction | Post-physics tick function for this character |
| MinTimeBetweenTimeStampResets | float | Minimum time between client TimeStamp resets. 	 So we trigger a TimeStamp reset  |
| CurrentRootMotion | FRootMotionSourceGroup | Root Motion Group containing active root motion sources being applied to movemen |
| RootMotionParams | FRootMotionMovementParams | Animation root motion (special case for now) 	 	 Root Motion movement params. Ho |
| AnimRootMotionVelocity | FVector | Velocity extracted from RootMotionParams when there is anim root motion active.  |
| bWasSimulatingRootMotion | bool | True when SimulatedProxies are simulating RootMotion |
| bAllowPhysicsRotationDuringAnimRootMotion | uint32 |  |

## Functions

### GetToString

**Return:** FString 

### SetAvoidanceGroup

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupFlags | int32 |  |

**Return:** void  

### SetAvoidanceGroupMask

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupMask | FNavAvoidanceMask & |  |

**Return:** void  

### SetGroupsToAvoid

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupFlags | int32 |  |

**Return:** void  

### SetGroupsToAvoidMask

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupMask | FNavAvoidanceMask & |  |

**Return:** void  

### SetGroupsToIgnore

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupFlags | int32 |  |

**Return:** void  

### SetGroupsToIgnoreMask

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupMask | FNavAvoidanceMask & |  |

**Return:** void  

### SetAvoidanceEnabled

Change avoidance state and registers in RVO manager if needed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### GetCharacterOwner

Get the Character that owns UpdatedComponent.

**Return:** ACharacter * 

### SetMovementMode

Change movement mode.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMovementMode | EMovementMode  | The new movement mode |
| NewCustomMode | uint8 | The new custom sub-mode, only applicable if NewMovementMode is Custom. |

**Return:** void  

### SetGroundMovementMode

Set movement mode to use when returning to walking movement (either MOVE_Walking or MOVE_NavWalking).
	  If movement mode is currently one of Walking or NavWalking, this will also change the current movement mode (via SetMovementMode())
	  if the new mode is not the current ground mode.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewGroundMovementMode | EMovementMode | New ground movement mode. Must be either MOVE_Walking or MOVE_NavWalking, other values are ignored. |

**Return:** void  

### GetGroundMovementMode

Get current GroundMovementMode value.

**Return:** EMovementMode current GroundMovementMode

### PackNetworkMovementMode

**Return:** uint8 

### UnpackNetworkMovementMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ReceivedMode | uint8  |  |
| OutMode | TEnumAsByte < EMovementMode > &  |  |
| OutCustomMode | uint8 &  |  |
| OutGroundMode | TEnumAsByte < EMovementMode > & |  |

**Return:** void  

### ApplyNetworkMovementMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ReceivedMode | uint8 |  |

**Return:** void  

### CheckBaseIsMoveable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MovementBase | USceneComponent * |  |

**Return:** bool  

### IsWalking

**Return:** bool true if the character is in the 'Walking' movement mode.

### DisableMovement

Make movement impossible (sets movement mode to MOVE_None).

**Return:** void 

### HasValidData

Return true if we have a valid CharacterOwner and UpdatedComponent.

**Return:** bool 

### GetMovementBase

Return PrimitiveComponent we are based on (standing and walking on).

**Return:** UPrimitiveComponent * 

### MaybeUpdateBasedMovement

Update or defer updating of position based on Base movement

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaSeconds | float |  |

**Return:** void  

### MaybeSaveBaseLocation

Call SaveBaseLocation() if not deferring updates (bDeferUpdateBasedMovement is false).

**Return:** void 

### GetImpartedMovementBaseVelocity

If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it.
	  Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.

**Return:** FVector 

### CalcVelocity

Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity.
	  This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom movement modes.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTime | float  |   time elapsed since last frame. |
| Friction | float  |   coefficient of friction when not accelerating, or in the direction opposite acceleration. |
| bFluid | bool  |    true if moving through a fluid, causing Friction to always be applied regardless of acceleration. |
| BrakingDeceleration | float |  deceleration applied when not accelerating, or when exceeding max velocity. |

**Return:** void  

### GetMaxJumpHeight

Compute the max jump height based on the JumpZVelocity velocity and gravity.
	 	This does not take into account the CharacterOwner's MaxJumpHoldTime.

**Return:** float 

### GetMaxJumpHeightWithJumpTime

Compute the max jump height based on the JumpZVelocity velocity and gravity.
	 	This does take into account the CharacterOwner's MaxJumpHoldTime.

**Return:** float 

### GetMinAnalogSpeed

**Return:** float Maximum acceleration for the current state.

### K2_GetModifiedMaxAcceleration

**Return:** float Maximum acceleration for the current state, based on MaxAcceleration and any additional modifiers.

### GetMaxAcceleration

**Return:** float Maximum acceleration for the current state.

### GetMaxBrakingDeceleration

**Return:** float Maximum deceleration for the current state when braking (ie when there is no acceleration).

### GetCurrentAcceleration

**Return:** FVector Current acceleration, computed from input vector each update.

### GetAnalogInputModifier

**Return:** float Modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement.

### CanStepUp

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hit | FHitResult & |  |

**Return:** bool  true if we can step up on the actor in the given FHitResult.

### SetBase

Update the base of the character, which is the PrimitiveComponent we are standing on.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewBase | UPrimitiveComponent *  |  |
| BoneName | FName  |  |
| bNotifyActor | bool |  |

**Return:** void  

### SetBaseFromFloor

Update the base of the character, using the given floor result if it is walkable, or null if not. Calls SetBase().

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FloorResult | FFindFloorResult & |  |

**Return:** void  

### ClearAccumulatedForces

Clears forces accumulated through AddImpulse() and AddForce(), and also pending launch velocity.

**Return:** void 

### HasAccumulatedForcesOrLaunch

Add by zoranouyang
	 Is there AddImpulse() or AddForce() or Launch()?

**Return:** bool 

### AddImpulse

Add impulse to character. Impulses are accumulated each tick and applied together
	  so multiple calls to this function will accumulate.
	  An impulse is an instantaneous force, usually applied once. If you want to continually apply
	  forces each frame, use AddForce().
	  Note that changing the momentum of characters like this can change the movement mode.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  |  Impulse to apply. |
| bVelocityChange | bool | Whether or not the impulse is relative to mass. |

**Return:** void  

### AddForce

Add force to character. Forces are accumulated each tick and applied together
	  so multiple calls to this function will accumulate.
	  Forces are scaled depending on timestep, so they can be applied each frame. If you want an
	  instantaneous force, use AddImpulse.
	  Adding a force always takes the actor's mass into account.
	  Note that changing the momentum of characters like this can change the movement mode.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector |  Force to apply. |

**Return:** void  

### GetPerchRadiusThreshold

**Return:** float The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface.

### GetValidPerchRadius

Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).
	  Simply computed as the capsule radius minus the result of GetPerchRadiusThreshold().

**Return:** float 

### IsWalkable

Return true if the hit result should be considered a walkable surface for the character.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hit | FHitResult & |  |

**Return:** bool  

### K2_GetWalkableFloorAngle

Get the max angle in degrees of a walkable surface for the character.

**Return:** float 

### SetWalkableFloorAngle

Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWalkableFloorAngle | float |  |

**Return:** void  

### K2_GetWalkableFloorZ

Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.

**Return:** float 

### SetWalkableFloorZ

Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWalkableFloorZ | float |  |

**Return:** void  

### K2_FindFloor

Sweeps a vertical trace to find the floor for the capsule at the given location. Will attempt to perch if ShouldComputePerchResult() returns true for the downward sweep result.
	 No floor will be found if collision is disabled on the capsule!
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CapsuleLocation | FVector  | Location where the capsule sweep should originate |
| FloorResult | FFindFloorResult & |  Result of the floor check |

**Return:** void  

### K2_ComputeFloorDist

Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult.
	 This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace.
	 This function does not care if collision is disabled on the capsule (unlike FindFloor).
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CapsuleLocation | FVector  | Location where the capsule sweep should originate |
| LineDistance | float  |  If non-zero, max distance to test for a simple line check from the capsule base. Used only if the sweep test fails to find a walkable floor, and only returns a valid result if the impact normal is a walkable normal. |
| SweepDistance | float  |  If non-zero, max distance to use when sweeping a capsule downwards for the test. MUST be greater than or equal to the line distance. |
| SweepRadius | float  |  The radius to use for sweep tests. Should be <= capsule radius. |
| FloorResult | FFindFloorResult & |  Result of the floor check |

**Return:** void  

### CapsuleTouched

Called when the collision capsule touches another primitive component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OverlappedComp | UPrimitiveComponent *  |  |
| Other | AActor *  |  |
| OtherComp | UPrimitiveComponent *  |  |
| OtherBodyIndex | int32  |  |
| bFromSweep | bool  |  |
| SweepResult | FHitResult & |  |

**Return:** void  

### ResetPredictionData_Client

**Return:** void 

### ResetPredictionData_Server

**Return:** void 

### GetSmoothNetUpdateRotationTimeTemporaty

**Return:** float 

### SetSmoothNetUpdateRotationTimeTemporaty

Add by zoranouyang
	 临时的SmoothNetUpdateRotationTime，用于部分情况下需要一段时间内修改一下模拟端Rotation插值速度
	 主要还是以NetworkSimulatedSmoothRotationTime配置为主
	 注意：本值要记得还原到-1，表示不生效

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSmoothNetUpdateRotationTime | float | 模拟端的Rotation插值时间，默认值-1表示使用NetworkSimulatedSmoothRotationTime配置的值 |

**Return:** void  

### ServerMove

Replicated function sent by client to server - contains client movement and view info.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float  |  |
| InAccel | FVector_NetQuantize10  |  |
| ClientLoc | FVector_NetQuantize100  |  |
| CompressedMoveFlags | uint8  |  |
| ClientRoll | uint8  |  |
| View | uint32  |  |
| ClientMovementBase | UPrimitiveComponent *  |  |
| ClientBaseBoneName | FName  |  |
| ClientMovementMode | uint8 |  |

**Return:** void  

### ServerMoveDual

Replicated function sent by client to server - contains client movement and view info for two moves.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp0 | float  |  |
| InAccel0 | FVector_NetQuantize10  |  |
| PendingFlags | uint8  |  |
| View0 | uint32  |  |
| TimeStamp | float  |  |
| InAccel | FVector_NetQuantize10  |  |
| ClientLoc | FVector_NetQuantize100  |  |
| NewFlags | uint8  |  |
| ClientRoll | uint8  |  |
| View | uint32  |  |
| ClientMovementBase | UPrimitiveComponent *  |  |
| ClientBaseBoneName | FName  |  |
| ClientMovementMode | uint8 |  |

**Return:** void  

### ServerMoveDualHybridRootMotion

Replicated function sent by client to server - contains client movement and view info for two moves. First move is non root motion, second is root motion.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp0 | float  |  |
| InAccel0 | FVector_NetQuantize10  |  |
| PendingFlags | uint8  |  |
| View0 | uint32  |  |
| TimeStamp | float  |  |
| InAccel | FVector_NetQuantize10  |  |
| ClientLoc | FVector_NetQuantize100  |  |
| NewFlags | uint8  |  |
| ClientRoll | uint8  |  |
| View | uint32  |  |
| ClientMovementBase | UPrimitiveComponent *  |  |
| ClientBaseBoneName | FName  |  |
| ClientMovementMode | uint8 |  |

**Return:** void  

### ServerMoveOld

Resending an (important) old move. Process it if not already processed.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldTimeStamp | float  |  |
| OldAccel | FVector_NetQuantize10  |  |
| OldMoveFlags | uint8 |  |

**Return:** void  

### ClientAckGoodMove

If no client adjustment is needed after processing received ServerMove(), ack the good move so client can remove it from SavedMoves

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float |  |

**Return:** void  

### OnGoodMoveAck

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float |  |

**Return:** void  

### ClientAdjustPosition

Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float  |  |
| NewLoc | FVector  |  |
| NewVel | FVector  |  |
| NewBase | UPrimitiveComponent *  |  |
| NewBaseBoneName | FName  |  |
| bHasBase | bool  |  |
| bBaseRelativePosition | bool  |  |
| ServerMovementMode | uint8 |  |

**Return:** void  

### ClientVeryShortAdjustPosition

Bandwidth saving version, when velocity is zeroed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float  |  |
| NewLoc | FVector  |  |
| NewBase | UPrimitiveComponent *  |  |
| NewBaseBoneName | FName  |  |
| bHasBase | bool  |  |
| bBaseRelativePosition | bool  |  |
| ServerMovementMode | uint8 |  |

**Return:** void  

### ClientAdjustRootMotionPosition

Replicate position correction to client when using root motion for movement. (animation root motion specific)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float  |  |
| ServerMontageTrackPosition | float  |  |
| ServerLoc | FVector  |  |
| ServerRotation | FVector_NetQuantizeNormal  |  |
| ServerVelZ | float  |  |
| ServerBase | UPrimitiveComponent *  |  |
| ServerBoneName | FName  |  |
| bHasBase | bool  |  |
| bBaseRelativePosition | bool  |  |
| ServerMovementMode | uint8 |  |

**Return:** void  

### ClientAdjustRootMotionSourcePosition

Replicate root motion source correction to client when using root motion for movement.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float  |  |
| ServerRootMotion | FRootMotionSourceGroup  |  |
| bHasAnimRootMotion | bool  |  |
| ServerMontageTrackPosition | float  |  |
| ServerLoc | FVector  |  |
| ServerRotation | FVector_NetQuantizeNormal  |  |
| ServerVelZ | float  |  |
| ServerBase | UPrimitiveComponent *  |  |
| ServerBoneName | FName  |  |
| bHasBase | bool  |  |
| bBaseRelativePosition | bool  |  |
| ServerMovementMode | uint8 |  |

**Return:** void