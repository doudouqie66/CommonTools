---
title: USkeletalMesh
language: cpp
---

# USkeletalMesh

SkeletalMesh is geometry bound to a hierarchical skeleton of bones which can be animated for the purpose of deforming the mesh.
  Skeletal Meshes are built up of two parts; a set of polygons composed to make up the surface of the mesh, and a hierarchical skeleton which can be used to animate the polygons.
  The 3D models, rigging, and animations are created in an external modeling and animation application (3DSMax, Maya, Softimage, etc).

> Inheritance: UObject -> IInterface_CollisionDataProvider -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| Skeleton | USkeleton * | Skeleton of this skeletal mesh |
| bAllowCPUAccess | bool |  |
| bForceAllowCPUAccess | bool | Ignore "FreeSkeletalMeshBuffers" console value. |
| EncodeBits_Position | int32 |  |
| EncodeBits_TexCoord | int32 |  |
| EncodeBits_Normal | int32 |  |
| EncodeBits_Generic | int32 |  |
| EncodeBits_VertexColor | int32 |  |
| EncodeSpeed | int32 |  |
| DecodeSpeed | int32 |  |
| ImportedBounds | FBoxSphereBounds | Original imported mesh bounds |
| ExtendedBounds | FBoxSphereBounds | Bounds extended by user values below |
| PositiveBoundsExtension | FVector | Bound extension values in addition to imported bound in the positive direction o |
| NegativeBoundsExtension | FVector | Bound extension values in addition to imported bound in the negative direction o |
| bIsStreamable | bool | Streamable flag, determine whether to split the lod serialization, WITH_STREAMIN |
| bCompressData | bool |  |
| IndirectLightingCachePositionOffset | FVector |  |
| NotInlineLODCount | uint8 |  |
| Materials | TArray < FSkeletalMaterial > | List of materials applied to this mesh. |
| ReplaceMaterialInterface | UMaterialInterface * | Replace for async compile pso. |
| SkelMirrorTable | TArray < FBoneMirrorInfo > | List of bones that should be mirrored. |
| SkelMirrorAxis | TEnumAsByte < EAxis :: Type > |  |
| SkelMirrorFlipAxis | TEnumAsByte < EAxis :: Type > |  |
| CullingScreenSize | float | Culling screen size |
| LODInfo | TArray < FSkeletalMeshLODInfo > | Struct containing information for each LOD level, such as materials to use, and  |
| bUseAnyLODFeature | bool |  |
| PerLODBiasTypeInfo | TArray < FMeshPerLODBiasArray > | When autonomous or simulated pawn needs special LOD bias |
| bUseLODBiasExt | bool |  |
| bAutoUpdateLODBiasExt | bool |  |
| PerLODBiasTypeInfoExt | TArray < FMeshLODBiasCondition > |  |
| bUseFullPrecisionUVs | uint32 | If true, use 32 bit UVs. If false, use 16 bit UVs to save memory |
| bUsedWithDynamicInstancing | uint32 | Whether or not this mesh can be used with dynamic instancing. |
| bHasBeenSimplified | uint32 | true if this mesh has ever been simplified with Simplygon. |
| bHasVertexColors | uint32 | Whether or not the mesh has vertex colors |
| bEnablePerPolyCollision | uint32 | Uses skinned data for collision data. Per poly collision cannot be used for simu |
| bEnableSelfCollision | uint32 | Need self-collision in an aggregate. In most cases you don't need if the aggrega |
| BodySetup | UBodySetup * |  |
| PhysicsAsset | UPhysicsAsset * | Physics and collision information used for this USkeletalMesh, set up in Physics |
| ShadowPhysicsAsset | UPhysicsAsset * | Physics asset whose shapes will be used for shadowing when components have bCast |
| NodeMappingData | TArray < UNodeMappingContainer * > | Mapping data that is saved |
| LodModelsHasSkinweight | bool | use for FStaticLODModel Serialize SkinweightProfilesData |
| MorphTargets | TArray < UMorphTarget * > |  |
| ClothingAssets_DEPRECATED | TArray < FClothingAssetData_Legacy > | Legacy clothing asset data, will be converted to new assets after loading |
| PostProcessAnimBlueprint | TSubclassOf < UAnimInstance > | Animation Blueprint class to run as a post process for this mesh. 	   This bluep |
| MeshClothingAssets | TArray < UClothingAssetBase * > | Clothing assets imported to this mesh. May or may not be in use currently on the |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| Sockets | TArray < USkeletalMeshSocket * > | Array of named socket locations, set up in editor and used as a shortcut instead |
| TemplateRetargetSource | FName |  |
| RefBoneNames | TArray < FName > |  |
| SkinWeightProfiles | TArray < FSkinWeightProfileInfo > | Set of skin weight profiles associated with this mesh |
| ScreenSizeCullingRoughDistance | float | Rough Distance of Screen size Culling |
| bCloseDraco | bool |  |
| AssetImportData | UAssetImportData * | Importing data and options used for this mesh |
| SourceFilePath_DEPRECATED | FString | Path to the resource used to construct this skeletal mesh |
| SourceFileTimestamp_DEPRECATED | FString | DateTime-stamp of the file from the last import |
| ThumbnailInfo | UThumbnailInfo * | Information for thumbnail rendering |
| bHasCustomDefaultEditorCamera | bool | Should we use a custom camera transform when viewing this mesh in the tools |
| DefaultEditorCameraLocation | FVector | Default camera location |
| DefaultEditorCameraRotation | FRotator | Default camera rotation |
| DefaultEditorCameraLookAt | FVector | Default camera look at |
| DefaultEditorCameraOrthoZoom | float | Default camera ortho zoom |
| OptimizationSettings | TArray < FSkeletalMeshOptimizationSettings > | Optimization settings used to simplify LODs of this mesh. |
| PreviewAttachedAssetContainer | FPreviewAssetAttachContainer | Attached assets component for this mesh |
| bPreviewDraco | bool |  |
| bUseHighPrecision | bool |  |
| SelectedEditorSection | int32 | The section currently selected in the Editor. Used for highlighting |
| SelectedEditorMaterial | int32 | The Material currently selected. need to remember this index for reimporting clo |
| SelectedClothingSection | int32 | The section currently selected for clothing. need to remember this index for rei |
| FloorOffset | float | Height offset for the floor mesh in the editor |
| RetargetBasePose | TArray < FTransform > | This is buffer that saves pose that is used by retargeting |

## Functions

### RefreshBulkNotExistsLODCount

**Return:** void 

### GetBounds

Get the extended bounds of this mesh (imported bounds plus bounds extension)

**Return:** FBoxSphereBounds 

### GetImportedBounds

Get the original imported bounds of the skel mesh

**Return:** FBoxSphereBounds 

### GetNodeMappingContainer

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SourceAsset | UBlueprint * |  |

**Return:** UNodeMappingContainer *  

### GetRefBonePose

**Return:** const TArray < FTransform > & 

### GetRefBoneInfo

**Return:** const TArray < FName > & 

### FindSocket

Find a socket object in this SkeletalMesh by name. 
	 	Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName |  |

**Return:** USkeletalMeshSocket *  

### AddDynamicSocket

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocket | USkeletalMeshSocket * |  |

**Return:** void  

### FindSocketAndIndex

Find a socket object in this SkeletalMesh by name.
		Entering NAME_None will return NULL. If there are multiple sockets with the same name, will return the first one.
	   Also returns the index for the socket allowing for future fast access via GetSocketByIndex()

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocketName | FName  |  |
| OutIndex | int32 & |  |

**Return:** USkeletalMeshSocket *  

### NumSockets

Returns the number of sockets available. Both on this mesh and it's skeleton.

**Return:** int32 

### GetSocketByIndex

Returns a socket by index. Max index is NumSockets(). The meshes sockets are accessed first, then the skeletons.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** USkeletalMeshSocket *  

### IsSectionUsingCloth

Checks whether the provided section is using APEX cloth. if bCheckCorrespondingSections is true
	  disabled sections will defer to correspond sections to see if they use cloth (non-cloth sections
	  are disabled and another section added when cloth is enabled, using this flag allows for a check
	  on the original section to succeed)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSectionIndex | int32  | Index to check |
| bCheckCorrespondingSections | bool | Whether to check corresponding sections for disabled sections |

**Return:** bool  

### AddCopySocket

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSocket | USkeletalMeshSocket * |  |

**Return:** void