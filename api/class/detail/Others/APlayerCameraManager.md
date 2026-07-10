---
title: APlayerCameraManager
language: cpp
---

# APlayerCameraManager

A PlayerCameraManager is responsible for managing the camera for a particular
  player. It defines the final view properties used by other systems (e.g. the renderer),
  meaning you can think of it as your virtual eyeball in the world. It can compute the 
  final camera properties directly, or it can arbitrateblend between other objects or 
  actors that influence the camera (e.g. blending from one CameraActor to another).
  
  The PlayerCameraManagers primary external responsibility is to reliably respond to
  various Get() functions, such as GetCameraViewPoint. Most everything else is
  implementation detail and overrideable by user projects.
  
  By default, a PlayerCameraManager maintains a "view target", which is the primary actor
  the camera is associated with. It can also apply various "post" effects to the final 
  view state, such as camera animations, shakes, post-process effects or special 
  effects such as dirt on the lens.

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| PCOwner | APlayerController * | PlayerController that owns this Camera actor |
| TransformComponent | USceneComponent * | Dummy component we can use to attach things to the camera. |
| DefaultFOV | float | FOV to use by default. |
| DefaultOrthoWidth | float | The default desired width (in world units) of the orthographic view (ignored in  |
| DefaultAspectRatio | float | Default aspect ratio (used when a view target override the aspect ratio and bCon |
| CameraCache | FCameraCacheEntry | Cached camera properties. |
| LastFrameCameraCache | FCameraCacheEntry | Cached camera properties, one frame old. |
| ViewTarget | FTViewTarget | Current ViewTarget |
| PendingViewTarget | FTViewTarget | Pending view target for blending |
| CachedViewPOV | FMinimalViewInfo | If This POV is not null, Use this Value to Blend Target |
| ModifierList | TArray < UCameraModifier * > | List of active camera modifier instances that have a chance to update the final  |
| DefaultModifiers | TArray < TSubclassOf < UCameraModifier > > | List of modifiers to create by default for this camera |
| FreeCamDistance | float | Distance to place free camera from view target (used in certain CameraStyles) |
| FreeCamOffset | FVector | Offset to Z free camera position (used in certain CameraStyles) |
| ViewTargetOffset | FVector | Offset to view target (used in certain CameraStyles) |
| CameraLensEffects | TArray < AEmitterCameraLensEffectBase * > | CameraBlood emitter attached to this camera |
| CachedCameraShakeMod | UCameraModifier_CameraShake * | Cached ref to modifier for code-driven screen shakes |
| AnimInstPool | UCameraAnimInst * | Internal pool of camera anim instance objects available for playing camera anima |
| PostProcessBlendCache | TArray < struct FPostProcessSettings > | Internal pool of camera anim instance objects available for playing camera anima |
| ActiveAnims | TArray < UCameraAnimInst * > | Array of camera anim instances that are currently playing and in-use |
| FreeAnims | TArray < UCameraAnimInst * > | Array of camera anim instances that are not playing and available to be used. |
| AnimCameraActor | ACameraActor * | Internal. Receives the output of individual camera animations. |
| bIsOrthographic | uint32 | True when this camera should use an orthographic perspective instead of FOV |
| bDefaultConstrainAspectRatio | uint32 | True if black bars should be added if the destination view has a different aspec |
| bUseClientSideCameraUpdates | uint32 | True if server will use camera positions replicated from the client instead of c |
| bGameCameraCutThisFrame | uint32 | True if we did a camera cut this frame. Automatically reset to false every frame |
| SendServerUpdateCameraInterval | float |  |
| ViewPitchMin | float | Minimum view pitch, in degrees. |
| ViewPitchMax | float | Maximum view pitch, in degrees. |
| ViewYawMin | float | Minimum view yaw, in degrees. |
| ViewYawMax | float | Maximum view yaw, in degrees. |
| ViewRollMin | float | Minimum view roll, in degrees. |
| ViewRollMax | float | Maximum view roll, in degrees. |
| BaseCamAnimTrans | FTransform |  |
| NotifyCameraActor | ACameraActor * |  |

## Functions

### SetViewPitchMin

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InViewPitchMin | float |  |

**Return:** void  

### GetViewPitchMin

**Return:** float 

### SetViewPitchMax

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InViewPitchMax | float |  |

**Return:** void  

### GetViewPitchMax

**Return:** float 

### PhotographyCameraModify

Implementable blueprint hook to allow a PlayerCameraManager subclass to
	 constrain or otherwise modify the camera during free-camera photography.
	 For example, a blueprint may wish to limit the distance from the camera's
	 original point, or forbid the camera from passing through walls.
	 NewCameraLocation contains the proposed new camera location.
	 PreviousCameraLocation contains the camera location in the previous frame.
	 OriginalCameraLocation contains the camera location before the game was put
	 into photography mode.
	 Return ResultCameraLocation as modified according to your constraints.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewCameraLocation | FVector  |  |
| PreviousCameraLocation | FVector  |  |
| OriginalCameraLocation | FVector  |  |
| ResultCameraLocation | FVector & |  |

**Return:** void  

### OnPhotographySessionStart

Event triggered upon entering Photography mode (before pausing, if
	 r.Photography.AutoPause is 1).

**Return:** void 

### OnPhotographySessionEnd

Event triggered upon leaving Photography mode (after unpausing, if
	 r.Photography.AutoPause is 1).

**Return:** void 

### OnPhotographyMultiPartCaptureStart

Event triggered upon the start of a multi-part photograph capture (i.e. a
	 stereoscopic or 360-degree shot).  This is an ideal time to turn off
	 rendering effects that tile badly (UI, subtitles, vignette, very aggressive
	 bloom, etc; most of these are automatically disabled when
	 r.Photography.AutoPostprocess is 1).

**Return:** void 

### OnPhotographyMultiPartCaptureEnd

Event triggered upon the end of a multi-part photograph capture, when manual
	 free-roaming photographic camera control is about to be returned to the user.
	 Here you may re-enable whatever was turned off within
	 OnPhotographyMultiPartCaptureStart.

**Return:** void 

### BlueprintUpdateCamera

Blueprint hook to allow blueprints to override existing camera behavior or implement custom cameras.
	  If this function returns true, we will use the given returned values and skip further calculations to determine
	  final camera POV.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CameraTarget | AActor *  |  |
| NewCameraLocation | FVector &  |  |
| NewCameraRotation | FRotator &  |  |
| NewCameraFOV | float & |  |

**Return:** bool  

### GetOwningPlayerController

Returns the PlayerController that owns this camera.

**Return:** APlayerController * 

### SetCachedViewPOV

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Setup | bool |  |

**Return:** void  

### GetViewTarget

**Return:** AActor * the current ViewTarget.

### AddNewCameraModifier

Creates and initializes a new camera modifier of the specified class. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ModifierClass | TSubclassOf < UCameraModifier > | - The class of camera modifier to create. |

**Return:** UCameraModifier *  Returns the newly created camera modifier.

### FindCameraModifierByClass

Returns camera modifier for this camera of the given class, if it exists. 
	  Exact class match only. If there are multiple modifiers of the same class, the first one is returned.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ModifierClass | TSubclassOf < UCameraModifier >  |  |
| bIncludeSuper | bool |  |

**Return:** UCameraModifier *  

### RemoveCameraModifier

Removes the given camera modifier from this camera (if it's on the camera in the first place) and discards it. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ModifierToRemove | UCameraModifier * |  |

**Return:** bool  True if successfully removed, false otherwise.

### GetFOVAngle

**Return:** float Returns the camera's current full FOV angle, in degrees.

### SetFOV

Locks the FOV to the given value.  Unlock with UnlockFOV.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFOV | float | - New full FOV angle to use, in degrees. |

**Return:** void  

### UnlockFOV

Unlocks the FOV.

**Return:** void 

### GetCameraRotation

**Return:** FRotator Returns camera's current rotation.

### GetCameraLocation

**Return:** FVector Returns camera's current location.

### AddCameraLensEffect

Creates a camera lens effect of the given class on this camera. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LensEffectEmitterClass | TSubclassOf < AEmitterCameraLensEffectBase > | - Class of lens effect emitter to create. |

**Return:** AEmitterCameraLensEffectBase *  Returns the new emitter actor.

### RemoveCameraLensEffect

Removes the given lens effect from the camera. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Emitter | AEmitterCameraLensEffectBase * | - the emitter actor to remove from the camera |

**Return:** void  

### ClearCameraLensEffects

Removes all camera lens effects.

**Return:** void 

### PlayCameraShake

Plays a camera shake on this camera.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShakeClass | TSubclassOf < UCameraShake >  |  |
| Scale | float  | - Scalar defining how "intense" to play the shake. 1.0 is normal (as authored). |
| PlaySpace | ECameraAnimPlaySpace :: Type  | - Which coordinate system to play the shake in (affects oscillations and camera anims) |
| UserPlaySpaceRot | FRotator | - Coordinate system to play shake when PlaySpace == CAPS_UserDefined. |

**Return:** UCameraShake *  

### PlayCameraShakeWithWorldLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShakeClass | TSubclassOf < UCameraShake >  |  |
| WorldLocation | FVector  |  |
| Scale | float  |  |
| PlaySpace | ECameraAnimPlaySpace :: Type  |  |
| UserPlaySpaceRot | FRotator |  |

**Return:** UCameraShake *  

### StopCameraShake

Immediately stops the given shake instance and invalidates it.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShakeInstance | UCameraShake *  |  |
| bImmediately | bool |  |

**Return:** void  

### StopAllInstancesOfCameraShake

Stops playing CameraShake of the given class.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Shake | TSubclassOf < UCameraShake >  |  |
| bImmediately | bool |  |

**Return:** void  

### StopAllCameraShakes

Stops all active camera shakes on this camera.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bImmediately | bool |  |

**Return:** void  

### StartCameraFade

Does a camera fade tofrom a solid color.  Animates automatically.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FromAlpha | float  | - Alpha at which to begin the fade. Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color. |
| ToAlpha | float  | - Alpha at which to finish the fade. |
| Duration | float  | - How long the fade should take, in seconds. |
| Color | FLinearColor  | - Color to fade tofrom. |
| bShouldFadeAudio | bool  | - True to fade audio volume along with the alpha of the solid color. |
| bHoldWhenFinished | bool | - True for fade to hold at the ToAlpha until explicitly stopped (e.g. with StopCameraFade) |

**Return:** void  

### StopCameraFade

Stops camera fading.

**Return:** void 

### SetManualCameraFade

Turns on camera fading at the given opacity. Does not auto-animate, allowing user to animate themselves.
	  Call StopCameraFade to turn fading back off.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFadeAmount | float  |  |
| Color | FLinearColor  |  |
| bInFadeAudio | bool |  |

**Return:** void  

### PlayCameraAnim

Play the indicated CameraAnim on this camera.
	  

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Anim | UCameraAnim *  | The animation that should play on this instance. |
| Rate | float  |  How fast to play the animation. 1.0 is normal. |
| Scale | float  |  How "intense" to play the animation. 1.0 is normal. |
| BlendInTime | float  | Time to linearly ramp in. |
| BlendOutTime | float  | Time to linearly ramp out. |
| bLoop | bool  |  True to loop the animation if it hits the end. |
| bRandomStartTime | bool  | Whether or not to choose a random time to start playing. Useful with bLoop=true and a duration to randomize things like shakes. |
| Duration | float  |  Optional total playtime for this animation, including blends. 0 means to use animations natural duration, or infinite if looping. |
| PlaySpace | ECameraAnimPlaySpace :: Type  |  Which space to play the animation in. |
| UserPlaySpaceRot | FRotator | Custom play space, used when PlaySpace is UserDefined. |

**Return:** UCameraAnimInst *  The CameraAnim instance, which can be stored to manipulatestop the anim after the fact.

### StopAllInstancesOfCameraAnim

Stop playing all instances of the indicated CameraAnim.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Anim | UCameraAnim *  |  |
| bImmediate | bool | True to stop it right now and ignore blend out, false to let it blend out as indicated. |

**Return:** void  

### StopCameraAnimInst

Stops the given CameraAnimInst from playing.  The given pointer should be considered invalid after this. 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimInst | UCameraAnimInst *  |  |
| bImmediate | bool | True to stop it right now and ignore blend out, false to let it blend out as indicated. |

**Return:** void  

### StopAllCameraAnims

Stop playing all CameraAnims on this CameraManager.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bImmediate | bool | True to stop it right now and ignore blend out, false to let it blend out as indicated. |

**Return:** void