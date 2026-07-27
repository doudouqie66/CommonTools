---
title: UMovementComponent
language: cpp
---

# UMovementComponent

MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick.
  Base functionality includes:
     - Restricting movement to a plane or axis.
     - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()).
     - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()).
     - Automatically registering the component tick and finding a component to move on the owning Actor.
  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
  During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| UpdatedComponent | USceneComponent * | The component we move and update. 	  If this is null at startup and bAutoRegiste |
| UpdatedPrimitive | UPrimitiveComponent * | UpdatedComponent, cast as a UPrimitiveComponent. May be invalid if UpdatedCompon |
| Velocity | FVector | Current velocity of updated component. |
| PlaneConstraintNormal | FVector | The normal or axis of the plane that constrains movement, if bConstrainToPlane i |
| PlaneConstraintOrigin | FVector | The origin of the plane that constrains movement, if plane constraint is enabled |
| bUpdateOnlyIfRendered | uint8 | If true, skips TickComponent() if UpdatedComponent was not recently rendered. |
| bAutoUpdateTickRegistration | uint8 | If true, whenever the updated component is changed, this component will enable o |
| bTickBeforeOwner | uint8 | If true, after registration we will add a tick dependency to tick before our own |
| bAutoRegisterUpdatedComponent | uint8 | If true, registers the owner's Root component as the UpdatedComponent if there i |
| bConstrainToPlane | uint8 | If true, movement will be constrained to a plane. 	  @see PlaneConstraintNormal, |
| bSnapToPlaneAtStart | uint8 | If true and plane constraints are enabled, then the updated component will be sn |
| bAutoRegisterPhysicsVolumeUpdates | uint8 | If true, then applies the value of bComponentShouldUpdatePhysicsVolume to the Up |
| bComponentShouldUpdatePhysicsVolume | uint8 | If true, enables bShouldUpdatePhysicsVolume on the UpdatedComponent during initi |
| PlaneConstraintAxisSetting | EPlaneConstraintAxisSetting | Setting that controls behavior when movement is restricted to a 2D plane defined |

## Functions

### GetGravityZ

Returns gravity that affects this component

**Return:** float 

### GetMaxSpeed

Returns maximum speed of component in current movement mode.

**Return:** float 

### K2_GetMaxSpeedModifier

Returns a scalar applied to the maximum velocity that the component can currently move.

**Return:** float 

### K2_GetModifiedMaxSpeed

Returns the result of GetMaxSpeed()  GetMaxSpeedModifier().

**Return:** float 

### IsExceedingMaxSpeed

Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance.
	  Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit
	  can cause the max speed to be violated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaxSpeed | float |  |

**Return:** bool  

### StopMovementImmediately

Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration).

**Return:** void 

### GetPhysicsVolume

Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none.

**Return:** APhysicsVolume * 

### PhysicsVolumeChanged

Delegate when PhysicsVolume of UpdatedComponent has been changed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVolume | APhysicsVolume * |  |

**Return:** void  

### SetUpdatedComponent

Assign the component we move and update.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewUpdatedComponent | USceneComponent * |  |

**Return:** void  

### K2_MoveUpdatedComponent

Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation.
	  Respects the plane constraint, if enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Delta | FVector  |  |
| NewRotation | FRotator  |  |
| OutHit | FHitResult &  |  |
| bSweep | bool  |  |
| bTeleport | bool |  |

**Return:** bool  True if some movement occurred, false if no movement occurred. Result of any impact will be stored in OutHit.

### SetPlaneConstraintAxisSetting

Set the plane constraint axis setting.
	  Changing this setting will modify the current value of PlaneConstraintNormal.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAxisSetting | EPlaneConstraintAxisSetting | New plane constraint axis setting. |

**Return:** void  

### GetPlaneConstraintAxisSetting

Get the plane constraint axis setting.

**Return:** EPlaneConstraintAxisSetting 

### SetPlaneConstraintNormal

Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled.
	  Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom".
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlaneNormal | FVector | The normal of the plane. If non-zero in length, it will be normalized. |

**Return:** void  

### SetPlaneConstraintFromVectors

Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Forward | FVector  |  |
| Up | FVector |  |

**Return:** void  

### SetPlaneConstraintOrigin

Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlaneOrigin | FVector |  |

**Return:** void  

### SetPlaneConstraintEnabled

Sets whether or not the plane constraint is enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | bool |  |

**Return:** void  

### GetPlaneConstraintNormal

Returns the normal of the plane that constrains movement, enforced if the plane constraint is enabled.

**Return:** const FVector & 

### GetPlaneConstraintOrigin

Get the plane constraint origin. This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().

**Return:** const FVector & The origin of the plane that constrains movement, if the plane constraint is enabled.

### ConstrainDirectionToPlane

Constrain a direction vector to the plane constraint, if enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Direction | FVector |  |

**Return:** FVector  

### ConstrainLocationToPlane

Constrain a position vector to the plane constraint, if enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Location | FVector |  |

**Return:** FVector  

### ConstrainNormalToPlane

Constrain a normal vector (of unit length) to the plane constraint, if enabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Normal | FVector |  |

**Return:** FVector  

### SnapUpdatedComponentToPlane

Snap the updated component to the plane constraint, if enabled.

**Return:** void