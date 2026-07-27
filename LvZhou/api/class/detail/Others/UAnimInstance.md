---
title: UAnimInstance
language: cpp
---

# UAnimInstance

> Inheritance: UObject -> IObjectPoolInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| CurrentSkeleton | USkeleton * | This is used to extract animation. If Mesh exists, this will be overwritten by M |
| RootMotionMode | TEnumAsByte < ERootMotionMode :: Type > |  |
| bRunUpdatesInWorkerThreads_DEPRECATED | bool | DEPRECATED: No longer used. 	  Allows this anim instance to update its native up |
| bCanUseParallelUpdateAnimation_DEPRECATED | bool | DEPRECATED: No longer used. 	  Whether we can use parallel updates for our anima |
| bUseMultiThreadedAnimationUpdate | bool | Allows this anim instance to update its native update, blend tree, montages and  |
| bWarnAboutBlueprintUsage_DEPRECATED | bool | Selecting this option will cause the compiler to emit warnings whenever a call i |
| bBlueprintSkipUpdate | bool |  |
| bUseBlueprintUpdateAnimation | uint8 |  |
| bUseBlueprintPostEvaluateAnimation | uint8 |  |
| AnimAssets_NoGCRef | TMap < int64 , UAnimationAsset * > |  |
| bQueueMontageEvents | bool | True when Montages are being ticked, and Montage Events should be queued. 	  Whe |
| ForbiddenPlayMontageSlot | TArray < FString > |  |
| ActiveAnimNotifyState | TArray < FAnimNotifyEvent > | Currently Active AnimNotifyState, stored as a copy of the event as we need to 		 |
| bNeedUpdateNotAttributeCurve | bool | 此动画蓝图是否需要更新非Attribute的Curve数据 |
| RefCachedSubAnimInstances | TArray < UAnimInstance * > |  |
| bIsOnlyMasterTriggerNotify | bool |  |
| bIsMaster | bool |  |
| bDynamicDisableBoneRetarget | bool |  |
| CopyPoseFromSkelComp | USkeletalMeshComponent * |  |
| BoneRetargetSource | FName |  |
| bUseBoneStateDirtyFeature | bool |  |
| bBoneStateDirty | bool |  |
| C_InverseRetargetIgnoreBoneList | TArray < int32 > |  |
| FollowedAnimInstance | UAnimInstance * | 记录被跟随者的动画实例   当该指针为nullptr时，代表启用了自身 Proxy 的 Follow 轨道(即FollowGroupArrays开始记录) |
| FollowerAnimInstances | TArray < TWeakObjectPtr < UAnimInstance > > |  |
| ParentAnimInstance | TWeakObjectPtr < UAnimInstance > |  |
| SubAnimInstances | TArray < TWeakObjectPtr < UAnimInstance > > |  |
| SubAnimInstancesTempRef | TArray < UAnimInstance * > |  |
| CachedSwitchNotifySequence | TArray < UAnimSequenceBase * > |  |
| CachedBoneTransformInfoIndex | int64 |  |
| CachedBoneTransformMapAsync | TMap < FName , FCachedBoneTransformInfo > |  |
| CachedBoneTransformMapInGame | TMap < FName , FCachedBoneTransformInfo > |  |
| bIsInPoseUpdate | bool |  |
| bEnableBoneCacheInGameThread | bool |  |
| bEnableFastPathExposedNodeTree | bool |  |
| UpdateConditions | TArray < UAnimInstanceUpdateCondition * > |  |
| bCheckUpdateConditionResult | bool |  |
| bEnableAnimBlueprintSkeletonDifferFromMeshSkeleton | bool |  |
| bEnableFilterForceTriggerNotifyWhenMontageJumpTick | bool |  |
| MultiSubInstanceTransferDefaultPoseIndex | int32 |  |
| bEnableTriggerAnimNotify | bool |  |
| InitNodeSourcePropertyLookupTable | TMap < FName , UProperty * > |  |
| bParentPoseOverride | bool |  |
| bAutoCopyPose | bool |  |
| bHasAvatarSlotEvent | bool |  |
| bRestoreSlotVar | bool |  |
| bSkipSlotRelevanceCheckForNotifies | bool |  |
| bEnableAsyncAnimInstance | bool |  |
| bCanCopyRequiredBones | bool |  |
| PostCompileValidationClassName | FSoftClassPath | Name of Class to do Post Compile Validation. 	 See Class UAnimBlueprintPostCompi |
| BoneRetargetBaseRefMesh | USkeletalMesh * |  |

## Functions

### TryGetPawnOwner

**Return:** APawn * 

### SavePoseSnapshot

Takes a snapshot of the current skeletal mesh component pose & saves it internally.
	  This snapshot can then be retrieved by name in the animation blueprint for blending.
	  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SnapshotName | FName |  |

**Return:** void  

### SnapshotPose

Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot.
	  The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1
	  and then used it at LOD0 any bones not in LOD1 will use the reference pose

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Snapshot | FPoseSnapshot & |  |

**Return:** void  

### GetOwningActor

Returns the owning actor of this AnimInstance

**Return:** AActor * 

### GetOwningComponent

**Return:** USkeletalMeshComponent * 

### BlueprintShouldSkipUpdateAnimation

Executed before the Animation is updated, Check custom condition, whether to skip update

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTimeX | float |  |

**Return:** bool  

### BlueprintInitializeAnimation

Executed when the Animation is initialized

**Return:** void 

### BlueprintUnInitializeAnimation

**Return:** void 

### BlueprintUpdateAnimation

Executed when the Animation is updated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaTimeX | float |  |

**Return:** void  

### BlueprintPostEvaluateAnimation

Executed after the Animation is evaluated

**Return:** void 

### BlueprintBeginPlay

Executed when begin play is called on the owning component

**Return:** void 

### PlaySlotAnimation

SlotAnimation
	 
	 DEPRECATED. Use PlaySlotAnimationAsDynamicMontage instead, it returns the UAnimMontage created instead of time, allowing more control 
	 Play normal animation asset on the slot node. You can only play one asset (whether montage or animsequence) at a time.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | UAnimSequenceBase *  |  |
| SlotNodeName | FName  |  |
| BlendInTime | float  |  |
| BlendOutTime | float  |  |
| InPlayRate | float  |  |
| LoopCount | int32 |  |

**Return:** float  

### PlaySlotAnimationAsDynamicMontage

Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | UAnimSequenceBase *  |  |
| SlotNodeName | FName  |  |
| BlendInTime | float  |  |
| BlendOutTime | float  |  |
| InPlayRate | float  |  |
| LoopCount | int32  |  |
| BlendOutTriggerTime | float  |  |
| InTimeToStartMontageAt | float |  |

**Return:** UAnimMontage *  

### PlaySlotAnimationAsDynamicMontageCustom

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | UAnimSequenceBase *  |  |
| SlotNodeName | FName  |  |
| Extra | FCustomMontageAnimInfo  |  |
| BlendInTime | float  |  |
| BlendOutTime | float  |  |
| InPlayRate | float  |  |
| LoopCount | int32  |  |
| BlendOutTriggerTime | float  |  |
| InTimeToStartMontageAt | float |  |

**Return:** UAnimMontage *  

### SetMatineeAnimPosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetMontage | UAnimMontage *  |  |
| InPosition | float  |  |
| Extra | FCustomMontageAnimInfo  |  |
| Weight | float |  |

**Return:** void  

### StopSlotAnimation

Stops currently playing slot animation slot or all

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendOutTime | float  |  |
| SlotNodeName | FName |  |

**Return:** void  

### IsPlayingSlotAnimation

Return true if it's playing the slot animation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | UAnimSequenceBase *  |  |
| SlotNodeName | FName  |  |
| bcheckTransientPackage | bool |  |

**Return:** bool  

### ForceTriggerAnimEndedEvent

**Return:** void 

### SetMontageCustomSectionsPlayInfo

AnimMontage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| InPlayInfo | TArray < FMontageSectionsPlayInfo > & |  |

**Return:** void  

### ClearMontageCustomSectionsPlayInfo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_Play

Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MontageToPlay | UAnimMontage *  |  |
| InPlayRate | float  |  |
| ReturnValueType | EMontagePlayReturnType  |  |
| InTimeToStartMontageAt | float |  |

**Return:** float  

### Montage_CustomPlay

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MontageToPlay | UAnimMontage *  |  |
| Extra | FCustomMontageAnimInfo  |  |
| InPlayRate | float  |  |
| ReturnValueType | EMontagePlayReturnType  |  |
| InTimeToStartMontageAt | float |  |

**Return:** float  

### Montage_Stop

Stops the animation montage. If reference is NULL, it will stop ALL active montages.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendOutTime | float  |  |
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_StopBySlot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendOutTime | float  |  |
| SlotName | FName |  |

**Return:** void  

### Montage_CustomStop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBlendOutTime | float  |  |
| Extra | FCustomMontageAnimInfo  |  |
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_Pause

Pauses the animation montage. If reference is NULL, it will pause ALL active montages.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_Resume

Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_JumpToSection

Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SectionName | FName  |  |
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_JumpToSectionsEnd

Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SectionName | FName  |  |
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_SetNextSection

Relink new next section AFTER SectionNameToChange in run-time
	 	You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically,
	 	use this function to relink the next section
	 	For example, you can have Start->Loop->Loop->Loop.... but when you want it to end, you can relink
	 	next section of Loop to be End to finish the montage, in which case, it stops looping by Loop->End.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SectionNameToChange | FName  | : This should be the name of the Montage Section after which you want to insert a new next section |
| NextSection | FName  | : new next section |
| Montage | UAnimMontage * |  |

**Return:** void  

### Montage_SetPlayRate

Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| NewPlayRate | float |  |

**Return:** void  

### Montage_ReversePlayByAbsRateAndSlot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FName  |  |
| AbsPlayRate | float |  |

**Return:** void  

### Montage_SetDelayFrame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| DelayFrame | int32 |  |

**Return:** void  

### Montage_IsActive

Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** bool  

### Montage_IsPlaying

Returns true if the animation montage is currently active and playing.
	If reference is NULL, it will return true is ANY montage is currently active and playing.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** bool  

### Montage_IsExisting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** bool  

### MontageGroup_IsPlaying

判断有无某个组下的蒙太奇正在播放

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupName | FName |  |

**Return:** bool  

### Montage_GetCurrentSection

Returns the name of the current animation montage section.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** FName  

### Montage_GetPosition

Get Current Montage Position

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** float  

### Montage_SetPosition

Set position.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| NewPosition | float |  |

**Return:** void  

### Montage_GetIsStopped

return true if Montage is not currently active. (not valid or blending out)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** bool  

### Montage_GetBlendTime

Get the current blend time of the Montage.
	If Montage reference is NULL, it will return the current blend time on the first active Montage found.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** float  

### Montage_GetPlayRate

Get PlayRate for Montage.
	If Montage is not playing, 0 is returned.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage * |  |

**Return:** float  

### IsAnyMontagePlaying

Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.

**Return:** bool 

### GetCurrentActiveMontage

Get a current Active Montage in this AnimInstance.
		Note that there might be multiple Active at the same time. This will only return the first active one it finds.

**Return:** UAnimMontage * 

### GetCurrentActiveMontages

**Return:** TArray < FAnimMontageInstance > 

### GetCurMontageBySlot

Get the UAnimMontage currently running that matches this SlotName.  Will return NULL if no instance is found.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FName |  |

**Return:** UAnimMontage *  

### Montage_GetNextSection

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Montage | UAnimMontage *  |  |
| SectionName | FName |  |

**Return:** FName  

### AddAnimAssetNoGCRef

添加动画资源到非GC引用列表，返回全局唯一ID

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimAsset | UAnimationAsset * |  |

**Return:** int64  

### RemoveAnimAssetNoGCRef

从非GC引用列表移除动画资源（通过ID）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimAssetNoGCID | int64 |  |

**Return:** void  

### RemoveAllAnimAssetNoGCRef

从非GC引用列表移除所有动画资源（通过资源指针）

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimAsset | UAnimationAsset * |  |

**Return:** void  

### ClearAnimAssetsNoGCReferences

清空非GC引用列表

**Return:** void 

### StopAllMontages

Stop all montages that are active

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BlendOut | float |  |

**Return:** void  

### ClearAllMontages

Stop all montages that are active

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BlendOut | float |  |

**Return:** void  

### ClearStoppedMontageInstances

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bClearSubAnim | bool |  |

**Return:** void  

### GetForbiddenPlayMontageSlot

**Return:** TArray < FString > 

### SetForbiddenPlayMontageSlot

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIsAdd | bool  |  |
| SlotName | FString | should be GroupName + SlotName |

**Return:** void  

### SetRootMotionMode

Set RootMotionMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | TEnumAsByte < ERootMotionMode :: Type > |  |

**Return:** void  

### GetInstanceAssetPlayerLength

NOTE: Derived anim getters
	 
	  Anim getter functions can be defined for any instance deriving UAnimInstance.
	  To do this the function must be marked BlueprintPure, and have the AnimGetter metadata entry set to
	  "true". Following the instructions below, getters should appear correctly in the blueprint node context
	  menu for the derived classes
	 
	  A context string can be provided in the GetterContext metadata and can contain any (or none) of the
	  following entries separated by a pipe (|)
	  Transition  - Only available in a transition rule
	  AnimGraph   - Only available in an animgraph (also covers state anim graphs)
	  CustomBlend - Only available in a custom blend graph
	 
	  Anim getters support a number of automatic parameters that will be baked at compile time to be passed
	  to the functions. They will not appear as pins on the graph node. They are as follows:
	  AssetPlayerIndex - Index of an asset player node to operate on, one getter will be added to the blueprint action list per asset node available
	  MachineIndex     - Index of a state machine in the animation blueprint, one getter will be added to the blueprint action list per state machine
	  StateIndex       - Index of a state inside a state machine, also requires MachineIndex. One getter will be added to the blueprint action list per state
	  TransitionIndex  - Index of a transition inside a state machine, also requires MachineIndex. One getter will be added to the blueprint action list per transition
	 
	  Gets the length in seconds of the asset referenced in an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### GetInstanceAssetPlayerTime

Get the current accumulated time in seconds for an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### SetInstanceAssetPlayerTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32  |  |
| time | float |  |

**Return:** void  

### GetNodeIndexWithTag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NodeTag | FName |  |

**Return:** int32  

### GetInstanceAssetPlayerTime_BP

Get the current accumulated time in seconds for an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### SetInstanceAssetPlayerTime_BP

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32  |  |
| time | float |  |

**Return:** void  

### GetInstanceAssetPlayerTimeFraction

Get the current accumulated time as a fraction for an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### GetInstanceAssetPlayerTimeFromEnd

Get the time in seconds from the end of an animation in an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### GetInstanceAssetPlayerTimeFromEndFraction

Get the time as a fraction of the asset length of an animation in an asset player node

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetPlayerIndex | int32 |  |

**Return:** float  

### GetInstanceMachineWeight

Get the blend weight of a specified state machine

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32 |  |

**Return:** float  

### GetInstanceStateWeight

Get the blend weight of a specified state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32 |  |

**Return:** float  

### GetInstanceCurrentStateElapsedTime

Get the current elapsed time of a state within the specified state machine

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32 |  |

**Return:** float  

### GetInstanceTransitionCrossfadeDuration

Get the crossfade duration of a specified transition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| TransitionIndex | int32 |  |

**Return:** float  

### GetInstanceTransitionTimeElapsed

Get the elapsed time in seconds of a specified transition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| TransitionIndex | int32 |  |

**Return:** float  

### GetInstanceTransitionTimeElapsedFraction

Get the elapsed time as a fraction of the crossfade duration of a specified transition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| TransitionIndex | int32 |  |

**Return:** float  

### GetRelevantAnimTimeRemaining

Get the time remaining in seconds for the most relevant animation in the source state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32  |  |
| NullAnimDefaultValue | float |  |

**Return:** float  

### GetRelevantAnimTimeRemainingFraction

Get the time remaining as a fraction of the duration for the most relevant animation in the source state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32  |  |
| NullAnimDefaultValue | float |  |

**Return:** float  

### GetRelevantAnimLength

Get the length in seconds of the most relevant animation in the source state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32  |  |
| NullAnimDefaultValue | float |  |

**Return:** float  

### GetRelevantAnimTime

Get the current accumulated time in seconds for the most relevant animation in the source state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32  |  |
| NullAnimDefaultValue | float |  |

**Return:** float  

### GetRelevantAnimTimeFraction

Get the current accumulated time as a fraction of the length of the most relevant animation in the source state

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32  |  |
| StateIndex | int32  |  |
| NullAnimDefaultValue | float |  |

**Return:** float  

### GetCurveValue

Returns the value of a named curve.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CurveName | FName  |  |
| Immediately | bool |  |

**Return:** float  

### GetCurrentStateName

Returns the name of a currently active state in a state machine.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MachineIndex | int32 |  |

**Return:** FName  

### SetMorphTarget

Sets a morph target to a certain weight.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MorphTargetName | FName  |  |
| Value | float |  |

**Return:** void  

### ClearMorphTargets

Clears the current morph targets.

**Return:** void 

### CalculateDirection

Returns degree of the angle betwee velocity and Rotation forward vector
	  The range of return will be from [-180, 180], and this can be used to feed blendspace directional value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Velocity | FVector &  |  |
| BaseRotation | FRotator & |  |

**Return:** float  

### LockAIResources

locks indicated AI resources of animated pawn
	 	DEPRECATED. Use LockAIResourcesWithAnimation instead

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bLockMovement | bool  |  |
| LockAILogic | bool |  |

**Return:** void  

### UnlockAIResources

unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources.
	 	DEPRECATED. Use UnlockAIResourcesWithAnimation instead

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUnlockMovement | bool  |  |
| UnlockAILogic | bool |  |

**Return:** void  

### GetTimeToClosestMarker

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SyncGroup | FName  |  |
| MarkerName | FName  |  |
| OutMarkerTime | float & |  |

**Return:** bool  

### HasMarkerBeenHitThisFrame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SyncGroup | FName  |  |
| MarkerName | FName |  |

**Return:** bool  

### IsSyncGroupBetweenMarkers

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSyncGroupName | FName  |  |
| PreviousMarker | FName  |  |
| NextMarker | FName  |  |
| bRespectMarkerOrder | bool |  |

**Return:** bool  

### GetSyncGroupPosition

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSyncGroupName | FName |  |

**Return:** FMarkerSyncAnimPosition  

### TriggerAllSequenceSwitchNotify

Trigger AnimNotifies

**Return:** void 

### CheckCanTriggerNotify_AnimIsolation_Outer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimNotifyEvent | FAnimNotifyEvent &  |  |
| InNotify | UAnimNotify * |  |

**Return:** bool  

### CheckCanTriggerNotifyState_AnimIsolation_Outer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimNotifyEvent | FAnimNotifyEvent &  |  |
| InNotifyState | UAnimNotifyState * |  |

**Return:** bool  

### CheckCanTriggerAnimNotifyFunction_AnimIsolation_Outer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAnimNotifyEvent | FAnimNotifyEvent & |  |

**Return:** bool  

### ReplaceSubAnimNodeAnimClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SubInstanceSlotName | FName  |  |
| NewAnimClass | TSubclassOf < UAnimInstance >  |  |
| BlendTime | float  |  |
| bEnableNoWaitParallelEvalTask | bool |  |

**Return:** UAnimInstance *  

### ReplaceSubAnimNodeAnimClass_EmptyClassDefaut

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SubInstanceSlotName | FName  |  |
| NewAnimClass | TSubclassOf < UAnimInstance >  |  |
| BlendTime | float |  |

**Return:** UAnimInstance *  

### ResetSubAnimNodeAnimClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SubInstanceSlotName | FName  |  |
| FilterAnimClass | TSubclassOf < UAnimInstance >  |  |
| BlendTime | float  |  |
| bEnableNoWaitParallelEvalTask | bool |  |

**Return:** void  

### ResetSubAnimNodeAnimClass_EmptyClassDefaut

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SubInstanceSlotName | FName  |  |
| FilterAnimClass | TSubclassOf < UAnimInstance >  |  |
| BlendTime | float |  |

**Return:** void  

### ResetAllSubAnimNode

**Return:** void 

### ClearAllSubAnimBlendTime

**Return:** void 

### ResetAllSubAnimNodePosInertialization

**Return:** void