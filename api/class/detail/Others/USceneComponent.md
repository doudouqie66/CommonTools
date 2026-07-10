---
title: USceneComponent
language: cpp
---

# USceneComponent

A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities.
  Useful as a 'dummy' component in the hierarchy to offset others.

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| PhysicsVolume | TWeakObjectPtr < APhysicsVolume > | Physics Volume in which this SceneComponent is located |
| AttachParent | USceneComponent * | What we are currently attached to. If valid, RelativeLocation etc. are used rela |
| AttachSocketName | FName | Optional socket name on AttachParent that we are attached to. |
| AttachChildren | TArray < USceneComponent * > | List of child SceneComponents that are attached to us. |
| ClientAttachedChildren | TArray < USceneComponent * > | Set of attached SceneComponents that were attached by the client so we can fix u |
| RelativeLocation | FVector | Location of the component relative to its parent |
| RelativeRotation | FRotator | Rotation of the component relative to its parent |
| RelativeScale3D | FVector | Non-uniform scaling of the component relative to its parent. 		Note that scaling |
| ComponentToWorld | FTransform | Current transform of the component, relative to the world |
| ComponentVelocity | FVector | Velocity of the component. 	 @see GetComponentVelocity() |
| bComponentToWorldUpdated | uint8 | True if we have ever updated ComponentToWorld based on RelativeLocationRotationS |
| bAbsoluteLocation | uint8 | If RelativeLocation should be considered relative to the world, rather than the  |
| bAbsoluteRotation | uint8 | If RelativeRotation should be considered relative to the world, rather than the  |
| bAbsoluteScale | uint8 | If RelativeScale3D should be considered relative to the world, rather than the p |
| bVisible | uint8 | Whether to completely draw the primitive; if false, the primitive is not drawn,  |
| bHiddenInGame | uint8 | Whether to hide the primitive in game, if the primitive is Visible. |
| bShouldUpdatePhysicsVolume | uint8 | Whether or not the cached PhysicsVolume this component overlaps should be update |
| bBoundsChangeTriggersStreamingDataRebuild | uint8 | If true, a change in the bounds of the component will call trigger a streaming d |
| bUseAttachParentBound | uint8 | If true, this component uses its parents bounds when attached. 	   This can be a |
| bShouldUpdateOverLaps | uint8 |  |
| bForceUpdateChildCompTransform | uint8 |  |
| bEnableUpdateTransformOption | uint8 |  |
| bUpdateTransformOptionConsiderAbsolute | uint8 |  |
| bOpenServerOptLite | uint8 | Simplify server move 		by zoranouyang |
| bShouldUseTeleportMove | uint8 |  |
| bForceFrameInterpolate | uint8 |  |
| bEnableParallelMove | uint8 |  |
| Mobility | TEnumAsByte < EComponentMobility :: Type > | How often this component is allowed to move, used to make various optimizations. |
| DetailMode | TEnumAsByte < enum EDetailMode > | If detail mode is >= system detail mode, primitive won't be rendered. |
| UpdateTransformOption | EUpdateTransformOption |  |
| bIsFppLayerRecursive | uint8 |  |
| bDisableFppLayerRecursive | uint8 |  |
| bAbsoluteTranslation_DEPRECATED | uint8 |  |
| bVisualizeComponent | uint8 |  |
| bVisibilityMayChange | uint8 | Let Editor tool, like pvs, to know whether visibility may change |
| RelativeTranslation_DEPRECATED | FVector |  |

## Functions

### GetBoundsOirgin

**Return:** FVector 

### GetBoundsBoxExtent

**Return:** FVector 

### OnRep_Transform

**Return:** void 

### OnRep_AttachParent

**Return:** void 

### OnRep_AttachChildren

**Return:** void 

### OnRep_AttachSocketName

**Return:** void 

### OnRep_Visibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldValue | bool |  |

**Return:** void  

### K2_SetRelativeLocation

Set the location of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | New location of the component relative to its parent. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetRelativeRotation

Set the rotation of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator  | New rotation of the component relative to its parent |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetRelativeTransform

Set the transform of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTransform | FTransform &  | New transform of the component relative to its parent. |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### GetRelativeTransform

Returns the transform of the component relative to its parent

**Return:** FTransform 

### ResetRelativeTransform

Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1.

**Return:** void 

### SetRelativeScale3D

Set the non-uniform scale of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScale3D | FVector |  |

**Return:** void  

### K2_AddRelativeLocation

Adds a delta to the translation of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaLocation | FVector  | Change in location of the component relative to its parent |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddRelativeRotation

Adds a delta the rotation of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaRotation | FRotator  | Change in rotation of the component relative to is parent. |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddLocalOffset

Adds a delta to the location of the component in its local reference frame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaLocation | FVector  | Change in location of the component in its local reference frame. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddLocalRotation

Adds a delta to the rotation of the component in its local reference frame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaRotation | FRotator  | Change in rotation of the component in its local reference frame. |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddLocalTransform

Adds a delta to the transform of the component in its local reference frame. Scale is unchanged.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTransform | FTransform &  | Change in transform of the component in its local reference frame. Scale is unchanged. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetWorldLocation

Put this component at the specified location in world space. Updates relative location to achieve the final world location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | New location in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetWorldRotation

Put this component at the specified rotation in world space. Updates relative rotation to achieve the final world rotation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator  | New rotation in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### SetWorldScale3D

Set the relative scale of the component to put it at the supplied scale in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScale | FVector | New scale in world space for this component. |

**Return:** void  

### K2_SetWorldTransform

Set the transform of the component in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTransform | FTransform &  | New transform in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddWorldOffset

Adds a delta to the location of the component in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaLocation | FVector  | Change in location in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddWorldRotation

Adds a delta to the rotation of the component in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaRotation | FRotator  | Change in rotation in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination (currently not supported for rotation). |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddWorldTransform

Adds a delta to the transform of the component in world space. Scale is unchanged.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTransform | FTransform &  | Change in transform in world space for the component. Scale is unchanged. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_GetComponentLocation

Return location of the component, in world space

**Return:** FVector 

### K2_GetComponentRotation

Returns rotation of the component, in world space.

**Return:** FRotator 

### K2_GetComponentScale

Returns scale of the component, in world space.

**Return:** FVector 

### K2_GetComponentToWorld

Get the current component-to-world transform for this component

**Return:** FTransform 

### GetForwardVector

Get the forward (X) unit direction vector from this component, in world space.

**Return:** FVector 

### GetUpVector

Get the up (Z) unit direction vector from this component, in world space.

**Return:** FVector 

### GetRightVector

Get the right (Y) unit direction vector from this component, in world space.

**Return:** FVector 

### IsSimulatingPhysics

Returns whether the specified body is currently using physics simulation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** bool  

### IsAnySimulatingPhysics

Returns whether the specified body is currently using physics simulation

**Return:** bool 

### GetAttachParent

Get the SceneComponent we are attached to.

**Return:** USceneComponent * 

### GetAttachSocketName

Get the socket we are attached to.

**Return:** FName 

### GetParentComponents

Gets all parent components up to and including the root component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parents | TArray < USceneComponent * > & |  |

**Return:** void  

### GetNumChildrenComponents

Gets the number of attached children components

**Return:** int32 

### GetChildComponent

Gets the attached child component at the specified location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ChildIndex | int32 |  |

**Return:** USceneComponent *  

### GetChildrenComponents

Gets all the attached child components

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIncludeAllDescendants | bool  | Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.) |
| Children | TArray < USceneComponent * > & | The list of attached child components |

**Return:** void  

### K2_AttachTo

Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InParent | USceneComponent *  |  Parent to attach to. |
| InSocketName | FName  |  Optional socket to attach to on the parent. |
| AttachType | EAttachLocation :: Type  |  How to handle transform when attaching (Keep relative offset, keep world position, etc). |
| bWeldSimulatedBodies | bool | Whether to weld together simulated physics bodies. |

**Return:** bool  True if attachment is successful (or already attached to requested parentsocket), false if attachment is rejected and there is no change in AttachParent.

### K2_AttachToComponent

Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | USceneComponent *  |   Parent to attach to. |
| SocketName | FName  |  Optional socket to attach to on the parent. |
| LocationRule | EAttachmentRule  |  How to handle translation when attaching. |
| RotationRule | EAttachmentRule  |  How to handle rotation when attaching. |
| ScaleRule | EAttachmentRule  |   How to handle scale when attaching. |
| bWeldSimulatedBodies | bool | Whether to weld together simulated physics bodies. |

**Return:** bool  True if attachment is successful (or already attached to requested parentsocket), false if attachment is rejected and there is no change in AttachParent.

### SnapTo

Zeroes out the relative transform of the component, and calls AttachTo(). Useful for attaching directly to a scene component or socket location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InParent | USceneComponent *  |  |
| InSocketName | FName |  |

**Return:** bool  

### DetachFromParent

Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bMaintainWorldPosition | bool  | If true, update the relative location of the component to keep its world position the same |
| bCallModify | bool |  If true, call Modify() on the component and the current attach parent component |

**Return:** void  

### K2_DetachFromComponent

Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocationRule | EDetachmentRule  |  How to handle translations when detaching. |
| RotationRule | EDetachmentRule  |  How to handle rotation when detaching. |
| ScaleRule | EDetachmentRule  |   How to handle scales when detaching. |
| bCallModify | bool |  If true, call Modify() on the component and the current attach parent component |

**Return:** void  

### GetAllSocketNames

Gets the names of all the sockets on the component.

**Return:** TArray < FName > Get the names of all the sockets on the component.

### GetSocketTransform

Get world-space socket transform.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName  | Name of the socket or the bone to get the transform |
| TransformSpace | ERelativeTransformSpace |  |

**Return:** FTransform  Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

### GetSocketLocation

Get world-space socket or bone location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName | Name of the socket or the bone to get the transform |

**Return:** FVector  Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

### GetSocketRotation

Get world-space socket or bone  FRotator rotation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName | Name of the socket or the bone to get the transform |

**Return:** FRotator  Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

### GetSocketQuaternion

Get world-space socket or bone FQuat rotation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName | Name of the socket or the bone to get the transform |

**Return:** FQuat  Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.

### GetSocketScale

Get world-space socket or bone scale.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName | Name of the socket or the bone to get the scale |

**Return:** FVector  Socket scale in world space if socket if found. Otherwise it will return component's scale in world space.

### DoesSocketExist

return true if socket with the given name exists

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName | Name of the socket or the bone to get the transform |

**Return:** bool  true if the socket with the given name exists. Otherwise, return false

### GetComponentVelocity

Get velocity of the component: either ComponentVelocity, or the velocity of the physics body if simulating physics.

**Return:** FVector Velocity of the component

### IsVisible

Is this component visible or not in game

**Return:** bool true if visible

### SetVisibility

Set visibility of the component, if during game use this to turn onoff

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewVisibility | bool  |  |
| bPropagateToChildren | bool  |  |
| bForceNoPropagate | bool |  |

**Return:** void  

### ToggleVisibility

Toggle visibility of the component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bPropagateToChildren | bool |  |

**Return:** void  

### SetHiddenInGame

Changes the value of HiddenGame.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewHidden | bool  | - The value to assign to HiddenGame. |
| bPropagateToChildren | bool |  |

**Return:** void  

### IsForceFrameInterpolate

**Return:** bool 

### SetForceFrameInterpolate

set bForceDynamic

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InForceFrameInterpolate | bool |  |

**Return:** void  

### GetComponentTransformViewTranslatedBP

**Return:** FTransform 

### GetComponentLocal

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| localTransform | FTransform & |  |

**Return:** FTransform  

### GetPhysicsVolume

Get the PhysicsVolume overlapping this component.

**Return:** APhysicsVolume * 

### K2_SetRelativeLocationAndRotation

Set the location and rotation of the component relative to its parent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | New location of the component relative to its parent. |
| NewRotation | FRotator  | New rotation of the component relative to its parent. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### SetAbsolute

Set which parts of the relative transform should be relative to parent, and which should be relative to world

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewAbsoluteLocation | bool  |  |
| bNewAbsoluteRotation | bool  |  |
| bNewAbsoluteScale | bool |  |

**Return:** void  

### IsAbsoluteLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ContainsParent | bool |  |

**Return:** bool  

### K2_SetWorldLocationAndRotation

Set the relative location and rotation of the component to put it at the supplied pose in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | New location in world space for the component. |
| NewRotation | FRotator  | New rotation in world space for the component. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | Hit result from any impact if sweep is true. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetMobility

Set how often this component is allowed to move during runtime. Causes a component re-register if the component is already registered

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMobility | EComponentMobility :: Type |  |

**Return:** void  

### SetFppLayerRecursive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIsFppLayer | bool |  |

**Return:** void  

### SetDisableFppLayerRecursive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDisable | bool |  |

**Return:** void