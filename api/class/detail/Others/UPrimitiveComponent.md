---
title: UPrimitiveComponent
language: cpp
---

# UPrimitiveComponent

PrimitiveComponents are SceneComponents that contain or generate some sort of geometry, generally to be rendered or used as collision data.
  There are several subclasses for the various types of geometry, but the most common by far are the ShapeComponents (Capsule, Sphere, Box), StaticMeshComponent, and SkeletalMeshComponent.
  ShapeComponents generate geometry that is used for collision detection but are not rendered, while StaticMeshComponents and SkeletalMeshComponents contain pre-built geometry that is rendered, but can also be used for collision detection.

> Inheritance: USceneComponent -> INavRelevantInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| ExpectedQualityLimit | FExpectedQuality | If limit > actual, primitive won't be rendered. |
| bFixedLODDistanceFactorSwitch | uint8 | open this switch to use r.LOD.FixedDistanceFactor to control lod switch 	 for ex |
| CullingScreenSize | float | If the screen percentage of the bounding box under this value, it will be culled |
| MinDrawDistance | float | The minimum distance at which the primitive should be rendered, 	  measured in w |
| LDMaxDrawDistance | float | Max draw distance exposed to LDs. The real max draw distance is the min (disrega |
| CachedMaxDrawDistance | float | The distance to cull this primitive at. 	  A CachedMaxDrawDistance of 0 indicate |
| DepthPriorityGroup | TEnumAsByte < enum ESceneDepthPriorityGroup > | The scene depth priority group to draw the primitive in. |
| ViewOwnerDepthPriorityGroup | TEnumAsByte < enum ESceneDepthPriorityGroup > | The scene depth priority group to draw the primitive in, if it's being viewed by |
| LightmapType | ELightmapType | Controls the type of lightmap used for this component. |
| VLMOptimizeType | EVLMOptimizeType | To optimize performance, VLM can select optimization method. |
| bInstanceCulling | uint8 |  |
| OverrideQueryMobilityType | EOverrideQueryMobilityType |  |
| bUseAsPVSOC | uint8 |  |
| bUseDynamicPVS | uint8 |  |
| FramePredictionCacheState | EFPCacheState |  |
| StaticSceneCacheState | EFPCacheState |  |
| bForceInjectToHierarchicalSurfel | uint8 | ------------------------------------Surfel GI Begin----------------------------- |
| bForceUseStaticMovability | uint8 | If true, the movability of the primitive will be considered as static in Surfel  |
| bAffectSurfelGIWhenHidden | uint8 | If true, always affect global illumination even if hidden in game |
| bBulletCanBreakThrough | uint8 | 子弹碰撞穿透 |
| bAlwaysCreatePhysicsState | uint8 | Indicates if we'd like to create physics state all the time (for collision and s |
| bGenerateOverlapEvents | uint8 | If true, this component will generate overlap events when it is overlapping othe |
| bUpdateOverlapEventsWhenMove | uint8 |  |
| bForceUpdateOverlapEventsWhenMove | uint8 |  |
| bUseSingleSweep | uint8 | Use Sweep or single trace |
| bMultiBodyOverlap | uint8 | If true, this component will generate individual overlaps for each overlapping p |
| bCheckAsyncSceneOnMove | uint8 | If true, this component will look for collisions on both physic scenes during mo |
| bTraceComplexOnMove | uint8 | If true, component sweeps with this component should trace against complex colli |
| bReturnMaterialOnMove | uint8 | If true, component sweeps will return the material in their hit result. 	  @see  |
| bUseViewOwnerDepthPriorityGroup | uint8 | True if the primitive should be rendered using ViewOwnerDepthPriorityGroup if vi |
| bAllowCullDistanceVolume | uint8 | Whether to accept cull distance volumes to modify cached cull distance. |
| bHasMotionBlurVelocityMeshes | uint8 | true if the primitive has motion blur velocity meshes |
| bVisibleInReflectionCaptures | uint8 | If true, this component will be visible in reflection captures. |
| bRejectReflectionCapture | uint8 | If true, this component won't be affected by any reflection capture. |
| bRenderInMainPass | uint8 | If true, this component will be rendered in the main pass (z prepass, basepass,  |
| bForceRenderInShadowPass | uint8 | If true, this component will force be rendered in the shadow depth pass when bRe |
| HiddenInMainPassLocks | TArray < FName > | If Num() == 0, this component will be rendered in the main pass (z prepass, base |
| bRenderInMono | uint8 | If true, this component will be rendered in mono only if an HMD is connected and |
| bReceivesDecals | uint8 | Whether the primitive receives decals. |
| bOwnerNoSee | uint8 | If this is True, this component won't be visible when the view actor is the comp |
| bOnlyOwnerSee | uint8 | If this is True, this component will only be visible when the view actor is the  |
| bTreatAsBackgroundForOcclusion | uint8 | Treat this primitive as part of the background for occlusion purposes. This can  |
| bDrawIdeaOutline | uint8 | Whether to render the primitive's outline |
| bIdeaOutlineUseNormalInVertexColor | uint8 | Whether to use normal vector stored in vertex color |
| bIdeaOutlineUseOutlineMesh | uint8 |  |
| bIdeaOutlineNew | uint8 | Should only be used in UGC and Home branch for now. This may significantly incre |
| bIdeaOutlineOcclusionHighlight | uint8 | Whether to use occlusion highlight |
| bDisableWriteDepthForOcclusionHighlight | uint8 | Whether to occlude other primitive's highlight. if this is already occlude highl |
| bIdeaOutlineNewUseBackFace | uint8 | use backface for outline drawing in outline pass |
| bIdeaOverrideOutlineAndOcclusion | uint8 | Override outline settings to enable both outline and occlusion |
| bDrawIdeaOutlineInHighlightPass | uint8 | Move old draw outline to highlight pass, not work for outline for separate pass, |
| IdeaOutlineOcclusionColor | FLinearColor | Edit it when enable Use Both Outline And Occlusion, otherwise use IdeaOutlineCol |
| bOverrideIdeaOutlineColor | uint8 | Whether to override the primitive's outline color |
| bOverrideIdeaOutlineThickness | uint8 | Whether to override the primitive's outline color |
| IdeaOutlineThickness | float | the primitive's override outline color |
| IdeaOutlineColor | FLinearColor | the primitive's override outline color |
| bDrawHighlight | uint8 | Whether to draw highlight for this primitive |
| bHighlightCanBeOccluded | uint8 | Whether the highlight mesh of this primitive can be occluded |
| bOverrideHighlightColor | uint8 | Whether to use HighlightColor for highlight rendering, if false, use the default |
| HighlightColor | FLinearColor | If bOverrideHighlightColor is true, use this color for highlight rendering |
| DrawDyeingMode | EDrawDyeingMode | Draw dyeing mode of primitive |
| VisibleDyeingColor | FLinearColor | Primitive's visible color when dyeing |
| OccludedDyeingColor | FLinearColor | Primitive's occlued color when dyeing |
| bDrawDyeing | uint8 | Whether to dyeing the primitive |
| bUseAsEarlyZ | uint8 | Whether to render the primitive in the early z pass for mobile platform. |
| bRenderInTwoPass | uint8 | Whether to render the primitive in the early z pass for mobile platform.    	 If |
| bTwoPassTranslucent | uint8 | Whether to render translucency in two pass. |
| bTranslucentDepthWrite | uint8 | Whether to write depth for translucency. |
| bTranslucentDepthWriteInTwoPass | uint8 | Write depth for translucency in two pass. Add a depth-only pass before rendering |
| bForceIBL | uint8 | (TAPD:ID869829499) for SceneProxyIBL |
| bForceDisableIBL | uint8 |  |
| bForceDynamic | uint8 |  |
| ActiveScopeStatus | int32 |  |
| ScopeLocalTranslation | FVector |  |
| ScopeLocalRotation | FRotator |  |
| ScopeRadius | float |  |
| bIsFppLayer | uint8 |  |
| bIsTppLayer | uint8 | When enabled, the component will NOT cast a shadow on components with bIsFppLaye |
| bUseAsOccluder | uint8 | Whether to render the primitive in the depth only pass. 	  This should generally |
| bOnlyAsOccluder | uint8 |  |
| bSelectable | uint8 | If this is True, this component can be selected in the editor. |
| bForceMipStreaming | uint8 | If true, forces mips for textures used by this component to be resident when thi |
| bHasPerInstanceHitProxies | uint8 | If true a hit-proxy will be generated for each instance of instanced static mesh |
| bRecieveShadow | uint8 | Controls whether the primitive component should recieve a shadow or not.(by jing |
| CastShadow | uint8 | Controls whether the primitive component should cast a shadow or not. 	  	  This |
| bAffectDynamicIndirectLighting | uint8 | Controls whether the primitive should inject light into the Light Propagation Vo |
| bAffectDistanceFieldLighting | uint8 | Controls whether the primitive should affect dynamic distance field lighting met |
| bCastDynamicShadow | uint8 | Controls whether the primitive should cast shadows in the case of non precompute |
| bCastStaticShadow | uint8 | Whether the object should cast a static shadow from shadow casting lights.  This |
| bCastVolumetricTranslucentShadow | uint8 | Whether the object should cast a volumetric translucent shadow. 	  Volumetric tr |
| bSelfShadowOnly | uint8 | When enabled, the component will only cast a shadow on itself and not other comp |
| bCastFarShadow | uint8 | When enabled, the component will be rendering into the far shadow cascades (only |
| bCastInDoorShadow | uint8 | When enabled, the component will be rendering shadow in door (only for direction |
| bCastInsetShadow | uint8 | Whether this component should create a per-object shadow that gives higher effec |
| bCastTranslucentShadowAsMask | uint8 |  |
| bCastPhotonShadow | uint8 | #if WITH_PHOTON_SHADOW |
| bCastPhotonPerObjectShadow | uint8 | #if WITH_PHOTON_PER_OBEJCT_SHADOW |
| bNearCascade | uint8 |  |
| bCastCinematicShadow | uint8 | Whether this component should cast shadows from lights that have bCastShadowsFro |
| bCastHiddenShadow | uint8 | If true, the primitive will cast shadows even if bHidden is true. 	 	Controls wh |
| bCastShadowAsTwoSided | uint8 | Whether this primitive should cast dynamic shadows as if it were a two sided mat |
| bLightAsIfStatic_DEPRECATED | uint8 |  |
| bLightAttachmentsAsGroup | uint8 | Whether to light this component and any attachments as a group.  This only has e |
| bReceiveCombinedCSMAndStaticShadowsFromStationaryLights | uint8 | Mobile only: 	  If enabled this component can receive combined static and CSM sh |
| bReceiveLandscapeShadows | uint8 |  |
| bSingleSampleShadowFromStationaryLights | uint8 | Whether the whole component should be shadowed as one from stationary lights, wh |
| bIgnoreRadialImpulse | uint8 | Will ignore radial impulses applied to this component. |
| bIgnoreRadialForce | uint8 | Will ignore radial forces applied to this component. |
| bApplyImpulseOnDamage | uint8 | True for damage to this component to apply physics impulse, false to opt out of  |
| bReplicatePhysicsToAutonomousProxy | uint8 | True if physics should be replicated to autonomous proxies. This should be true  |
| bCorrectPXTrans | uint8 |  |
| bCorrectPXTransUsingRemovePhysTargetFunction | uint8 |  |
| AlwaysLoadOnClient | uint8 | If this is True, this component must always be loaded on clients, even if Hidden |
| AlwaysLoadOnServer | uint8 | If this is True, this component must always be loaded on servers, even if Hidden |
| bUseEditorCompositing | uint8 | Composite the drawing of this component onto the scene after post processing (on |
| bRenderCustomDepth | uint8 | If true, this component will be rendered in the CustomDepth pass (usually used f |
| bUpdateTransformUseTeleportPhysics | uint8 |  |
| bUseAsyncCompilePSO | uint8 | #if WITH_ANDROID_ASYNC_COMPILE_PSO 	 whether this mesh is using async compile ps |
| bIgnoreOtherCanBeOverlap | uint8 |  |
| bMoveMultiPenetratingIgnoreFlag | uint8 | 是否在移动的时候，有多个渗透，就忽略开启本标志的物体 |
| bHasCustomNavigableGeometry | TEnumAsByte < EHasCustomNavigableGeometry :: Type > | If true then DoCustomNavigableGeometryExport will be called to collect navigable |
| CanCharacterStepUpOn | TEnumAsByte < enum ECanBeCharacterBase > | Determine whether a Character can step up onto this component. 	  This controls  |
| JumpOffVelocityFactor | float | 不能站的时候，角色随机移动的最大速度的比率 	 如果>0，表示使用本值，移动组件上的值无效；否则使用移动组件上的值 |
| LightingChannels | FLightingChannels | Channels that this component should be in.  Lights with matching channels will a |
| IndoorOutdoorMask | TEnumAsByte < EIndoorOutdoorMask > |  |
| CustomDepthStencilWriteMask | ERendererStencilMask | Mask used for stencil buffer writes. |
| CustomDepthStencilValue | int32 | Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Req |
| TranslucencySortPriority | int32 | Translucent objects with a lower sort priority draw behind objects with a higher |
| VisibilityId | int32 | Used for precomputed visibility |
| PVSHandlerID | int32 | Used for precomputed visibility |
| NumInstanceVisibilityVolumes | int32 | Used for precomputed visibility |
| bForceSyncPSO | uint32 | #if ALLOW_FORCE_SYNC_CREATE_PSO 	  Force this material to link PSO synchronously |
| OverrideCylinderMaxDrawHeight | float | Used if [r.CylinderMaxDrawHeight] is not zero, override [r.CylinderMaxDrawHeight |
| bCanSeparateParticleRendering | bool |  |
| bDisableDynamicInstancing | bool |  |
| BoundsScale | float | Scales the bounds of the object. 	  This is useful when using World Position Off |
| OCBoundsScale | float |  |
| OCBoundsExtent | int32 | ROC Extent the bounds a few pixels during depth test. |
| LastSubmitTime | float | Last time the component was submitted for rendering (called FScene::AddPrimitive |
| LastRenderTime | float | The value of WorldSettings->TimeSeconds for the frame when this component was la |
| LastRenderTimeOnScreen | float |  |
| TouchAsBlockActors | TArray < AActor * > |  |
| MoveIgnoreComponents | TArray < UPrimitiveComponent * > | Set of components to ignore during component sweeps in MoveComponent(). 	 These  |
| BodyInstance | FBodyInstance | Physics scene information for this component, holds a single rigid body with mul |
| LODParentPrimitive | UPrimitiveComponent * | LOD parent primitive to draw instead of this one (multiple UPrim's will point to |
| PostPhysicsComponentTick | FPrimitiveComponentPostPhysicsTickFunction | Tick function for physics ticking |
| IndirectLightingCacheQuality | TEnumAsByte < EIndirectLightingCacheQuality > | Quality of indirect lighting for Movable primitives.  This has a large effect on |
| bEnableAutoLODGeneration | uint8 | If true, and if World setting has bEnableHierarchicalLOD equal to true, then thi |
| bUseMaxLODAsImposter | uint8 | Use the Maximum LOD Mesh (imposter) instead of including Mesh data from this com |
| ExcludeForSpecificHLODLevels | TArray < int32 > | Which specific HLOD levels this component should be excluded from |
| bIsVisibilityGridProxy | uint8 | Whether to render the primitive in the early z pass for mobile platform.    	 If |
| CanBeCharacterBase_DEPRECATED | TEnumAsByte < enum ECanBeCharacterBase > |  |
| LpvBiasMultiplier | float | Multiplier used to scale the Light Propagation Volume light injection bias, to r |
| bCoastline | uint8 | if true, primitive will be collected as coastline |

## Functions

### SetLightingChannels

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bChannel0Open | bool  |  |
| bChannel1Open | bool  |  |
| bChannel2Open | bool |  |

**Return:** void  

### IgnoreActorWhenMoving

Tells this component whether to ignore collision with all components of a specific Actor when this component is moved.
	  Components on the other Actor may also need to be told to do the same when they move.
	  Does not affect movement of this component when simulating physics.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  |  |
| bShouldIgnore | bool |  |

**Return:** void  

### CopyArrayOfMoveIgnoreActors

Returns the list of actors we currently ignore when moving.

**Return:** TArray < AActor * > 

### ClearMoveIgnoreActors

Clear the list of actors we ignore when moving.

**Return:** void 

### IgnoreComponentWhenMoving

Tells this component whether to ignore collision with another component when this component is moved.
	 The other components may also need to be told to do the same when they move.
	 Does not affect movement of this component when simulating physics.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | UPrimitiveComponent *  |  |
| bShouldIgnore | bool |  |

**Return:** void  

### CopyArrayOfMoveIgnoreComponents

Returns the list of actors we currently ignore when moving.

**Return:** TArray < UPrimitiveComponent * > 

### ClearMoveIgnoreComponents

Clear the list of components we ignore when moving.

**Return:** void 

### IsOverlappingComponent

Check whether this component is overlapping another component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OtherComp | UPrimitiveComponent * | Component to test this component against. |

**Return:** bool  Whether this component is overlapping another component.

### IsOverlappingActor

Check whether this component is overlapping any component of the given Actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Other | AActor * | Actor to test this component against. |

**Return:** bool  Whether this component is overlapping any component of the given Actor.

### GetOverlappingActors

Returns a list of actors that this component is overlapping.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OverlappingActors | TArray < AActor * > &  | [out] Returned list of overlapping actors |
| ClassFilter | TSubclassOf < AActor > |  [optional] If set, only returns actors of this class or subclasses |

**Return:** void  

### GetOverlappingComponents

Returns list of components this component is overlapping.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOverlappingComponents | TArray < UPrimitiveComponent * > & |  |

**Return:** void  

### SetBoundsScale

Scale the bounds of this object, used for frustum culling. Useful for features like WorldPositionOffset.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewBoundsScale | float |  |

**Return:** void  

### GetBoundsScale

**Return:** float 

### GetMaterial

Returns the material used by the element at the specified index

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32 | - The element to access the material of. |

**Return:** UMaterialInterface *  the material used by the indexed element of this mesh.

### SetMaterial

Changes the material applied to an element of the mesh.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32  | - The element to access the material of. |
| Material | UMaterialInterface * |  |

**Return:** void  the material used by the indexed element of this mesh.

### SetMaterialByName

Changes the material applied to an element of the mesh.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| MaterialSlotName | FName  | - The slot name to access the material of. |
| Material | UMaterialInterface * |  |

**Return:** void  the material used by the indexed element of this mesh.

### CreateAndSetMaterialInstanceDynamic

Creates a Dynamic Material Instance for the specified element index.  The parent of the instance is set to the material being replaced.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32 | - The index of the skin to replace the material for. If invalid, the material is unchanged and NULL is returned. |

**Return:** UMaterialInstanceDynamic *  

### CreateAndSetMaterialInstanceDynamicFromMaterial

Creates a Dynamic Material Instance for the specified element index.  The parent of the instance is set to the material being replaced.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32  | - The index of the skin to replace the material for. If invalid, the material is unchanged and NULL is returned. |
| Parent | UMaterialInterface * |  |

**Return:** UMaterialInstanceDynamic *  

### CreateDynamicMaterialInstance

Creates a Dynamic Material Instance for the specified element index, optionally from the supplied material.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElementIndex | int32  | - The index of the skin to replace the material for. If invalid, the material is unchanged and NULL is returned. |
| SourceMaterial | UMaterialInterface * |  |

**Return:** UMaterialInstanceDynamic *  

### GetMaterialFromCollisionFaceIndex

Try and retrieve the material applied to a particular collision face of mesh. Used with face index returned from collision trace.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FaceIndex | int32  | Face index from hit result that was hit by a trace |
| SectionIndex | int32 & | Section of the mesh that the face belongs to |

**Return:** UMaterialInterface *  				Material applied to section that the hit face belongs to

### GetWalkableSlopeOverride

Returns the slope override struct for this component.

**Return:** const struct FWalkableSlopeOverride & 

### SetWalkableSlopeOverride

Sets a new slope override for this component instance.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewOverride | FWalkableSlopeOverride & |  |

**Return:** void  

### SetSimulatePhysics

Sets whether or not a single body should use physics simulation, or should be 'fixed' (kinematic).
	 	Note that if this component is currently attached to something, beginning simulation will detach it.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bSimulate | bool | New simulation state for single body |

**Return:** void  

### SetLockedAxis

Sets the constraint mode of the component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LockedAxis | EDOFMode :: Type |  |

**Return:** void  

### SetConstraintMode

Sets the constraint mode of the component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConstraintMode | EDOFMode :: Type | The type of constraint to use. |

**Return:** void  

### AddImpulse

Add an impulse to a single rigid body. Good for one time instant burst.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  | Magnitude and direction of impulse to apply. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply impulse to. 'None' indicates root body. |
| bVelChange | bool | If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no affect). |

**Return:** void  

### AddAngularImpulse

Add an angular impulse to a single rigid body. Good for one time instant burst.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  |  |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body. |
| bVelChange | bool | If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect). |

**Return:** void  

### AddAngularImpulseInRadians

Add an angular impulse to a single rigid body. Good for one time instant burst.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  |  |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body. |
| bVelChange | bool | If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect). |

**Return:** void  

### AddAngularImpulseInDegrees

Add an angular impulse to a single rigid body. Good for one time instant burst.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  |  |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply angular impulse to. 'None' indicates root body. |
| bVelChange | bool | If true, the Strength is taken as a change in angular velocity instead of an impulse (ie. mass will have no effect). |

**Return:** void  

### AddImpulseAtLocation

Add an impulse to a single rigid body at a specific location.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Impulse | FVector  | Magnitude and direction of impulse to apply. |
| Location | FVector  | Point in world space to apply impulse at. |
| BoneName | FName | If a SkeletalMeshComponent, name of bone to apply impulse to. 'None' indicates root body. |

**Return:** void  

### AddRadialImpulse

Add an impulse to all rigid bodies in this component, radiating out from the specified position.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Origin | FVector  | Point of origin for the radial impulse blast, in world space |
| Radius | float  | Size of radial impulse. Beyond this distance from Origin, there will be no affect. |
| Strength | float  | Maximum strength of impulse applied to body. |
| Falloff | ERadialImpulseFalloff  | Allows you to control the strength of the impulse as a function of distance from Origin. |
| bVelChange | bool | If true, the Strength is taken as a change in velocity instead of an impulse (ie. mass will have no affect). |

**Return:** void  

### AddForce

Add a force to a single rigid body.
	   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  |  Force vector to apply. Magnitude indicates strength of force. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |
| bAccelChange | bool | If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no affect). |

**Return:** void  

### AddForce_AssumesLocked

Add a force to a single rigid body.
   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
 
 	Notice: AssumesLocked   yufeiili 未加锁版本

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  |  Force vector to apply. Magnitude indicates strength of force. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |
| bAccelChange | bool | If true, Force is taken as a change in acceleration instead of a physical force (i.e. mass will have no affect). |

**Return:** void  

### AddForceAtLocation

Add a force to a single rigid body at a particular location in world space.
	   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  | Force vector to apply. Magnitude indicates strength of force. |
| Location | FVector  | Location to apply force, in world space. |
| BoneName | FName | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |

**Return:** void  

### AddForceAtLocation_AssumesLocked

Add a force to a single rigid body at a particular location in world space.
   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
 
 	Notice: AssumesLocked   yufeiili 未加锁版本

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  | Force vector to apply. Magnitude indicates strength of force. |
| Location | FVector  | Location to apply force, in world space. |
| BoneName | FName | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |

**Return:** void  

### AddForceAtLocationLocal

Add a force to a single rigid body at a particular location. Both Force and Location should be in body space.
	   This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Force | FVector  | Force vector to apply. Magnitude indicates strength of force. |
| Location | FVector  | Location to apply force, in component space. |
| BoneName | FName | If a SkeletalMeshComponent, name of body to apply force to. 'None' indicates root body. |

**Return:** void  

### AddRadialForce

Add a force to all bodies in this component, originating from the supplied world-space location.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Origin | FVector  | Origin of force in world space. |
| Radius | float  | Radius within which to apply the force. |
| Strength | float  | Strength of force to apply. |
| Falloff | ERadialImpulseFalloff  | Allows you to control the strength of the force as a function of distance from Origin. |
| bAccelChange | bool | If true, Strength is taken as a change in acceleration instead of a physical force (i.e. mass will have no affect). |

**Return:** void  

### AddTorque

Add a torque to a single rigid body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Torque | FVector  | Torque to apply. Direction is axis of rotation and magnitude is strength of torque. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body. |
| bAccelChange | bool | If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect). |

**Return:** void  

### AddTorqueInRadians

Add a torque to a single rigid body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Torque | FVector  | Torque to apply. Direction is axis of rotation and magnitude is strength of torque. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body. |
| bAccelChange | bool | If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect). |

**Return:** void  

### AddTorqueInRadians_AssumesLocked

Add a torque to a single rigid body.
	 	assumesLocked yufeiii 未加锁版本

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Torque | FVector  | Torque to apply. Direction is axis of rotation and magnitude is strength of torque. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body. |
| bAccelChange | bool | If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect). |

**Return:** void  

### AddTorqueInDegrees

Add a torque to a single rigid body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Torque | FVector  | Torque to apply. Direction is axis of rotation and magnitude is strength of torque. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body. |
| bAccelChange | bool | If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect). |

**Return:** void  

### AddTorqueInDegrees_AssumesLocked

Add a torque to a single rigid body.
	 	Notice: AssumesLocked   yufeiili 未加锁版本

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Torque | FVector  | Torque to apply. Direction is axis of rotation and magnitude is strength of torque. |
| BoneName | FName  | If a SkeletalMeshComponent, name of body to apply torque to. 'None' indicates root body. |
| bAccelChange | bool | If true, Torque is taken as a change in angular acceleration instead of a physical torque (i.e. mass will have no effect). |

**Return:** void  

### SetPhysicsLinearVelocity

Set the linear velocity of a single body.
	 	This should be used cautiously - it may be better to use AddForce or AddImpulse.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVel | FVector  |  New linear velocity to apply to physics. |
| bAddToCurrent | bool  | If true, NewVel is added to the existing velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify velocity of. 'None' indicates root body. |

**Return:** void  

### GetPhysicsLinearVelocity

Get the linear velocity of a single body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body. |

**Return:** FVector  

### GetPhysicsLinearVelocity_AssumesLocked

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** FVector  

### GetPhysicsLinearVelocityAtPoint

Get the linear velocity of a point on a single body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FVector  |  Point is specified in world space. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body. |

**Return:** FVector  

### SetAllPhysicsLinearVelocity

Set the linear velocity of all bodies in this component.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewVel | FVector  |  New linear velocity to apply to physics. |
| bAddToCurrent | bool | If true, NewVel is added to the existing velocity of the body. |

**Return:** void  

### SetPhysicsAngularVelocity

Set the angular velocity of a single body.
	 	This should be used cautiously - it may be better to use AddTorque or AddImpulse.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAngVel | FVector  | New angular velocity to apply to body, in degrees per second. |
| bAddToCurrent | bool  | If true, NewAngVel is added to the existing angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body. |

**Return:** void  

### SetPhysicsAngularVelocityInRadians

Set the angular velocity of a single body.
	 	This should be used cautiously - it may be better to use AddTorque or AddImpulse.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAngVel | FVector  | New angular velocity to apply to body, in radians per second. |
| bAddToCurrent | bool  | If true, NewAngVel is added to the existing angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body. |

**Return:** void  

### SetPhysicsAngularVelocityInDegrees

Set the angular velocity of a single body.
	 	This should be used cautiously - it may be better to use AddTorque or AddImpulse.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAngVel | FVector  | New angular velocity to apply to body, in degrees per second. |
| bAddToCurrent | bool  | If true, NewAngVel is added to the existing angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify angular velocity of. 'None' indicates root body. |

**Return:** void  

### SetPhysicsMaxAngularVelocity

Set the maximum angular velocity of a single body.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMaxAngVel | float  | New maximum angular velocity to apply to body, in degrees per second. |
| bAddToCurrent | bool  | If true, NewMaxAngVel is added to the existing maximum angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body. |

**Return:** void  

### SetPhysicsMaxAngularVelocityInDegrees

Set the maximum angular velocity of a single body.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMaxAngVel | float  | New maximum angular velocity to apply to body, in degrees per second. |
| bAddToCurrent | bool  | If true, NewMaxAngVel is added to the existing maximum angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body. |

**Return:** void  

### SetPhysicsMaxAngularVelocityInRadians

Set the maximum angular velocity of a single body.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMaxAngVel | float  | New maximum angular velocity to apply to body, in radians per second. |
| bAddToCurrent | bool  | If true, NewMaxAngVel is added to the existing maximum angular velocity of the body. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to modify maximum angular velocity of. 'None' indicates root body. |

**Return:** void  

### GetPhysicsAngularVelocity

Get the angular velocity of a single body, in degrees per second.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body. |

**Return:** FVector  

### GetPhysicsAngularVelocity_AssumesLocked

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** FVector  

### GetPhysicsAngularVelocityInDegrees

Get the angular velocity of a single body, in degrees per second.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body. |

**Return:** FVector  

### GetPhysicsAngularVelocityInDegrees_AssumesLocked

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** FVector  

### GetPhysicsAngularVelocityInRadians

Get the angular velocity of a single body, in radians per second.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get velocity of. 'None' indicates root body. |

**Return:** FVector  

### GetPhysicsAngularVelocityInRadians_AssumesLocked

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  |

**Return:** FVector  

### GetCenterOfMass

Get the center of mass of a single body. In the case of a welded body this will return the center of mass of the entire welded body (including its parent and children)
	   Objects that are not simulated return (0,0,0) as they do not have COM

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName |  If a SkeletalMeshComponent, name of body to get center of mass of. 'None' indicates root body. |

**Return:** FVector  

### SetCenterOfMass

Set the center of mass of a single body. This will offset the physx-calculated center of mass.
		Note that in the case where multiple bodies are attached together, the center of mass will be set for the entire group.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CenterOfMassOffset | FVector  | User specified offset for the center of mass of this object, from the calculated location. |
| BoneName | FName |  If a SkeletalMeshComponent, name of body to set center of mass of. 'None' indicates root body. |

**Return:** void  

### WakeRigidBody

'Wake' physics simulation for a single body.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName | If a SkeletalMeshComponent, name of body to wake. 'None' indicates root body. |

**Return:** void  

### PutRigidBodyToSleep

Force a single body back to sleep.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BoneName | FName | If a SkeletalMeshComponent, name of body to put to sleep. 'None' indicates root body. |

**Return:** void  

### SetNotifyRigidBodyCollision

Changes the value of bNotifyRigidBodyCollision

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewNotifyRigidBodyCollision | bool | - The value to assign to bNotifyRigidBodyCollision |

**Return:** void  

### SetOwnerNoSee

Changes the value of bOwnerNoSee.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewOwnerNoSee | bool |  |

**Return:** void  

### SetOnlyOwnerSee

Changes the value of bOnlyOwnerSee.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewOnlyOwnerSee | bool |  |

**Return:** void  

### SetDrawIdeaOutline

Changes the value of DrawOutline.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewDrawOutline | bool |  |

**Return:** void  

### SetIdeaOutlineUseNormalInVertexColor

Changes whether use the new outline method which uses normal vectors in vertex colors

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewUseNormalInVertexColor | bool |  |

**Return:** void  

### SetIdeaOutlineNew

Should only be used in  and Home branch for now. This may significantly increase outline cost. Be sure you need this feature before you enable it. 
	 Changes whether use the new outline pass.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNew | bool |  |

**Return:** void  

### SetIdeaOutlineUseOutlineMesh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUseOutlineMesh | bool |  |

**Return:** void  

### SetIdeaOutlineOcclusionHighlight

Changes whether use the occlusion highlight

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOcclusionHighlight | bool |  |

**Return:** void  

### SetDisableWriteDepthForOcclusionHighlight

Changes whether to occlude other primitives' highlight. if this is already occlude highlight, it won't write depth and this flag make no use.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDisable | bool |  |

**Return:** void  

### SetIdeaOverrideOutlineAndOcclusion

Override outline settings to enable both outline and occlusion

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOutlineAndOcclusion | bool |  |

**Return:** void  

### SetDrawIdeaOutlineInHighlightPass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bHighlight | bool |  |

**Return:** void  

### SetIdeaOutlineNewUseBackFace

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUseBackFace | bool |  |

**Return:** void  

### OverrideIdeaOutlineColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOverride | bool  |  |
| InOutlineColor | FLinearColor & |  |

**Return:** void  

### OverrideIdeaOutlineThickness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOverride | bool  |  |
| InThickness | float |  |

**Return:** void  

### SetIdeaOutlineOcclusionColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOcclusionColor | FLinearColor & |  |

**Return:** void  

### SetIdeaOutline_UGC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bDrawOutline | bool |  |

**Return:** void  

### SetIdeaOutlineOcclusionHighlight_UGC

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOcclusionHighlight | bool |  |

**Return:** void  

### SetOutlineMesh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StaticMesh | UStaticMesh * |  |

**Return:** void  

### SetDrawHighlight

Turn onoff the highlight rendering for this primitive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewDrawHighlight | bool |  |

**Return:** void  

### SetHighlightCanBeOccluded

Changes whether the highlight mesh of this primitive can be occluded

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInCanBeOccluded | bool |  |

**Return:** void  

### OverrideHighlightColor

Override the highlight color for this primitive

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bOverride | bool  | - If true, override the highlight color using InHighlightColor. If false, use the default color in HighlightMaterial. |
| InHighlightColor | FLinearColor | - New color used for highlight rendering |

**Return:** void  

### SetDrawDyeing

Changes the value of DrawDyeing.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewDrawOutline | bool |  |

**Return:** void  

### SetDrawDyeingMode

Changes the value of DrawDyeingMode.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDrawDyeingMode | EDrawDyeingMode |  |

**Return:** void  

### SetVisibleDyeingColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColor | FLinearColor & |  |

**Return:** void  

### SetOccludedDyeingColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColor | FLinearColor & |  |

**Return:** void  

### SetReveiceShadow

Changes the value of bReveiceShadow.(by jinglei)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewReveiceShadow | bool |  |

**Return:** void  

### SetCastShadow

Changes the value of CastShadow.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewCastShadow | bool |  |

**Return:** void  

### SetCastInsetShadow

Changes the value of CastInsetShadow.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInCastInsetShadow | bool |  |

**Return:** void  

### SetLightAttachmentsAsGroup

Changes the value of LightAttachmentsAsGroup.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInLightAttachmentsAsGroup | bool |  |

**Return:** void  

### SetCastPhotonShadow

WITH_PHOTON_SHADOW 
	 Set cast photon shadow.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewCastPhotonShadow | bool |  |

**Return:** void  

### SetSingleSampleShadowFromStationaryLights

Changes the value of bSingleSampleShadowFromStationaryLights.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewSingleSampleShadowFromStationaryLights | bool |  |

**Return:** void  

### SetTranslucentSortPriority

Changes the value of TranslucentSortPriority.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTranslucentSortPriority | int32 |  |

**Return:** void  

### SetReceivesDecals

Changes the value of bReceivesDecals.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewReceivesDecals | bool |  |

**Return:** void  

### SetCollisionEnabled

Controls what kind of collision is enabled for this body

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewType | ECollisionEnabled :: Type |  |

**Return:** void  

### SetCollisionProfileName

Set Collision Profile Name
	  This function is called by constructors when they set ProfileName
	  This will change current CollisionProfileName to be this, and overwrite Collision Setting
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InCollisionProfileName | FName | : New Profile Name |

**Return:** void  

### GetCollisionProfileName

Get the collision profile name

**Return:** FName 

### SetCollisionObjectType

Changes the collision channel that this object uses when it moves

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Channel | ECollisionChannel |  |

**Return:** void