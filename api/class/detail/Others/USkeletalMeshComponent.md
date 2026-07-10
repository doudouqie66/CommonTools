---
title: USkeletalMeshComponent
language: cpp
---

# USkeletalMeshComponent

SkeletalMeshComponent is used to create an instance of an animated SkeletalMesh asset.
 
  @see USkeletalMesh

> Inheritance: USkinnedMeshComponent -> IInterface_CollisionDataProvider

## Variables

| Name | Type | Description |
|------|------|-------------|
| AnimationMode | TEnumAsByte < EAnimationMode :: Type > | Animation 	  	 @Todo anim: Matinee related data start - this needs to be replace |
| AnimBlueprintGeneratedClass | UAnimBlueprintGeneratedClass * |  |
| AnimClass | TSubclassOf < UAnimInstance > | The AnimBlueprint class to use. Use 'SetAnimInstanceClass' to change at runtime. |
| bAutoInitAnimInstance | bool | The AnimBlueprint class to use. Use 'SetAnimInstanceClass' to change at runtime. |
| AnimScriptInstance | UAnimInstance * | The active animation graph program instance. |
| SubInstances | TArray < UAnimInstance * > | Any running sub anim instances that need to be updates on the game thread |
| NewSubInstances | TArray < UAnimInstance * > |  |
| DirtySubInstances | TArray < UAnimInstance * > |  |
| StopTickSubInstances | TArray < UAnimInstance * > |  |
| PostProcessAnimInstance | UAnimInstance * | An instance created from the PostPhysicsBlueprint property of the skeletal mesh  |
| AnimationData | FSingleAnimationPlayData |  |
| CachedBoneSpaceTransforms | TArray < FTransform > | Cached BoneSpaceTransforms for Update Rate optimization. |
| CachedComponentSpaceTransforms | TArray < FTransform > | Cached SpaceBases for Update Rate optimization. |
| GlobalAnimRateScale | float | Used to scale speed of all animations on this skeletal mesh. |
| UseAsyncScene | EDynamicActorScene | The simulation scene to use for this instance. By default we use what's in the p |
| bHasValidBodies | uint32 | If true, there is at least one body in the current PhysicsAsset with a valid bon |
| KinematicBonesUpdateType | TEnumAsByte < EKinematicBonesUpdateToPhysics :: Type > | If we are running physics, should we update non-simulated bones based on the ani |
| UpdateKinematicBonesRate | int32 |  |
| PhysicsTransformUpdateMode | TEnumAsByte < EPhysicsTransformUpdateMode :: Type > | Whether physics simulation updates component transform. |
| bBlendPhysics | uint32 | Enables blending in of physics bodies whether Simulate or not |
| bEnablePhysicsOnDedicatedServer | uint32 | If true, simulate physics for this component on a dedicated server. 	   This sho |
| bEnableCreatePhysicsOnDedicatedServer | uint32 |  |
| bNeedUpdatePhysicsTickRegisteredState | bool |  |
| bUpdateJointsFromAnimation | uint32 | If we should pass joint position to joints each frame, so that they can be used  |
| bDisableClothSimulation | uint32 | Disable cloth simulation and play original animation without simulation |
| bAllowAnimCurveEvaluation | uint32 | Disable animation curves for this component. If this is set true, no curves will |
| bDisableAnimCurves_DEPRECATED | uint32 | DEPRECATED. Use bAllowAnimCurveEvaluation instead |
| DisallowedAnimCurves | TArray < FName > | You can choose to disable certain curves if you prefer. 	  This is transient cur |
| bCollideWithEnvironment | uint32 | can't collide with part of environment if total collision volumes exceed 16 caps |
| bCollideWithAttachedChildren | uint32 | can't collide with part of attached children if total collision volumes exceed 1 |
| bLocalSpaceSimulation | uint32 | It's worth trying this option when you feel that the current cloth simulation is |
| bClothMorphTarget | uint32 | cloth morph target option 	  This option will be applied only before playing bec |
| bResetAfterTeleport | uint32 | reset the clothing after moving the clothing position (called teleport) |
| ClothBlendWeight | float | weight to blend between simulated results and key-framed positions 	  if weight  |
| RootBoneTranslation | FVector | Offset of the root bone from the reference pose. Used to offset bounding box. |
| bDeferMovementFromSceneQueries | uint32 | Optimization 	  	  Whether animation and world transform updates are deferred. I |
| bNoSkeletonUpdate | uint32 | Skips Ticking and Bone Refresh. |
| bPauseAnims | uint32 | pauses this component's animations (doesn't tick them, but still refreshes bones |
| bUseRefPoseOnInitAnim | bool | On InitAnim should we set to ref pose (if false use first tick of animation data |
| bEnablePerPolyCollision | uint32 | Uses skinned data for collision data. |
| BodySetup | UBodySetup * | Used for per poly collision. In 99% of cases you will be better off using a Phys |
| bForceRefpose | bool | Misc 	  	 If true, force the mesh into the reference pose - is an optimization. |
| bOnlyAllowAutonomousTickPose | uint32 | If true TickPose() will not be called from the Component's TickComponent functio |
| bIsAutonomousTickPose | uint32 | True if calling TickPose() from Autonomous networking updates. See ACharacter. |
| bOldForceRefPose | uint32 | If bForceRefPose was set last tick. |
| bShowPrePhysBones | uint32 | Bool that enables debug drawing of the skeleton before it is passed to the physi |
| bRequiredBonesUpToDate | uint32 | If false, indicates that on the next call to UpdateSkelPose the RequiredBones ar |
| bAnimTreeInitialised | uint32 | If true, AnimTree has been initialised. |
| bIncludeComponentLocationIntoBounds | uint32 | If true, the Location of this Component will be included into its bounds calcula |
| bEnableLineCheckWithBounds | uint32 | If true, line checks will test against the bounding box of this skeletal mesh co |
| CachedAnimCurveUidVersion | uint16 | Cache AnimCurveUidVersion from Skeleton and this will be used to identify if it  |
| LineCheckBoundsScale | FVector | If bEnableLineCheckWithBounds is true, scale the bounds by this value before doi |
| OnConstraintBroken | FConstraintBrokenSignature | Notification when constraint is broken. |
| SaveBoneSpaceTransfroms | TArray < FTransform > |  |
| ClothingSimulationFactory | TSubclassOf < UClothingSimulationFactory > | Class of the object responsible for |
| TeleportDistanceThreshold | float | Conduct teleportation if the character's movement is greater than this threshold |
| TeleportRotationThreshold | float | Rotation threshold in degrees, ranging from 0 to 180. 	 Conduct teleportation if |
| bEnableUpdateOverlapsEvent | uint8 |  |
| SequenceToPlay_DEPRECATED | UAnimSequence * |  |
| AnimToPlay_DEPRECATED | UAnimationAsset * |  |
| bDefaultLooping_DEPRECATED | uint32 |  |
| bDefaultPlaying_DEPRECATED | uint32 |  |
| DefaultPosition_DEPRECATED | float |  |
| DefaultPlayRate_DEPRECATED | float |  |
| LastPoseTickFrame | uint32 |  |
| LastPoseTickTime | float | Keep track of when animation has been ticked to ensure it is ticked only once pe |
| bNeedsQueuedAnimEventsDispatched | bool |  |
| bIsNeedUpdate | bool |  |
| bSkeletalMeshDirty | bool |  |
| BoneRetargetSource | FName |  |
| MeshShiftTransform | FTransform |  |
| MeshShiftRefBone | FName |  |
| MeshShiftAnchorRefBone | FName |  |
| bUseMeshShiftFeature | bool |  |
| bOnlyPartOfShiftRefBoneAsRoot | bool |  |
| MeshShiftCompensationType | EMeshShiftCompensationType |  |
| MeshShiftCompensationBaseSkelComp | TWeakObjectPtr < USkeletalMeshComponent > |  |
| AnimOverrideMeshShiftParam | FMeshShiftParam |  |
| DynamicBoneScaleFeature_Scale3D | FVector |  |
| DynamicBoneScaleFeature_BoneNameList | TArray < FName > |  |
| bUseDynamicBoneScaleFeature | bool |  |
| bIsOverrideScale | bool |  |
| bIsEnableBatchSection | bool | For Dynamic Bone Scale Feature End |
| BatchSectionList | TArray < FDynamicBatchSectionInfo > |  |
| OriginalMaterials | TArray < UMaterialInterface * > |  |
| AnimationBlueprint_DEPRECATED | UAnimBlueprint * | The blueprint for creating an AnimationScript. |
| bUpdateAnimationInEditor | uint32 | If true, this will Tick until disabled |
| BoneRetargetBaseRefMesh | USkeletalMesh * | For Bone Retarget Feature Start |

## Functions

### SetAnimInstanceClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewClass | UClass *  |  |
| bTickAnimationNow | bool |  |

**Return:** void  

### CopyBoneSpaceTransfroms

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputTransforms | TArray < FTransform > |  |

**Return:** void  

### GetBoneSpaceTransfromsForCopy

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Other | USkeletalMeshComponent * |  |

**Return:** TArray < FTransform >  

### GetAnimInstance

Returns the animation instance that is driving the class (if available). This is typically an instance of
	  the class set as AnimBlueprintGeneratedClass (generated by an animation blueprint)
	  Since this instance is transient, it is not safe to be used during construction script

**Return:** UAnimInstance * 

### GetSubAnimInstances

**Return:** TArray < UAnimInstance * > 

### GetNewSubAnimInstances

**Return:** TArray < UAnimInstance * > 

### GetAllSubAnimInstances

**Return:** TArray < UAnimInstance * > 

### GetDirtySubAnimInstances

**Return:** TArray < UAnimInstance * > 

### GetStopTickSubAnimInstances

**Return:** TArray < UAnimInstance * > 

### ClearDirtySubAnimInstances

清理所有脏标记的SubAnimInstance
	  从SubInstances、NewSubInstances、StopTickSubInstances中移除，并调用UninitializeAnimation、PendingDestroy等清理逻辑

**Return:** void 

### AddNewSubAnimInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInstance | UAnimInstance * |  |

**Return:** void  

### AddDirtySubAnimInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInstance | UAnimInstance * |  |

**Return:** void  

### AddStopTickSubAnimInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInstance | UAnimInstance * |  |

**Return:** void  

### GetPostProcessInstance

Returns the active post process instance is one is available. This is set on the mesh that this
	  component is using, and is evaluated immediately after the main instance.

**Return:** UAnimInstance * 

### SetAnimationMode

Below are the interface to control animation when animation mode, not blueprint mode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimationMode | EAnimationMode :: Type |  |

**Return:** void  

### GetAnimationMode

**Return:** EAnimationMode :: Type 

### GetAnimationPosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Animation | UAnimationAsset * |  |

**Return:** float  

### PlayAnimation

Animation play functions
	 
	  These changes status of animation instance, which is transient data, which means it won't serialize with this component
	  Because of that reason, it is not safe to be used during construction script
	  Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAnimToPlay | UAnimationAsset *  |  |
| bLooping | bool |  |

**Return:** void  

### SetAnimation

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAnimToPlay | UAnimationAsset * |  |

**Return:** void  

### Play

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bLooping | bool |  |

**Return:** void  

### Stop

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Return:** void 

### IsPlaying

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Return:** bool 

### SetPosition

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPos | float  |  |
| bFireNotifies | bool |  |

**Return:** void  

### GetPosition

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Return:** float 

### SetPlayRate

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Rate | float |  |

**Return:** void  

### GetPlayRate

Animation play functions
	
	 These changes status of animation instance, which is transient data, which means it won't serialize with this component
	 Because of that reason, it is not safe to be used during construction script
	 Please use OverrideAnimationDatat for construction script. That will override AnimationData to be serialized

**Return:** float 

### OverrideAnimationData

This overrides current AnimationData parameter in the SkeletalMeshComponent. This will serialize when the component serialize
	  so it can be used during construction script. However note that this will override current existing data
	  This can be useful if you'd like to make a blueprint with custom default animation per component
	  This sets single player mode, which means you can't use AnimBlueprint with it

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimToPlay | UAnimationAsset *  |  |
| bIsLooping | bool  |  |
| bIsPlaying | bool  |  |
| Position | float  |  |
| PlayRate | float |  |

**Return:** void  

### SetMorphTarget

Set Morph Target with Name and Value(0-1)
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MorphTargetName | FName  |  |
| Value | float  |  |
| bRemoveZeroWeight | bool | : Used by editor code when it should stay in the active list with zero weight |

**Return:** void  

### ClearMorphTargets

Clear all Morph Target that are set to this mesh

**Return:** void 

### GetMorphTarget

Get Morph target with given name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MorphTargetName | FName |  |

**Return:** float  

### SnapshotPose

Takes a snapshot of this skeletal mesh component's pose and saves it to the specified snapshot.
	  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1
	  and then used it at LOD0 any bones not in LOD1 will use the reference pose

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Snapshot | FPoseSnapshot & |  |

**Return:** void  

### GetClothMaxDistanceScale

GetSet the max distance scale of clothing mesh vertices

**Return:** float 

### SetClothMaxDistanceScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Scale | float |  |

**Return:** void  

### ForceClothNextUpdateTeleport

Used to indicate we should force 'teleport' during the next call to UpdateClothState,
	  This will transform positions and velocities and thus keep the simulation state, just translate it to a new pose.

**Return:** void 

### ForceClothNextUpdateTeleportAndReset

Used to indicate we should force 'teleport and reset' during the next call to UpdateClothState.
	  This can be used to reset it from a bad state or by a teleport where the old state is not important anymore.

**Return:** void 

### SuspendClothingSimulation

Stops simulating clothing, but does not show clothing ref pose. Keeps the last known simulation state

**Return:** void 

### ResumeClothingSimulation

Resumes a previously suspended clothing simulation, teleporting the clothing on the next tick

**Return:** void 

### IsClothingSimulationSuspended

Gets whether or not the clothing simulation is currently suspended

**Return:** bool 

### ResetClothTeleportMode

Reset the teleport mode of a next update to 'Continuous'

**Return:** void 

### BindClothToMasterPoseComponent

If this component has a valid MasterPoseComponent then this function makes cloth items on the slave component
	  take the transforms of the cloth items on the master component instead of simulating separately.

**Return:** void 

### UnbindClothFromMasterPoseComponent

If this component has a valid MasterPoseComponent and has previously had its cloth bound to the
	  MCP, this function will unbind the cloth and resume simulation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bRestoreSimulationSpace | bool | if true and the master pose cloth was originally simulating in world |

**Return:** void  

### SetUpdateAnimationInEditor

Sets whether or not to force tick component in order to update animation and refresh transform for this component
	 This is supported only in the editor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewUpdateState | bool |  |

**Return:** void  

### SetDisableAnimCurves

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInDisableAnimCurves | bool |  |

**Return:** void  

### GetDisableAnimCurves

**Return:** bool 

### SetAllowAnimCurveEvaluation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInAllow | bool |  |

**Return:** void  

### GetAllowedAnimCurveEvaluate

**Return:** bool 

### AllowAnimCurveEvaluation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NameOfCurve | FName  |  |
| bAllow | bool |  |

**Return:** void  

### ResetAllowedAnimCurveEvaluation

By reset, it will allow all the curves to be evaluated

**Return:** void 

### SetAllowedAnimCurvesEvaluation

resets, and then only allow the following list to be alloweddisallowed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| List | TArray < FName > &  |  |
| bAllow | bool |  |

**Return:** void  

### GetTeleportRotationThreshold

Gets the teleportation rotation threshold.
	

**Return:** float Threshold in degrees.

### SetTeleportRotationThreshold

Sets the teleportation rotation threshold.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Threshold | float | Threshold in degrees. |

**Return:** void  

### GetTeleportDistanceThreshold

Gets the teleportation distance threshold.
	

**Return:** float Threshold value.

### SetTeleportDistanceThreshold

Sets the teleportation distance threshold.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Threshold | float | Threshold value. |

**Return:** void  

### SetBodyNotifyRigidBodyCollision

Changes the value of bNotifyRigidBodyCollision for a given body

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewNotifyRigidBodyCollision | bool  | The value to assign to bNotifyRigidBodyCollision |
| BoneName | FName |   Name of the body to turn hit notifies onoff. None implies root body |

**Return:** void  

### SetNotifyRigidBodyCollisionBelow

Changes the value of bNotifyRigidBodyCollision on all bodies below a given bone

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewNotifyRigidBodyCollision | bool  | The value to assign to bNotifyRigidBodyCollision |
| BoneName | FName  |   Name of the body to turn hit notifies on (and below) |
| bIncludeSelf | bool |   Whether to modify the given body (useful for roots with multiple children) |

**Return:** void  

### SetEnableBodyGravity

Enables or disables gravity for the given bone.
	 	NAME_None indicates the root body will be edited.
	 	If the bone name given is otherwise invalid, nothing happens.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnableGravity | bool  | Whether gravity should be enabled or disabled. |
| BoneName | FName |  The name of the bone to modify. |

**Return:** void  

### IsBodyGravityEnabled

Checks whether or not gravity is enabled on the given bone.
	 	NAME_None indicates the root body should be queried.
	 	If the bone name given is otherwise invalid, false is returned.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName | The name of the bone to check. |

**Return:** bool  True if gravity is enabled on the bone.

### SetEnableGravityOnAllBodiesBelow

Enables or disables gravity to all bodies below the given bone.
	   NAME_None indicates all bodies will be edited.
		In that case, consider using UPrimitiveComponent::EnableGravity.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnableGravity | bool  | Whether gravity should be enabled or disabled. |
| BoneName | FName  |  The name of the top most bone. |
| bIncludeSelf | bool | Whether the bone specified should be edited. |

**Return:** void  

### K2_GetClosestPointOnPhysicsAsset

Given a world position, find the closest point on the physics asset. Note that this is independent of collision and welding. This is based purely on animation position

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldPosition | FVector &  |  The point we want the closest point to (i.e. for all bodies in the physics asset, find the one that has a point closest to WorldPosition) |
| ClosestWorldPosition | FVector &  |  |
| Normal | FVector &  |  |
| BoneName | FName &  |  |
| Distance | float & |  |

**Return:** bool  true if we found a closest point

### GetBoneMass

Returns the mass (in kg) of the given bone
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  | Name of the body to return. 'None' indicates root body. |
| bScaleMass | bool | If true, the mass is scaled by the bone's MassScale. |

**Return:** float  

### GetSkeletalCenterOfMass

Returns the center of mass of the skeletal mesh, instead of the root body's location

**Return:** FVector 

### AddForceToAllBodiesBelow

Add a force to all rigid bodies below.
	   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  |  Force vector to apply. Magnitude indicates strength of force. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |
| bAccelChange | bool  | If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no affect). |
| bIncludeSelf | bool | If false, Force is only applied to bodies below but not given bone name. |

**Return:** void  

### AddImpulseToAllBodiesBelow

Add impulse to all single rigid bodies below. Good for one time instant burst.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  | Magnitude and direction of impulse to apply. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body. |
| bVelChange | bool  | If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no affect). |
| bIncludeSelf | bool | If false, Force is only applied to bodies below but not given bone name. |

**Return:** void  

### IsEnableAnimBoneStateDirtyFeature

**Return:** bool 

### SetAllBodiesSimulatePhysics

Set bSimulatePhysics to true for all bone bodies. Does not change the component bSimulatePhysics flag.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewSimulate | bool |  |

**Return:** void  

### SetPhysicsBlendWeight

This is global set up for setting physics blend weight
	  This does multiple things automatically
	  If PhysicsBlendWeight == 1.f, it will enable Simulation, and if PhysicsBlendWeight == 0.f, it will disable Simulation.
	  Also it will respect each body's setup, so if the body is fixed, it won't simulate. Vice versa
	  So if you'd like all bodies to change manually, do not use this function, but SetAllBodiesPhysicsBlendWeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PhysicsBlendWeight | float |  |

**Return:** void  

### SetEnablePhysicsBlending

Disable physics blending of bones

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewBlendPhysics | bool |  |

**Return:** void  

### SetAllBodiesBelowSimulatePhysics

Set all of the bones below passed in bone to be simulated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoneName | FName &  |  |
| bNewSimulate | bool  |  |
| bIncludeSelf | bool |  |

**Return:** void  

### ResetAllBodiesSimulatePhysics

Allows you to reset bodies Simulate state based on where bUsePhysics is set to true in the BodySetup.

**Return:** void 

### SetAllBodiesPhysicsBlendWeight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PhysicsBlendWeight | float  |  |
| bSkipCustomPhysicsType | bool |  |

**Return:** void  

### SetAllBodiesBelowPhysicsBlendWeight

Set all of the bones below passed in bone to be simulated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoneName | FName &  |  |
| PhysicsBlendWeight | float  |  |
| bSkipCustomPhysicsType | bool  |  |
| bIncludeSelf | bool |  |

**Return:** void  

### AccumulateAllBodiesBelowPhysicsBlendWeight

Accumulate AddPhysicsBlendWeight to physics blendweight for all of the bones below passed in bone to be simulated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoneName | FName &  |  |
| AddPhysicsBlendWeight | float  |  |
| bSkipCustomPhysicsType | bool |  |

**Return:** void  

### SetAllMotorsAngularPositionDrive

Enable or Disable AngularPositionDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnableSwingDrive | bool  |  |
| bEnableTwistDrive | bool  |  |
| bSkipCustomPhysicsType | bool |  |

**Return:** void  

### SetAllMotorsAngularVelocityDrive

Enable or Disable AngularVelocityDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnableSwingDrive | bool  |  |
| bEnableTwistDrive | bool  |  |
| bSkipCustomPhysicsType | bool |  |

**Return:** void  

### SetAllMotorsAngularDriveParams

Set Angular Drive motors params for all constraint instances

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSpring | float  |  |
| InDamping | float  |  |
| InForceLimit | float  |  |
| bSkipCustomPhysicsType | bool |  |

**Return:** void  

### SetConstraintProfile

Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset. If profile name is not found the joint is set to use the default constraint profile.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| JointName | FName  |  |
| ProfileName | FName  |  |
| bDefaultIfNotFound | bool |  |

**Return:** void  

### SetConstraintProfileForAll

Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset for all constraints. If profile name is not found the joint is set to use the default constraint profile.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ProfileName | FName  |  |
| bDefaultIfNotFound | bool |  |

**Return:** void  

### FindConstraintBoneName

Find Constraint Name from index
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConstraintIndex | int32 | Index of constraint to look for |

**Return:** FName  Constraint Joint Name

### BreakConstraint

Break a constraint off a Gore mesh.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  | vector of impulse |
| HitLocation | FVector  | location of the hit |
| InBoneName | FName | Name of bone to break constraint for |

**Return:** void  

### SetAngularLimits

Sets the Angular Motion Ranges for a named bone

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoneName | FName  | Name of bone to adjust constraint ranges for |
| Swing1LimitAngle | float  | Size of limit in degrees, 0 means locked, 180 means free |
| TwistLimitAngle | float  | Size of limit in degrees, 0 means locked, 180 means free |
| Swing2LimitAngle | float | Size of limit in degrees, 0 means locked, 180 means free |

**Return:** void  

### GetCurrentJointAngles

Gets the current Angular state for a named bone constraint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoneName | FName  | Name of bone to get constraint ranges for |
| Swing1Angle | float &  | current angular state of the constraint |
| TwistAngle | float &  | current angular state of the constraint |
| Swing2Angle | float & | current angular state of the constraint |

**Return:** void  

### HandleExistingParallelEvaluationTask

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bBlockOnTask | bool  |  |
| bPerformPostAnimEvaluation | bool |  |

**Return:** bool  

### HandleExistingParallelIMPhysicsEvaluationTask

ImmediatePhysics Evaluation Start

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bBlockOnTask | bool |  |

**Return:** bool  

### GetLastPoseTickFrame_BP

Checked whether we have already ticked the pose this frame

**Return:** int64 

### SetNeedUpdateChildTransformsOnFinalizeAnimationUpdate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUpdate | bool |  |

**Return:** void  

### PauseIMSimulation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPauseFrameCount | int32 |  |

**Return:** void  

### MarkMeshShiftFeature

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIsUseShiftFeature | bool  |  |
| InIsOnlyPartOfShiftRefBoneAsRoot | bool  |  |
| InShiftTransform | FTransform &  |  |
| InShiftRefBone | FName  |  |
| InAnchorRefBone | FName |  |

**Return:** void  

### MarkMeshShiftCompensation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMeshShiftCompensationType | EMeshShiftCompensationType  |  |
| InCompensationBaseSkelComp | USkeletalMeshComponent * |  |

**Return:** void  

### AnimOverrideMeshShiftParam_Start

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimMeshShiftParam | FMeshShiftParam & |  |

**Return:** void  

### AnimOverrideMeshShiftParam_Stop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimMeshShiftParam | FMeshShiftParam & |  |

**Return:** void  

### GetRawCurveValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InCurveName | FName & |  |

**Return:** float  

### GetRetargetBoneRelativeTMInBaseRefPose

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTargetBoneName | FName & |  |

**Return:** FTransform  

### SingleNodeInstance_ActiveBoneRetargetFeature

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIsActive | bool  |  |
| InTargetSkelComp | USkeletalMeshComponent * |  |

**Return:** void  

### SingleNodeInstance_OverrideBoneRetargetParam

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIsUseRetargetFeature | bool  |  |
| InIsConsiderMasterPoseRetarget | bool  |  |
| InIsForeceUseBaseSkeletonAsRetargetSource | bool  |  |
| InTargetSkelComp | USkeletalMeshComponent * |  |

**Return:** void  

### IsInitAnimTickDelay

**Return:** bool 

### IsInitRefreshPoseDelay

**Return:** bool 

### DelayInitAnimTick

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InInitAnimTickParam | FDelayInitAnimTickParam & |  |

**Return:** void  

### DelayInitRefreshPose

**Return:** void 

### PerformDelayedInitAnimTick

**Return:** void 

### PerformDelayedInitRefreshPose

**Return:** void