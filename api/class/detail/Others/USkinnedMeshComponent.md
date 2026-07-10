---
title: USkinnedMeshComponent
language: cpp
---

# USkinnedMeshComponent

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SkeletalMesh | USkeletalMesh * | The skeletal mesh used by this component. |
| MasterPoseComponent | TWeakObjectPtr < USkinnedMeshComponent > | If set, this SkeletalMeshComponent will not use its SpaceBase for bone transform |
| ComponentSpaceBoneExtraTransform | TArray < FTransform > |  |
| bUseBoundsFromMasterPoseComponent | uint32 | When true, we will just using the bounds from our MasterPoseComponent.  This is  |
| PhysicsAssetOverride | UPhysicsAsset * | PhysicsAsset is set in SkeletalMesh by default, but you can override with this v |
| bOverrideMinLod | uint8 | Whether we should use the min lod specified in MinLodModel for this component in |
| ForcedLodModel | int32 | If 0, auto-select LOD level. if >0, force to (ForcedLodModel-1). |
| MinLodModel | int32 | This is the min LOD that this component will use.  (e.g. if set to 2 then only 2 |
| MaxLodModel | int32 |  |
| LODDynamicMask | TArray < bool > |  |
| LODInfo | TArray < struct FSkelMeshComponentLODInfo > | LOD array info. Each index will correspond to the LOD index |
| StreamingDistanceMultiplier | float | Allows adjusting the desired streaming distance of streaming textures that uses  |
| WireframeColor | FColor | Wireframe color |
| bForceWireframe | uint32 | Forces the mesh to draw in wireframe mode. |
| bDisplayBones_DEPRECATED | uint32 | Draw the skeleton hierarchy for this skel mesh. |
| bDisableMorphTarget | uint32 | Disable Morphtarget for this component. |
| bHideSkin | uint32 | Don't bother rendering the skin. |
| bPerBoneMotionBlur | uint32 | If true, use per-bone motion blur on this skeletal mesh (requires additional ren |
| UpdateBoundsRate | uint8 |  |
| bComponentUseFixedSkelBounds | uint32 | When true, skip using the physics asset etc. and always use the fixed bounds def |
| bConsiderAllBodiesForBounds | uint32 | If true, when updating bounds from a PhysicsAsset, consider _all_ BodySetups, no |
| bFixCachedLocalBoundsIssue | uint32 | If true, cache correct local bounds. Otherwise cache a bounds transformed twice. |
| MeshComponentUpdateFlag | TEnumAsByte < EMeshComponentUpdateFlag :: Type > | This is update frequency flag even when our Owner has not been rendered recently |
| NeedUpdateEveryFrame | bool |  |
| NeedRateTickWhenNoRender | bool |  |
| bIndirectLightingCachePositionUsingActorPosition | uint32 | If true, IndirectLightingCache will use actor postion to sample |
| bForceMeshObjectUpdate | uint32 | If true, UpdateTransform will always result in a call to MeshObject->Update. |
| bCanHighlightSelectedSections | uint32 | Whether or not we can highlight selected sections - this should really only be d |
| bRecentlyRendered | uint32 | true if mesh has been recently rendered, false otherwise |
| CustomSortAlternateIndexMode | uint8 | Editor only. Used for manually selecting the alternate indices for 	   TRISORT_C |
| bCastCapsuleDirectShadow | uint32 | Whether to use the capsule representation (when present) from a skeletal mesh's  |
| bCastCapsuleIndirectShadow | uint32 | Whether to use the capsule representation (when present) from a skeletal mesh's  |
| CapsuleIndirectShadowMinVisibility | float | Controls how dark the capsule indirect shadow can be. |
| bCPUSkinning | uint32 | Whether or not to CPU skin this component, requires render data refresh after ch |
| CachedLocalBounds | FBoxSphereBounds | LocalBounds cached, so they're computed just once. |
| bCachedLocalBoundsUpToDate | bool | true when CachedLocalBounds is up to date. |
| bEnableUpdateRateOptimizations | bool | if TRUE, Owner will determine how often animation will be updated and evaluated. |
| bDisplayDebugUpdateRateOptimizations | bool | Enable on screen debugging of update rate optimization. 	  Red = Skipping 0 fram |
| bRenderStatic | uint8 | If true, render as static in reference pose. |
| bUseBoneVisibilityPropagateFeature | bool | Engine modify Start +++++++++ |
| bOverrideAnimUpdateRateParameters | bool |  |
| bOverrideAnimUpdateRateParameters_ByComponent | bool |  |
| bRunWithOverrideAnimUpdateRateParameters | bool |  |
| CustomAnimUpdateRateParams | FAnimUpdateRateParameters |  |

## Functions

### SetPhysicsAsset

Override the Physics Asset of the mesh. It uses SkeletalMesh.PhysicsAsset, but if you'd like to override use this function
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPhysicsAsset | UPhysicsAsset *  | New PhysicsAsset |
| bForceReInit | bool | Force reinitialize |

**Return:** void  

### GetNumLODs

Get the number of LODs on this component

**Return:** int32 

### SetMinLOD

Set MinLodModel of the mesh component
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewMinLOD | int32 | Set new MinLodModel that make sure the LOD does not go below of this value. Range from [0, Max Number of LOD - 1]. This will affect in the next tick update. |

**Return:** void  

### SetForcedLOD

Set MinLodModel of the mesh component
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewForcedLOD | int32 | Set new ForcedLODModel that forces to set the incoming LOD. Range from [1, Max Number of LOD]. This will affect in the next tick update. |

**Return:** void  

### SetCastCapsuleDirectShadow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetCastCapsuleIndirectShadow

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetCapsuleIndirectShadowMinVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewValue | float |  |

**Return:** void  

### GetNumBones

Returns the number of bones in the skeleton.

**Return:** int32 

### GetBoneIndex

Find the index of bone by name. Looks in the current SkeletalMesh being used by this SkeletalMeshComponent.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName | Name of bone to look up |

**Return:** int32  Index of the named bone in the current SkeletalMesh. Will return INDEX_NONE if bone not found.

### GetBoneName

Get Bone Name from index

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneIndex | int32 | Index of the bone |

**Return:** FName  the name of the bone at the specified index

### GetSocketBoneName

Returns bone name linked to a given named socket on the skeletal mesh component.
	  If you're unsure to deal with sockets or bones names, you can use this function to filter through, and always return the bone name.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName |  |

**Return:** FName  bone name

### SetSkeletalMesh

Change the SkeletalMesh that is rendered for this Component. Will re-initialize the animation tree etc.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMesh | USkeletalMesh *  | New mesh to set for this component |
| bReinitPose | bool  | Whether we should keep current pose or reinitialize. |
| bCheckBoneMap | bool  |  |
| bTickAnimationNow | bool |  |

**Return:** void  

### GetSkeletalMesh

Return SkeletalMesh.
	 

**Return:** USkeletalMesh * 

### GetParentBone

Get Parent Bone of the input bone
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName | Name of the bone |

**Return:** FName  the name of the parent bone for the specified bone. Returns 'None' if the bone does not exist or it is the root bone

### ClearBoneExtraOffset

**Return:** void 

### OffsetBoneExtraOffsprings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputBoneName | FName  |  |
| InputTranslation | FVector |  |

**Return:** int32  

### RotateBoneExtraOffsprings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputBoneName | FName  |  |
| InputRotation | FRotator |  |

**Return:** int32  

### ScaleBoneExtraOffsprings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InputBoneName | FName  |  |
| InputScale | FVector |  |

**Return:** int32  

### SetVertexColorOverride_LinearColor

Allow override of vertex colors on a per-component basis, taking array of Blueprint-friendly LinearColors.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32  |  |
| VertexColors | TArray < FLinearColor > & |  |

**Return:** void  

### ClearVertexColorOverride

Clear any applied vertex color override

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32 |  |

**Return:** void  

### SetSkinWeightOverride

Allow override of skin weights on a per-component basis.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32  |  |
| SkinWeights | TArray < FSkelMeshSkinWeightInfo > & |  |

**Return:** void  

### ClearSkinWeightOverride

Clear any applied skin weight override

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32 |  |

**Return:** void  

### SetSkinWeightProfile

Setup an override Skin Weight Profile for this component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InProfileName | FName |  |

**Return:** bool  

### ClearSkinWeightProfile

Clear the Skin Weight Profile from this component, in case it is set

**Return:** void 

### UpdateSkinWeightForRemapping

Update Skin weight for remapping skeleton

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WeightInfo | FSkinWeightInfoForFPP |  |

**Return:** void  

### UnloadSkinWeightProfile

Unload a Skin Weight Profile's skin weight buffer (if created)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InProfileName | FName |  |

**Return:** void  

### HasSkinweightProfileByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InProfileName | FName |  |

**Return:** bool  

### GetCurrentSkinWeightProfileName

Return the name of the Skin Weight Profile that is currently set otherwise returns 'None'

**Return:** FName 

### IsUsingSkinWeightProfile

Check whether or not a Skin Weight Profile is currently set

**Return:** bool 

### SwitchToOverrideSkinWeights

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32 |  |

**Return:** void  

### InvalidateCachedBounds

Invalidate Cached Bounds, when Mesh Component has been updated.

**Return:** void 

### RefreshUpdateRateParams

Recreates update rate params and internal tracker data

**Return:** void 

### RefreshUpdateRateParamsEnsureTrackerOrder

**Return:** void 

### SetMasterPoseComponent

Set MasterPoseComponent for this component
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMasterBoneComponent | USkinnedMeshComponent *  | New MasterPoseComponent |
| bForceUpdate | bool |  |

**Return:** void  

### RemoveMasterPoseComponent

**Return:** void 

### TryRemoveDirtySlaveComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DirtySlaveMeshComponent | USkinnedMeshComponent * |  |

**Return:** void  

### GetBoneTransform

Get Bone Transform from index
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneIndex | int32 | Index of the bone |

**Return:** FTransform  the transform of the bone at the specified index

### GetBoneLocation

Get Bone Location
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  | Name of the bone |
| Space | EBoneSpaces :: Type | 0 == World, 1 == Local (Component) |

**Return:** FVector  Vector of the bone

### BoneIsChildOf

Tests if BoneName is child of (or equal to) ParentBoneName.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  | Name of the bone |
| ParentBoneName | FName |  |

**Return:** bool  true if child (strictly, not same). false otherwise

### TransformToBoneSpace

Transform a locationrotation from world space to bone relative space.
	 	This is handy if you know the location in world space for a bone attachment, as AttachComponent takes locationrotation in bone-relative space.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  | Name of bone |
| InPosition | FVector  | Input position |
| InRotation | FRotator  | Input rotation |
| OutPosition | FVector &  | (out) Transformed position |
| OutRotation | FRotator & | (out) Transformed rotation |

**Return:** void  

### TransformFromBoneSpace

Transform a locationrotation in bone relative space to world space.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  | Name of bone |
| InPosition | FVector  | Input position |
| InRotation | FRotator  | Input rotation |
| OutPosition | FVector &  | (out) Transformed position |
| OutRotation | FRotator & | (out) Transformed rotation |

**Return:** void  

### FindClosestBone_K2

finds the closest bone to the given location
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TestLocation | FVector  | the location to test against |
| BoneLocation | FVector &  | (optional, out) if specified, set to the world space location of the bone that was found, or (0,0,0) if no bone was found |
| IgnoreScale | float  | (optional) if specified, only bones with scaling larger than the specified factor are considered |
| bRequirePhysicsAsset | bool | (optional) if true, only bones with physics will be considered |

**Return:** FName  the name of the bone that was found, or 'None' if no bone was found

### HideBoneByName

Hides the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
	 	Compoared to HideBone By Index - This keeps track of list of bones and update when LOD changes
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName  |      Name of bone to hide |
| PhysBodyOption | EPhysBodyOp | Option for physics bodies that attach to the bones to be hidden |

**Return:** void  

### UnHideBoneByName

UnHide the specified bone with name.  Currently this just enforces a scale of 0 for the hidden bones.
	 	Compoared to HideBone By Index - This keeps track of list of bones and update when LOD changes

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |      Name of bone to unhide |

**Return:** void  

### IsBoneHiddenByName

Determines if the specified bone is hidden.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |      Name of bone to check |

**Return:** bool  true if hidden

### PropagateBoneHidden

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneIndex | int32  |  |
| PhysBodyOption | EPhysBodyOp |  |

**Return:** void  

### PropagateBoneUnHidden

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneIndex | int32 |  |

**Return:** void  

### FollowBoneHidden

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHiddenLeaderComp | USkinnedMeshComponent *  |  |
| BoneName | FName  |  |
| PhysBodyOption | EPhysBodyOp |  |

**Return:** void  

### FollowBoneUnHidden

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InUnHiddenLeaderComp | USkinnedMeshComponent *  |  |
| BoneName | FName |  |

**Return:** void  

### EnableMeshClipPlane

Engine modify End -----------

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlane | FPlane &  |  |
| PlaneIndex | int32 |  |

**Return:** void  

### DisableMeshClipPlane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlaneIndex | int32 |  |

**Return:** void  

### EnableMeshClipArc

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlane | FPlane &  |  |
| ClipSphere | FVector4 & |  |

**Return:** void  

### DisableMeshClipArc

**Return:** void 

### EnableMeshClip4Planes

Num of ClipPlanes is 4
	  0: Top Plane
	  1: Down Plane
	  2: Left Plane
	  3: Right Plane

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ClipPlanes | TArray < FPlane > &  |  |
| bBox | bool |  |

**Return:** void  

### DisableMeshClip4Planes

**Return:** void 

### SetRenderStatic

Set whether this skinned mesh should be rendered as static mesh in a reference pose
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### IsSectionBatched

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LODIndex | int32 |  |

**Return:** bool