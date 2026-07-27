---
title: AActor
language: cpp
---

# AActor

Actor is the base class for an Object that can be placed or spawned in a level.
  Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc.
  The other main function of an Actor is the replication of properties and function calls across the network during play.
 
  @see UActorComponent

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| PrimaryActorTick | FActorTickFunction | Primary Actor tick function, which calls TickActor(). 	  Tick functions can be c |
| CustomTimeDilation | float | Allow each actor to run at a different time speed. The DeltaTime for a frame is  |
| bAllowBPReceiveTickEvent | bool | If true, bp tick will be called , otherwise skipped |
| TickAdapterInterval | uint8 |  |
| bTickAdapterRqrMainFrame | uint8 |  |
| bHidden | uint8 | Allows us to only see this Actor in the Editor, and not in the actual game. 	  @ |
| bSupportSuspendTick | uint8 |  |
| bConsideredHidden | uint8 |  |
| bNetTemporary | uint8 | If true, when the actor is spawned it will be sent to the client but receive no  |
| bNetStartup | uint8 | If true, this actor was loaded directly from the map, and for networking purpose |
| bOnlyRelevantToOwner | uint8 | If true, this actor is only relevant to its owner. If this flag is changed durin |
| bOwningSpecificNetConsideration | uint8 | If true, this actor is considered for replication in an owning-specific semantic |
| bRegionBasedNetConsideration | uint8 | If true, this actor is considered for replication in region-based semantics. |
| bMRegionBasedNetConsideration | uint8 | If true, this actor is considered for replication in Mregion-based semantics. |
| bMRegionStatic | uint8 |  |
| bFastDistBasedNetRelevancy | uint8 | If true, this actor is checked for relevancy by fast distance-based calculation. |
| bGroupBasedNetRelevancy | uint8 | If true, this actor is checked for relevancy by relevancy group first. |
| bLazyNetReplication | uint8 | If true, this actor is only replicated by calling ForceNetUpdate. |
| bClientSimulatedRelevancy | uint8 | NOTE: Mark "Client Simulated Relevancy" for ob  replay 	 @see SetActorSimulatedR |
| bCheckAllRelyOnAttachment | uint8 |  |
| bAlwaysRelevant | uint8 | Always relevant for network (overrides bOnlyRelevantToOwner). |
| bForceOwnedMeshAlwaysRefreshBones | uint8 |  |
| bTearOff | uint8 | If true, this actor is no longer replicated to new clients, and is "torn off" (b |
| bExchangedRoles | uint8 | Whether we have already exchanged RoleRemoteRole on the client, as when removing |
| bNetLoadOnClient | uint8 | This actor will be loaded on network clients during map load |
| bNetUseOwnerRelevancy | uint8 | If actor has valid Owner, call Owner's IsNetRelevantFor and GetNetPriority |
| bBlockInput | uint8 | If true, all input on the stack below this actor will not be considered |
| bCanBeBaseForCharacter | uint8 | If true, all input on the stack below this actor will not be considered |
| bAllowTickBeforeBeginPlay | uint8 | Whether we allow this Actor to tick before it receives the BeginPlay event. 	  N |
| bCustomHandlingNetworkSubobjectDeletion | uint8 |  |
| bReplicates | uint8 | If true, this actor will replicate to remote machines 	  @see SetReplicates() |
| RemoteRole | TEnumAsByte < enum ENetRole > | Describes how much control the remote machine has over the actor. |
| Owner | AActor * | Owner of this Actor, used primarily for replication (bNetUseOwnerRelevancy & bOn |
| bReplicateMovement | uint8 | If true, replicate movementlocation related properties. 	  Actor must also be se |
| bActorEnableCollision | uint8 | Enables any collision on this actor. 	  @see SetActorEnableCollision(), GetActor |
| bEnableDeferredConstructComponent | uint8 |  |
| bUseSpawnReplicatedActorMaxFrameDelayFromConfig | uint8 |  |
| PendingConstructComponents | TArray < FDeferedComponentUnit > |  |
| PreSCSComponentsBeforeDeferContruction | TArray < UActorComponent * > |  |
| AsyncReplicatedActorSpawnDistA | float |  |
| AsyncReplicatedActorSpawnDistB | float |  |
| SpawnReplicatedActorMaxFrameDelayFromConfig | int32 |  |
| ScriptNetworkReplicatedPropertyWrapper | FScriptNetworkReplicatedPropertyWrapper |  |
| NetDriverName | FName | Used to specify the net driver to replicate on (NAME_None || NAME_GameNetDriver  |
| ReplicatedMovement | FRepMovement | Used for replication of our RootComponent's position and velocity |
| InitialLifeSpan | float | How long this Actor lives before dying, 0=forever. Note this is the INITIAL valu |
| AttachmentReplication | FRepAttachment | Used for replicating attachment of this actor's RootComponent to another actor.  |
| Role | TEnumAsByte < enum ENetRole > | Describes how much control the local machine has over the actor. |
| NetDormancy | TEnumAsByte < enum ENetDormancy > | Dormancy setting for actor to take itself off of the replication list without be |
| AutoReceiveInput | TEnumAsByte < EAutoReceiveInput :: Type > | Automatically registers this actor to receive input from a player. |
| InputPriority | int32 | The priority of this input component when pushed in to the stack. |
| InputComponent | UInputComponent * | Component that handles input for this actor, if input is enabled. |
| NetCullDistanceSquared | float | Square of the max distance from the client's viewpoint that this actor is releva |
| NetCullFactorSquared | float | NetCullDistanceSquared Factor for Connection |
| OBRelevantFactor | float |  |
| NetTag | int32 | Internal - used by UWorld::ServerTickClients() |
| NetConsiderFrequency | float | How often (per second) this actor enters consider list, should be greater than o |
| NetUpdateFrequency | float | How often (per second) this actor will be checked for replication, used to deter |
| MinNetUpdateFrequency | float | Used to determine what rate to throttle down to when replicated properties are c |
| NetUpdateJumpFrame | int32 |  |
| NetPriority | float | Priority for this actor when checking for replication in a low bandwidth or satu |
| bAutoDestroyWhenFinished | uint8 | If true then destroy self when "finished", meaning all relevant components repor |
| bCanBeDamaged | uint8 | Whether this actor can take damage. Must be true for damage events (e.g. Receive |
| bCanNotifyDamager | uint8 | Whether this actor can Notify damager. Must be true for notify damager events (P |
| bRepParentUpdatePhx | uint8 |  |
| bActorIsBeingDestroyed | uint8 | Set when actor is about to be deleted. |
| bCollideWhenPlacing | uint8 | This actor collides with the world when placing in the editor, even if RootCompo |
| bFindCameraComponentWhenViewTarget | uint8 | If true, this actor should search for an owned camera component to view through  |
| bRelevantForNetworkReplays | uint8 | If true, this actor will be replicated to network replays (default is true) |
| bForcedRelevancyCheckForReplay | uint8 |  |
| bLowUpdateRateForReplay | uint8 |  |
| bGenerateOverlapEventsDuringLevelStreaming | uint8 | If true, this actor will generate overlap events when spawned as part of level s |
| bCanCachedInWorldSpecialActorList | uint8 |  |
| bShouldDumpCallstackWhenMovingfast | uint8 |  |
| bCanBeInCluster | uint8 | If true, this actor can be put inside of a GC Cluster to improve Garbage Collect |
| bAllowReceiveTickEventOnDedicatedServer | uint8 | If false, the Blueprint ReceiveTick() event will be disabled on dedicated server |
| bActorSeamlessTraveled | uint8 | Indicates the actor was pulled through a seamless travel. |
| bIgnoresOriginShifting | uint8 | Whether this actor should not be affected by world origin shifting. |
| bEnableAutoLODGeneration | uint8 | If true, and if World setting has bEnableHierarchicalLOD equal to true, then it  |
| SpawnCollisionHandlingMethod | ESpawnActorCollisionHandlingMethod | Controls how to handle spawning this actor in a situation where it's colliding w |
| CollisionCheckMoveDisStep | float |  |
| CollisionCheckMoveDegreeStep | float |  |
| CollisionCheckCircleRadius | float |  |
| Instigator | APawn * | Pawn responsible for damage caused by this actor. |
| Children | TArray < AActor * > | Array of Actors whose Owner is this actor |
| RootComponent | USceneComponent * | Collision primitive that defines the transform (location, rotation, scale) of th |
| ControllingMatineeActors | TArray < AMatineeActor * > | The matinee actors that control this actor. |
| Layers | TArray < FName > | Layer's the actor belongs to.  This is outside of the editoronly data to allow h |
| ParentComponent | TWeakObjectPtr < UChildActorComponent > | The UChildActorComponent that owns this Actor. |
| Tags | TArray < FName > | Array of tags that can be used for grouping and categorizing. |
| DynamicTags | TArray < FName > |  |
| BlueprintCreatedComponents | TArray < UActorComponent * > | Array of ActorComponents that are created by blueprints and serialized per-insta |
| InstanceComponents | TArray < UActorComponent * > | Array of ActorComponents that have been added by the user on a per-instance basi |
| BackupRestoreIdentifier | int64 |  |
| NeedsBackupStates | uint8 |  |
| bSkipNewDuplicateOwnedComponents | uint8 | If you call CreateComponentFromTemplate on an actor which already owns a compone |
| bCanBeNetContainer | uint8 |  |
| bDonotAsSubActor | uint8 |  |
| DeformEffectType | TEnumAsByte < enum EDeformEffectType > |  |
| bBlockLandscapeDeform | bool | If this actor will block any overlap deform. |
| bRemoveStaticChildActorComp | bool |  |
| InputConsumeOption_DEPRECATED | TEnumAsByte < enum EInputConsumeOptions > |  |
| ExportActorInLevel | bool | 在编辑器获取level里面actor的位置和朝向, 通过命令行方式导出到一个lua表格. feishen, 20210406 |
| PivotOffset | FVector | Local space pivot offset for the actor |
| ParentComponentActor_DEPRECATED | TWeakObjectPtr < AActor > | The Actor that owns the UChildActorComponent that owns this Actor. |
| GroupActor | AActor * | The group this actor is a part of. |
| SpriteScale | float | The scale to apply to any billboard components in editor builds (happens in any  |
| ActorLabel | FString | The friendly name for this actor, displayed in the editor.  You should always us |
| FolderPath | FName | The folder path of this actor in the world (empty=root,  separated) |
| bActorLabelEditable | uint8 |  |
| bHiddenEd | uint8 | Whether this actor is hidden within the editor viewport. |
| bEditable | uint8 | Whether the actor can be manipulated by editor operations. |
| bListedInSceneOutliner | uint8 | Whether this actor should be listed in the scene outliner. |
| bIsEditorPreviewActor | uint8 | True if this actor is the preview actor dragged out of the content browser |
| bHiddenEdLayer | uint8 | Whether this actor is hidden by the layer browser. |
| bHiddenEdTemporary | uint8 | Whether this actor is temporarily hidden within the editor; used for showhideetc |
| bHiddenEdLevel | uint8 | Whether this actor is hidden by the level browser. |
| bLockLocation | uint8 | If true, prevents the actor from being moved in the editor viewport. |
| HiddenEditorViews | uint64 | Bitflag to represent which views this actor is hidden in, via per-view layer vis |
| bActorCoastline | uint8 |  |

## Functions

### GetToString

**Return:** FString 

### SetForceOwnedMeshAlwaysRefreshBones

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bAlwaysRefreshBones | bool |  |

**Return:** void  

### OnRep_ReplicateMovement

Called on client when updated bReplicateMovement value is received for this actor.

**Return:** void 

### TearOff

Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true.

**Return:** void 

### OnRep_Role

**Return:** void 

### OnRep_RemoteRole

**Return:** void 

### OnRep_Hidden

**Return:** void 

### OnRep_TearOff

**Return:** void 

### OnRep_CanBeDamaged

**Return:** void 

### OnRep_Owner

**Return:** void 

### TickConstructComponentWithTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OneFrameConstructTimeMS | float  |  |
| bCreateImmediately | bool |  |

**Return:** float  

### OnRep_ScriptNetworkReplicatedPropertyWrapper

**Return:** void 

### CallSubObjectLuaOnRep

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InObject | UObject * |  |

**Return:** void  

### ServerSendScriptNetworkRemoteContent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | FScriptNetworkRemoteContent & |  |

**Return:** void  

### ServerSendScriptNetworkRemoteContent_Unreliable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | FScriptNetworkRemoteContent & |  |

**Return:** void  

### ClientSendScriptNetworkRemoteContent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | FScriptNetworkRemoteContent & |  |

**Return:** void  

### ClientSendScriptNetworkRemoteContent_Unreliable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | FScriptNetworkRemoteContent & |  |

**Return:** void  

### ReceiveScriptNetworkRemoteContent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | FScriptNetworkRemoteContent & |  |

**Return:** void  

### SetReplicates

Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well.
	  Properties flagged for replication will update on clients if they change on the server.
	  Internally changes the RemoteRole property and handles the cases where the actor needs to be added to the network actor list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInReplicates | bool | Whether this Actor replicates to network clients. |

**Return:** void  

### SetReplicateMovement

Set whether this actor's movement replicates to network clients.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInReplicateMovement | bool | Whether this Actor's movement replicates to clients. |

**Return:** void  

### GetLocalRole

Returns how much control the local machine has over this actor.

**Return:** ENetRole 

### GetRemoteRole

Returns how much control the remote machine has over this actor.

**Return:** ENetRole 

### GetRole

**Return:** ENetRole 

### OnRep_AttachmentReplication

Called on client when updated AttachmentReplication value is received for this actor.

**Return:** void 

### OnRep_Instigator

Called on clients when Instigator is replicated.

**Return:** void 

### AddDynamicTag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tag | FName |  |

**Return:** void  

### RemoveDynamicTag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tag | FName |  |

**Return:** void  

### EnableInput

Pushes this actor on to the stack of input being handled by a PlayerController.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * | The PlayerController whose input events we want to receive. |

**Return:** void  

### DisableInput

Removes this actor from the stack of input being handled by a PlayerController.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerController | APlayerController * | The PlayerController whose input events we no longer want to receive. If null, this actor will stop receiving input from all PlayerControllers. |

**Return:** void  

### GetInputAxisValue

Gets the value of the input axis if input is enabled for this actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputAxisName | FName |  |

**Return:** float  

### GetInputAxisKeyValue

Gets the value of the input axis key if input is enabled for this actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputAxisKey | FKey |  |

**Return:** float  

### GetInputVectorAxisValue

Gets the value of the input axis key if input is enabled for this actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputAxisKey | FKey |  |

**Return:** FVector  

### GetInstigator

Returns the instigator for this actor, or NULL if there is none.

**Return:** APawn * 

### GetInstigatorController

Returns the instigator's controller for this actor, or NULL if there is none.

**Return:** AController * 

### GetTransform

Get the actor-to-world transform.

**Return:** FTransform The transform that transforms from actor space to world space.

### K2_GetActorLocation

Returns the location of the RootComponent of this Actor

**Return:** FVector 

### K2_SetActorLocation

Move the Actor to the specified location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | The new location to move the Actor to. |
| bSweep | bool  | Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | The hit result from the move if swept. |
| bTeleport | bool | Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** bool  Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept).

### K2_GetActorRotation

Returns rotation of the RootComponent of this Actor.

**Return:** FRotator 

### GetActorForwardVector

Get the forward (X) vector (length 1.0) from this Actor, in world space.

**Return:** FVector 

### GetActorUpVector

Get the up (Z) vector (length 1.0) from this Actor, in world space.

**Return:** FVector 

### GetActorRightVector

Get the right (Y) vector (length 1.0) from this Actor, in world space.

**Return:** FVector 

### GetActorBounds

Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOnlyCollidingComponents | bool  | If true, will only return the bounding box for components with collision enabled. |
| Origin | FVector &  |  |
| BoxExtent | FVector & |  |

**Return:** void  

### K2_GetRootComponent

Returns the RootComponent of this Actor

**Return:** USceneComponent * 

### GetVelocity

Returns velocity (in cms (Unreal Unitssecond) of the rootcomponent if it is either using physics or has an associated MovementComponent

**Return:** FVector 

### K2_SetActorRotation

Set the Actor's rotation instantly to the specified rotation.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator  | The new rotation for the Actor. |
| bTeleportPhysics | bool | Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** bool  Whether the rotation was successfully set.

### K2_SetActorLocationAndRotation

Move the actor instantly to the specified location and rotation.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  | The new location to teleport the Actor to. |
| NewRotation | FRotator  | The new rotation for the Actor. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | The hit result from the move if swept. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** bool  Whether the rotation was successfully set.

### SetActorScale3D

Set the Actor's world-space scale.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScale3D | FVector |  |

**Return:** void  

### GetActorScale3D

Returns the Actor's world-space scale.

**Return:** FVector 

### GetDistanceTo

Returns the distance from this Actor to OtherActor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### GetSquaredDistanceTo

Returns the squared distance from this Actor to OtherActor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### GetHorizontalDistanceTo

Returns the distance from this Actor to OtherActor, ignoring Z.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### GetVerticalDistanceTo

Returns the distance from this Actor to OtherActor, ignoring XY.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### GetDotProductTo

Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### GetHorizontalDotProductTo

Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherActor | AActor * |  |

**Return:** float  

### K2_AddActorWorldOffset

Adds a delta to the location of this actor in world space.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaLocation | FVector  | The change in location. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  | The hit result from the move if swept. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddActorWorldRotation

Adds a delta to the rotation of this actor in world space.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaRotation | FRotator  | The change in rotation. |
| bSweep | bool  |  Whether to sweep to the target rotation (not currently supported for rotation). |
| SweepHitResult | FHitResult &  | The hit result from the move if swept. |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddActorWorldTransform

Adds a delta to the transform of this actor in world space. Scale is unchanged.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTransform | FTransform &  |  |
| bSweep | bool  |  |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  |

**Return:** void  

### K2_SetActorTransform

Set the Actors transform to the specified one.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTransform | FTransform &  | The new transform. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** bool  

### K2_AddActorLocalOffset

Adds a delta to the location of this component in its local reference frame.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaLocation | FVector  |  |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddActorLocalRotation

Adds a delta to the rotation of this component in its local reference frame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaRotation | FRotator  | The change in rotation in local space. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_AddActorLocalTransform

Adds a delta to the transform of this component in its local reference frame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTransform | FTransform &  | The change in transform in local space. |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetActorRelativeLocation

Set the actor's RootComponent to the specified relative location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRelativeLocation | FVector  | New relative location of the actor's root component |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetActorRelativeRotation

Set the actor's RootComponent to the specified relative rotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRelativeRotation | FRotator  | New relative rotation of the actor's root component |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### K2_SetActorRelativeTransform

Set the actor's RootComponent to the specified relative transform

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRelativeTransform | FTransform &  | New relative transform of the actor's root component |
| bSweep | bool  |  Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. |
| SweepHitResult | FHitResult &  |  |
| bTeleport | bool |  Whether we teleport the physics state (if physics collision is enabled for this object). |

**Return:** void  

### SetActorRelativeScale3D

Set the actor's RootComponent to the specified relative scale 3d

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRelativeScale | FVector | New scale to set the actor's RootComponent to |

**Return:** void  

### GetActorRelativeScale3D

Return the actor's relative scale 3d

**Return:** FVector 

### SetActorHiddenInGame

Sets the actor to be hidden in the game

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewHidden | bool | Whether or not to hide the actor and all its components |

**Return:** void  

### SetActorConsideredHidden

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewHidden | bool |  |

**Return:** void  

### SetActorSimulatedRelevancy

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsRelevant | bool |  |

**Return:** void  

### OnActorSimulatedRelevant

NOTE : Callback of Check Actor Relevancy in Client for ob or replay

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsRelevant | bool  | : Whether or not relevant for replay view target |
| bConsiderHidden | bool | : Whether or not to hide the actor and all its components |

**Return:** void  

### SetActorEnableCollision

Allows enablingdisabling collision for the whole actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewActorEnableCollision | bool |  |

**Return:** void  

### GetActorEnableCollision

Get current state of collision for the whole actor

**Return:** bool 

### K2_DestroyActor

Destroy the actor

**Return:** void 

### HasAuthority

Returns whether this actor has network authority

**Return:** bool 

### AddComponent

Creates a new component and assigns ownership to the Actor this is
	  called for. Automatic attachment causes the first component created to
	  become the root, and all subsequent components to be attached under that
	  root. When bManualAttachment is set, automatic attachment is
	  skipped and it is up to the user to attach the resulting component (or
	  set it up as the root) themselves.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TemplateName | FName  |   The name of the Component Template to use. |
| bManualAttachment | bool  |  Whether manual or automatic attachment is to be used |
| RelativeTransform | FTransform &  |  The relative transform between the new component and its attach parent (automatic only) |
| ComponentTemplateContext | UObject * | Optional UBlueprintGeneratedClass reference to use to find the template in. If null (or not a BPGC), component is sought in this Actor's class |

**Return:** UActorComponent *  

### K2_DestroyComponent

DEPRECATED - Use Component::DestroyComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | UActorComponent * |  |

**Return:** void  

### K2_AttachRootComponentTo

Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InParent | USceneComponent *  |  |
| InSocketName | FName  |  |
| AttachLocationType | EAttachLocation :: Type  | Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative offset and SnapTo to snap to the new parent. |
| bWeldSimulatedBodies | bool |  |

**Return:** void  

### K2_AttachToComponent

Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | USceneComponent *  |   Parent to attach to. |
| SocketName | FName  |  Optional socket to attach to on the parent. |
| LocationRule | EAttachmentRule  |  |
| RotationRule | EAttachmentRule  |  |
| ScaleRule | EAttachmentRule  |  |
| bWeldSimulatedBodies | bool | Whether to weld together simulated physics bodies. |

**Return:** void  

### K2_AttachRootComponentToActor

Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InParentActor | AActor *  |  |
| InSocketName | FName  |  |
| AttachLocationType | EAttachLocation :: Type  | Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative offset and SnapTo to snap to the new parent. |
| bWeldSimulatedBodies | bool |  |

**Return:** void  

### K2_AttachToActor

Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParentActor | AActor *  |  Actor to attach this actor's RootComponent to |
| SocketName | FName  |  Socket name to attach to, if any |
| LocationRule | EAttachmentRule  |  How to handle translation when attaching. |
| RotationRule | EAttachmentRule  |  How to handle rotation when attaching. |
| ScaleRule | EAttachmentRule  |   How to handle scale when attaching. |
| bWeldSimulatedBodies | bool | Whether to weld together simulated physics bodies. |

**Return:** void  

### SnapRootComponentTo

Snap the RootComponent of this Actor to the supplied Actor's root component, optionally at a named socket. It is not valid to call this on components that are not Registered.
	   If InSocketName == NAME_None, it will attach to origin of the InParentActor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InParentActor | AActor *  |  |
| InSocketName | FName |  |

**Return:** void  

### DetachRootComponentFromParent

Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bMaintainWorldPosition | bool |  |

**Return:** void  

### K2_DetachFromActor

Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LocationRule | EDetachmentRule  |  How to handle translation when detaching. |
| RotationRule | EDetachmentRule  |  How to handle rotation when detaching. |
| ScaleRule | EDetachmentRule |  How to handle scale when detaching. |

**Return:** void  

### ActorHasTag

See if this actor contains the supplied tag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tag | FName |  |

**Return:** bool  

### GetActorTimeDilation

Get CustomTimeDilation - this can be used for input control or speed control for slomo.
	  We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.

**Return:** float 

### AddTickPrerequisiteActor

Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PrerequisiteActor | AActor * |  |

**Return:** void  

### AddTickPrerequisiteComponent

Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PrerequisiteComponent | UActorComponent * |  |

**Return:** void  

### RemoveTickPrerequisiteActor

Remove tick dependency on PrerequisiteActor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PrerequisiteActor | AActor * |  |

**Return:** void  

### RemoveTickPrerequisiteComponent

Remove tick dependency on PrerequisiteComponent.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PrerequisiteComponent | UActorComponent * |  |

**Return:** void  

### GetTickableWhenPaused

Gets whether this actor can tick when paused.

**Return:** bool 

### SetTickableWhenPaused

Sets whether this actor can tick when paused.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bTickableWhenPaused | bool |  |

**Return:** void  

### MakeMIDForMaterial

Allocate a MID for a given parent material.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Parent | UMaterialInterface * |  |

**Return:** UMaterialInstanceDynamic *  

### GetGameTimeSinceCreation

The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.

**Return:** float 

### MakeNoise

Trigger a noise caused by a given Pawn, at a given location.
	  Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent.
	  Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Loudness | float  | The relative loudness of this noise. Usual range is 0 (no noise) to 1 (full volume). If MaxRange is used, this scales the max range, otherwise it affects the hearing range specified by the sensor. |
| NoiseInstigator | APawn *  | Pawn responsible for this noise. Uses the actor's Instigator if NoiseInstigator=NULL |
| NoiseLocation | FVector  | Position of noise source. If zero vector, use the actor's location. |
| MaxRange | float  | Max range at which the sound may be heard. A value of 0 indicates no max range (though perception may have its own range). Loudness scales the range. (Note: not supported for legacy PawnSensingComponent, only for AIPerception) |
| Tag | FName | Identifier for the noise. |

**Return:** void  

### ReceiveBeginPlay

Event when play begins for this actor.

**Return:** void 

### ReceiveReInitForReplay

**Return:** void 

### ReceiveFastForwardFinishedForReplay

**Return:** void 

### ReceiveActorSimulatedRelevant

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsRelevant | bool  |  |
| bConsiderHidden | bool |  |

**Return:** void  

### IsActorBeingDestroyed

**Return:** bool 

### ReceiveAnyDamage

Event when this actor takes ANY damage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Damage | float  |  |
| DamageType | UDamageType *  |  |
| InstigatedBy | AController *  |  |
| DamageCauser | AActor * |  |

**Return:** void