---
title: USpringArmComponent
language: cpp
---

# USpringArmComponent

This component tries to maintain its children at a fixed distance from the parent,
  but will retract the children if there is a collision, and spring back when there is no collision.
 
  Example: Use as a 'camera boom' to keep the follow camera for a player from colliding into the world.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| TargetArmLength | float | Natural length of the spring arm when there are no collisions |
| SocketOffset | FVector | offset at end of spring arm; use this instead of the relative offset of the atta |
| TargetOffset | FVector | Offset at start of spring, applied in world space. Use this if you want a world- |
| ProbeSize | float | How big should the query probe sphere be (in unreal units) |
| ProbeChannel | TEnumAsByte < ECollisionChannel > | Collision channel of the query probe (defaults to ECC_Camera) |
| bDoCollisionTest | uint32 | If true, do a collision test using ProbeChannel and ProbeSize to prevent camera  |
| bUsePawnControlRotation | uint32 | If this component is placed on a pawn, should it use the viewcontrol rotation of |
| bInheritPitch | uint32 | Should we inherit pitch from parent component. Does nothing if using Absolute Ro |
| bInheritYaw | uint32 | Should we inherit yaw from parent component. Does nothing if using Absolute Rota |
| bInheritRoll | uint32 | Should we inherit roll from parent component. Does nothing if using Absolute Rot |
| bEnableCameraLag | uint32 | If true, camera lags behind target position to smooth its movement. 	  @see Came |
| bEnableCameraRotationLag | uint32 | If true, camera lags behind target rotation to smooth its movement. 	  @see Came |
| bUseCameraLagSubstepping | uint32 | If bUseCameraLagSubstepping is true, sub-step camera damping so that it handles  |
| bDrawDebugLagMarkers | uint32 | If true and camera location lag is enabled, draws markers at the camera target ( |
| CameraLagSpeed | float | If bEnableCameraLag is true, controls how quickly camera reaches target position |
| CameraRotationLagSpeed | float | If bEnableCameraRotationLag is true, controls how quickly camera reaches target  |
| CameraLagMaxTimeStep | float | Max time step used when sub-stepping camera lag. |
| CameraLagMaxDistance | float | Max distance the camera target may lag behind the current location. If set to ze |
| IgnoredActors | TArray < AActor * > |  |
| CacheHit | FHitResult |  |

## Functions

### GetTargetRotation

Get the target rotation we inherit, used as the base target for the boom rotation.
	  This is derived from attachment to our parent and considering the UsePawnControlRotation and absolute rotation flags.

**Return:** FRotator 

### SetActive

Sets whether the component is active or not

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewActive | bool  | - The new active state of the component |
| bReset | bool |  |

**Return:** void  

### UpdateDesiredArmLocationCustom

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDoTrace | bool  |  |
| bDoLocationLag | bool  |  |
| bDoRotationLag | bool  |  |
| DeltaTime | float |  |

**Return:** void  

### GetExtraIgnoreActors

**Return:** TArray < AActor * > 

### GetExtraIgnoreCompoents

**Return:** TArray < UPrimitiveComponent * >