---
title: USkeleton
language: cpp
---

# USkeleton

USkeleton : that links between mesh and animation
 		- Bone hierarchy for animations
 		- Bonetrack linkup between mesh and animation
 		- Retargetting related
 		- Mirror table

> Inheritance: UObject -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoneTree | TArray < struct FBoneNode > | Skeleton bone tree - each contains name and parent index |
| OverrideBoneTranslationRetargetingModeConfigMap | TMap < FName , FOverrideBoneTranslationRetargetingModeConfig > |  |
| RefLocalPoses_DEPRECATED | TArray < FTransform > | Reference skeleton poses in local space |
| VirtualBoneGuid | FGuid | Guid for virtual bones. 	   Separate so that we don't have to dirty the original |
| VirtualBones | TArray < FVirtualBone > | Array of this skeletons virtual bones. These are new bones are links between two |
| CompatibleSkeletons | TArray < TSoftObjectPtr < USkeleton > > | The list of compatible skeletons. 	  This is an array of TSoftObjectPtr in order |
| MultiSkeletonNameMap | TMap < TSoftObjectPtr < USkeleton > , FCustomSkeletonName > |  |
| CustomSkeletonNameMap | TMap < FName , FName > | key名称对应其他骨骼的名字 做骨骼兼容时 会被当作本骨骼的value使用 |
| SkeletonNotOffsetName | TMap < FName , FBoneOffset > | 是否要在骨骼兼容后不应用offset |
| RefBoneNames | TArray < FName > | 该名称对应的骨骼 做骨骼兼容时 只会应用旋转 |
| ExcludeBoneInfos | TArray < FSkinWeightInfoForFPP > | 该名称对应的骨骼 做骨骼兼容时排除该骨骼的信息 |
| ExcludeBoneNameForAvatar | TArray < FName > |  |
| bIsFPPSkeleton | bool |  |
| Sockets | TArray < USkeletalMeshSocket * > | Array of named socket locations, set up in editor and used as a shortcut instead |
| SmartNames | FSmartNameContainer |  |
| BlendProfiles | TArray < UBlendProfile * > | List of blend profiles available in this skeleton |
| SlotGroups | TArray < FAnimSlotGroup > | Slot Groups |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| bSkipGenerateGuidWhenSkeletonHierarchyAdd | bool | 当骨架增加骨骼时，跳过 Guid 更新和 DDC 重新构建 |
| PreviewSkeletalMesh | TSoftObjectPtr < USkeletalMesh > | The default skeletal mesh to use when previewing this skeleton |
| AdditionalPreviewSkeletalMeshes | TSoftObjectPtr < UDataAsset > | The additional skeletal meshes to use when previewing this skeleton |
| RigConfig | FRigConfiguration |  |
| AnimationNotifies | TArray < FName > | AnimNotifiers that has been created. Right now there is no delete step for this, |
| PreviewAttachedAssetContainer | FPreviewAssetAttachContainer | Attached assets component for this skeleton |

## Functions

### AddCompatibleSkeleton

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceSkeleton | USkeleton * |  |

**Return:** ENGINE_API void  

### AddCompatibleSkeletonSoft

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceSkeleton | TSoftObjectPtr < USkeleton > & |  |

**Return:** ENGINE_API void