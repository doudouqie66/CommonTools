---
title: UProjectileMovementComponent
language: cpp
---

# UProjectileMovementComponent

ProjectileMovementComponent updates the position of another component during its tick.
 
  Behavior such as bouncing after impacts and homing toward a target are supported.
 
  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
  If the updated component is simulating physics, only the initial launch parameters (when initial velocity is non-zero)
  will affect the projectile, and the physics sim will take over from there.
 
  @see UMovementComponent

> Inheritance: UMovementComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| InitialSpeed | float | Initial speed of projectile. If greater than zero, this will override the initia |
| MaxSpeed | float | Limit on speed of projectile (0 means no limit). |
| bRotationFollowsVelocity | uint8 | If true, this projectile will have its rotation updated each frame to match the  |
| bRotationRemainsVertical | uint8 | If true, this projectile will have its rotation updated each frame to maintain t |
| bShouldBounce | uint8 | If true, simple bounces will be simulated. Set this to false to stop simulating  |
| bInitialVelocityInLocalSpace | uint8 | If true, the initial Velocity is interpreted as being in local space upon startu |
| bForceSubStepping | uint8 | If true, forces sub-stepping to break up movement into discrete smaller steps to |
| bSimulationEnabled | uint8 | If true, does normal simulation ticking and update. If false, simulation is halt |
| bSweepCollision | uint8 | If true, movement uses swept collision checks. 	  If false, collision effectivel |
| bIsHomingProjectile | uint8 | If true, we will accelerate toward our homing target. HomingTargetComponent must |
| bBounceAngleAffectsFriction | uint8 | Controls the effects of friction on velocity parallel to the impact surface when |
| bIsSliding | uint8 | If true, projectile is sliding  rolling along a surface. |
| bInterpMovement | uint8 | If true and there is an interpolated component set, location (and optionally rot |
| bInterpRotation | uint8 | If true and there is an interpolated component set, rotation interpolation is en |
| PreviousHitTime | float | Saved HitResult Time (0 to 1) from previous simulation step. Equal to 1.0 when t |
| PreviousHitNormal | FVector | Saved HitResult Normal from previous simulation step that resulted in an impact. |
| ProjectileGravityScale | float | Custom gravity scale for this projectile. Set to 0 for no gravity. |
| Buoyancy | float | Buoyancy of UpdatedComponent in fluid. 0.0=sinks as fast as in air, 1.0=neutral  |
| Bounciness | float | Percentage of velocity maintained after the bounce in the direction of the norma |
| Friction | float | Coefficient of friction, affecting the resistance to sliding along a surface. 	  |
| BounceVelocityStopSimulatingThreshold | float | If velocity is below this threshold after a bounce, stops simulating and trigger |
| MinFrictionFraction | float | When bounce angle affects friction, apply at least this fraction of normal frict |
| HomingAccelerationMagnitude | float | The magnitude of our acceleration towards the homing target. Overall velocity ma |
| HomingTargetComponent | TWeakObjectPtr < USceneComponent > | The current target we are homing towards. Can only be set at runtime (when proje |
| MaxSimulationTimeStep | float | Max time delta for each discrete simulation step. 	  Lowering this value can add |
| MaxSimulationIterations | int32 | Max number of iterations used for each discrete simulation step. 	  Increasing t |
| BounceAdditionalIterations | int32 | On the first few bounces (up to this amount), allow extra iterations over MaxSim |
| InterpLocationTime | float | "Time" over which most of the location interpolation occurs, when the UpdatedCom |
| InterpRotationTime | float | "Time" over which most of the rotation interpolation occurs, when the UpdatedCom |
| InterpLocationMaxLagDistance | float | Max distance behind UpdatedComponent which the interpolated component is allowed |
| InterpLocationSnapToTargetDistance | float | Max distance behind UpdatedComponent beyond which the interpolated component is  |

## Functions

### IsVelocityUnderSimulationThreshold

Returns true if velocity magnitude is less than BounceVelocityStopSimulatingThreshold.

**Return:** bool 

### SetVelocityInLocalSpace

Sets the velocity to the new value, rotated into Actor space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVelocity | FVector |  |

**Return:** void  

### StopSimulating

Clears the reference to UpdatedComponent, fires stop event (OnProjectileStop), and stops ticking (if bAutoUpdateTickRegistration is true).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HitResult | FHitResult & |  |

**Return:** void  

### SetInterpolatedComponent

Assigns the component that will be used for network interpolationsmoothing. It is expected that this is a component attached somewhere below the UpdatedComponent.
	  When network updates use MoveInterpolationTarget() to move the UpdatedComponent, the interpolated component's relative offset will be maintained and smoothed over
	  the course of future component ticks. The current relative location and rotation of the component is saved as the target offset for future interpolation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | USceneComponent * |  |

**Return:** void  

### MoveInterpolationTarget

Moves the UpdatedComponent, which is also the interpolation target for the interpolated component. If there is not interpolated component, this simply moves UpdatedComponent.
	  Use this typically from PostNetReceiveLocationAndRotation() or similar from an Actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector &  |  |
| NewRotation | FRotator & |  |

**Return:** void  

### ResetInterpolation

Resets interpolation so that interpolated component snaps back to the initial locationrotation without any additional offsets.

**Return:** void 

### IsInterpolationComplete

Returns whether interpolation is complete because the target has been reached. True when interpolation is disabled.

**Return:** bool 

### LimitVelocity

Don't allow velocity magnitude to exceed MaxSpeed, if MaxSpeed is non-zero.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVelocity | FVector |  |

**Return:** FVector