---
title: UGameplayStatics
language: cpp
---

# UGameplayStatics

> Inheritance: UBlueprintFunctionLibrary

## Functions

### SpawnObject

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectClass | TSubclassOf < UObject >  |  |
| Outer | UObject * |  |

**Return:** UObject *  

### BeginSpawningActorFromBlueprint

生成指定蓝图类的实例，但不自动执行构造函数

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| Blueprint | UBlueprint *  | 蓝图类 |
| SpawnTransform | FTransform &  | 生成Actor的Transform |
| bNoCollisionFail | bool |  |

**Return:** AActor *  Actor实例

### BeginSpawningActorFromClass

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActorClass | TSubclassOf < AActor >  |  |
| SpawnTransform | FTransform &  |  |
| bNoCollisionFail | bool  |  |
| Owner | AActor * |  |

**Return:** AActor *  

### BeginDeferredActorSpawnFromClass

Spawns an instance of an actor class, but does not automatically run its construction script.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActorClass | TSubclassOf < AActor >  |  |
| SpawnTransform | FTransform &  |  |
| CollisionHandlingOverride | ESpawnActorCollisionHandlingMethod  |  |
| Owner | AActor * |  |

**Return:** AActor *  

### FinishSpawningActor

结束生成Actor，执行Actor的构造函数

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actor | AActor *  | Actor实例 |
| SpawnTransform | FTransform & | 生成Actor的Transform |

**Return:** AActor *  Actor实例

### GetActorArrayAverageLocation

Find the average location (centroid) of an array of Actors

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actors | TArray < AActor * > & |  |

**Return:** FVector  

### GetActorArrayBounds

Bind the bounds of an array of Actors

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Actors | TArray < AActor * > &  |  |
| bOnlyCollidingComponents | bool  |  |
| Center | FVector &  |  |
| BoxExtent | FVector & |  |

**Return:** void  

### GetAllActorsOfClass

Find all Actors in the world of the specified class.
	 	This is a slow operation, use with caution e.g. do not use every frame.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActorClass | TSubclassOf < AActor >  | Class of Actor to find. Must be specified or result array will be empty. |
| OutActors | TArray < AActor * > & | Output array of Actors of the specified class. |

**Return:** void  

### GetFirstActorOfClass

Find one Actor in the world of the specified class.
		This is a slow operation, use with caution e.g. do not use every frame.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ActorClass | TSubclassOf < AActor > | Class of Actor to find. Must be specified or result array will be empty. |

**Return:** AActor *  

### GetAllActorsWithInterface

Find all Actors in the world with the specified interface.
	 	This is a slow operation, use with caution e.g. do not use every frame.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Interface | TSubclassOf < UInterface >  | Interface to find. Must be specified or result array will be empty. |
| OutActors | TArray < AActor * > & | Output array of Actors of the specified interface. |

**Return:** void  

### GetAllActorsWithTag

获取拥有指定Tag的所有Actor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| Tag | FName  | Tag名称 |
| OutActors | TArray < AActor * > & | 输出的Actor列表 |

**Return:** void  

### GetGameInstance

获取GameInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** UGameInstance *  GameInstance

### GetCurrentGameInstance

**Return:** UGameInstance * 

### GetPlayerController

获取PlayerController

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| PlayerIndex | int32 |  |

**Return:** APlayerController *  PlayerController

### GetPlayerPawn

获取PlayerPawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| PlayerIndex | int32 |  |

**Return:** APawn *  PlayerPawn

### GetPlayerCharacter

获取PlayerCharacter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| PlayerIndex | int32 |  |

**Return:** ACharacter *  PlayerCharacter

### GetPlayerCameraManager

获取PlayerCameraManager

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| PlayerIndex | int32 |  |

**Return:** APlayerCameraManager *  PlayerCameraManager

### CreatePlayer

Create a new player for this game.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ControllerId | int32  | The ID of the controller that the should control the newly created player. A value of -1 specifies to use the next available ID |
| bSpawnPawn | bool | Whether a pawn should be spawned immediately. If false a pawn will not be created until transition to the next map. |

**Return:** APlayerController *  

### RemovePlayer

Removes a player from this game.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Player | APlayerController *  |  The player controller of the player to be removed |
| bDestroyPawn | bool | Whether the controlled pawn should be deleted as well |

**Return:** void  

### GetPlayerControllerID

Gets what controller ID a Player is using

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Player | APlayerController * | The player controller of the player to get the ID of |

**Return:** int32  		The ID of the passed in player. -1 if there is no controller for the passed in player

### SetPlayerControllerID

Sets what controller ID a Player should be using

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Player | APlayerController *  |  The player controller of the player to change the controller ID of |
| ControllerId | int32 | The controller ID to assign to this player |

**Return:** void  

### LoadStreamLevel

加载子关卡

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| LevelName | FName  | 子关卡名称 |
| bMakeVisibleAfterLoad | bool  | 加载后是否显示 |
| bShouldBlockOnLoad | bool  | 加载时是否阻塞 |
| LatentInfo | FLatentActionInfo | 回调信息结构 |

**Return:** void  

### UnloadStreamLevel

加载子关卡

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| LevelName | FName  | 子关卡名称 |
| LatentInfo | FLatentActionInfo | 回调信息结构 |

**Return:** void  

### GetStreamingLevel

Returns level streaming object with specified level package name

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PackageName | FName |  |

**Return:** ULevelStreaming *  

### FlushLevelStreaming

刷新关卡流，直到所有子关卡加载完毕时返回

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** void  

### FlushLevelStreamingBasedOnCharacterLocation

更新玩家的位置，触发LevelBounds，然后加载所有关卡

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| CharacterLocation | FVector |  |

**Return:** void  

### FlushAllStreamingResource

触发TextureStreaming， 将贴图全部加载完毕

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** void  

### CancelAsyncLoading

Cancels all currently queued streaming packages

**Return:** void 

### OpenLevel

Travel to another level
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| LevelName | FName  |  the level to open |
| bAbsolute | bool  |  if true options are reset, if false options are carried over from current level |
| Options | FString |  a string of options to use for the travel URL |

**Return:** void  

### OpenShaderLibrary

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Name | FString &  |  |
| VersionNum | FString & |  |

**Return:** void  

### CloseShaderLibrary

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Name | FString & |  |

**Return:** void  

### EnableShaderGroup

Enable a new ShaderGroup for all opened ShaderCodeLibrary
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GroupName | FString &  |  |
| ShaderPlatform | int32 |  |

**Return:** void  

### EnableShaderLevel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShaderLevelName | FString & |  |

**Return:** void  

### EnableShaderPak

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShaderPakName | FString & |  |

**Return:** void  

### DisableShaderLevel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShaderLevelName | FString & |  |

**Return:** void  

### DisableShaderPak

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShaderPakName | FString & |  |

**Return:** void  

### RestartShaderPrecompile

**Return:** void 

### OpenShaderCodeLibrary

OpenShaderCodeLibrary in Saved Folder
     

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Version | FString & |  |

**Return:** void  

### GetCurrentLevelName

获得当前关卡名称

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| bRemovePrefixString | bool | 是否移除prefix的字符串 |

**Return:** FString  关卡名称

### GetGameMode

获得当前GameMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** AGameModeBase *  当前GameMode

### GetGameState

获得当前GameState

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** AGameStateBase *  当前GameState

### GetGameStateByWorldContext

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** AGameStateBase *  

### GetObjectClass

获得对象的类型

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * | 指定对象 |

**Return:** UClass *  对象的类型

### GetGlobalTimeDilation

获得当前时间膨胀

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** float  Current time dilation.

### SetGlobalTimeDilation

设置时间膨胀

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| TimeDilation | float | 世界的时间膨胀 |

**Return:** void  

### SetGamePaused

设置游戏是否暂停

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | world上下文对象 |
| bPaused | bool | 是否暂停 |

**Return:** bool  Whether the game was successfully pausedunpaused

### IsGamePaused

判断游戏是否暂停

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** bool  Whether the game is currently paused or not

### ApplyRadialDamage

Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| BaseDamage | float  | - The base damage to apply, i.e. the damage at the origin. |
| Origin | FVector &  | - Epicenter of the damage area. |
| DamageRadius | float  | - Radius of the damage area, from Origin |
| DamageTypeClass | TSubclassOf < UDamageType >  | - Class that describes the damage that was done. |
| IgnoreActors | TArray < AActor * > &  |  |
| DamageCauser | AActor *  | - Actor that actually caused the damage (e.g. the grenade that exploded). This actor will not be damaged and it will not block damage. |
| InstigatedByController | AController *  | - Controller that was responsible for causing this damage (e.g. player who threw the grenade) |
| bDoFullDamage | bool  |  |
| DamagePreventionChannel | ECollisionChannel  | - Damage will not be applied to victim if there is something between the origin and the victim which blocks traces on this channel |
| DamageTag | int32 |  |

**Return:** bool  true if damage was applied to at least one actor.

### ApplyRadialDamageWithFalloff

Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| BaseDamage | float  | - The base damage to apply, i.e. the damage at the origin. |
| MinimumDamage | float  |  |
| Origin | FVector &  | - Epicenter of the damage area. |
| DamageInnerRadius | float  | - Radius of the full damage area, from Origin |
| DamageOuterRadius | float  | - Radius of the minimum damage area, from Origin |
| DamageFalloff | float  | - Falloff exponent of damage from DamageInnerRadius to DamageOuterRadius |
| DamageTypeClass | TSubclassOf < UDamageType >  | - Class that describes the damage that was done. |
| IgnoreActors | TArray < AActor * > &  |  |
| DamageCauser | AActor *  | - Actor that actually caused the damage (e.g. the grenade that exploded) |
| InstigatedByController | AController *  | - Controller that was responsible for causing this damage (e.g. player who threw the grenade) |
| DamagePreventionChannel | ECollisionChannel  | - Damage will not be applied to victim if there is something between the origin and the victim which blocks traces on this channel |
| DamageTag | int32 |  |

**Return:** bool  true if damage was applied to at least one actor.

### ApplyPointDamage

Hurts the specified actor with the specified impact.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DamagedActor | AActor *  | - Actor that will be damaged. |
| BaseDamage | float  | - The base damage to apply. |
| HitFromDirection | FVector &  | - Direction the hit came FROM |
| HitInfo | FHitResult &  | - Collision or trace result that describes the hit |
| EventInstigator | AController *  | - Controller that was responsible for causing this damage (e.g. player who shot the weapon) |
| DamageCauser | AActor *  | - Actor that actually caused the damage (e.g. the grenade that exploded) |
| DamageTypeClass | TSubclassOf < UDamageType >  | - Class that describes the damage that was done. |
| DamageTag | int32 |  |

**Return:** float  Actual damage the ended up being applied to the actor.

### ApplyDamage

Hurts the specified actor with generic damage.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DamagedActor | AActor *  | - Actor that will be damaged. |
| BaseDamage | float  | - The base damage to apply. |
| EventInstigator | AController *  | - Controller that was responsible for causing this damage (e.g. player who shot the weapon) |
| DamageCauser | AActor *  | - Actor that actually caused the damage (e.g. the grenade that exploded) |
| DamageTypeClass | TSubclassOf < UDamageType >  | - Class that describes the damage that was done. |
| DamageTag | int32 |  |

**Return:** float  Actual damage the ended up being applied to the actor.

### PlayWorldCameraShake

Plays an in-world camera shake that affects all nearby local players, with distance-based attenuation. Does not replicate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | - Object that we can obtain a world context from |
| Shake | TSubclassOf < UCameraShake >  | - Camera shake asset to use |
| Epicenter | FVector  | - location to place the effect in world space |
| InnerRadius | float  | - Cameras inside this radius are ignored |
| OuterRadius | float  | - Cameras outside of InnerRadius and inside this are effected |
| Falloff | float  | - Affects falloff of effect as it nears OuterRadius |
| bOrientShakeTowardsEpicenter | bool | - Changes the rotation of shake to point towards epicenter instead of forward |

**Return:** void  

### SpawnEmitterAtLocation

Plays the specified effect at the given location and rotation, fire and forget. The system will go away when the effect is complete. Does not replicate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  | - Object that we can obtain a world context from |
| EmitterTemplate | UParticleSystem *  | - particle system to create |
| Location | FVector  | - location to place the effect in world space |
| Rotation | FRotator  | - rotation to place the effect in world space |
| Scale | FVector  | - scale to create the effect at |
| bAutoDestroy | bool | - Whether the component will automatically be destroyed when the particle system completes playing or whether it can be reactivated |

**Return:** UParticleSystemComponent *  

### SpawnEmitterAttached

Plays the specified effect attached to and following the specified component. The system will go away when the effect is complete. Does not replicate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterTemplate | UParticleSystem *  | - particle system to create |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  | - Optional named point within the AttachComponent to spawn the emitter at |
| Location | FVector  | - Depending on the value of LocationType this is either a relative offset from the attach componentpoint or an absolute world location that will be translated to a relative offset (if LocationType is KeepWorldPosition). |
| Rotation | FRotator  | - Depending on the value of LocationType this is either a relative offset from the attach componentpoint or an absolute world rotation that will be translated to a relative offset (if LocationType is KeepWorldPosition). |
| Scale | FVector  | - Depending on the value of LocationType this is either a relative scale from the attach component or an absolute world scale that will be translated to a relative scale (if LocationType is KeepWorldPosition). |
| LocationType | EAttachLocation :: Type  | - Specifies whether Location is a relative offset or an absolute world position |
| bAutoDestroy | bool | - Whether the component will automatically be destroyed when the particle system completes playing or whether it can be reactivated |

**Return:** UParticleSystemComponent *  

### SpawnEmitterAttachedToActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EmitterTemplate | UParticleSystem *  |  |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  |  |
| Location | FVector  |  |
| Rotation | FRotator  |  |
| Scale | FVector  |  |
| LocationType | EAttachLocation :: Type  |  |
| bAutoDestroy | bool |  |

**Return:** UParticleSystemComponent *  

### AreAnyListenersWithinRange

Determines if any audio listeners are within range of the specified location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Location | FVector  | The location to potentially play a sound at |
| MaximumRange | float | The maximum distance away from Location that a listener can be |

**Return:** bool  

### SetGlobalPitchModulation

Sets a global pitch modulation scalar that will apply to all non-UI sounds
	
	  Fire and Forget.
	  Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PitchModulation | float  | - A pitch modulation value to globally set. |
| TimeSec | float | - A time value to linearly interpolate the global modulation pitch over from it's current value. |

**Return:** void  

### SetGlobalListenerFocusParameters

Sets the global listener focus parameters which will scale focus behavior of sounds based on their focus azimuth settings in their attenuation settings.
	
	  Fire and Forget.
	  Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| FocusAzimuthScale | float  | - An angle scale value used to scale the azimuth angle that defines where sounds are in-focus. |
| NonFocusAzimuthScale | float  |  |
| FocusDistanceScale | float  | - A distance scale value to use for sounds which are in-focus. Values < 1.0 will reduce perceived distance to sounds, values > 1.0 will increase perceived distance to in-focus sounds. |
| NonFocusDistanceScale | float  | - A distance scale value to use for sounds which are out-of-focus. Values < 1.0 will reduce perceived distance to sounds, values > 1.0 will increase perceived distance to in-focus sounds. |
| FocusVolumeScale | float  |  |
| NonFocusVolumeScale | float  |  |
| FocusPriorityScale | float  | - A priority scale value (> 0.0) to use for sounds which are in-focus. Values < 1.0 will reduce the priority of in-focus sounds, values > 1.0 will increase the priority of in-focus sounds. |
| NonFocusPriorityScale | float | - A priority scale value (> 0.0) to use for sounds which are out-of-focus. Values < 1.0 will reduce the priority of sounds out-of-focus sounds, values > 1.0 will increase the priority of out-of-focus sounds. |

**Return:** void  

### PlaySound2D

Plays a sound directly with no attenuation, perfect for UI sounds.
	 
	   Fire and Forget.
	   Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sound | USoundBase *  | - Sound to play. |
| VolumeMultiplier | float  | - Multiplied with the volume to make the sound louder or softer. |
| PitchMultiplier | float  | - Multiplies the pitch. |
| StartTime | float  | - How far in to the sound to begin playback at |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| OwningActor | AActor * | - The actor to use as the "owner" for concurrency settings purposes. Allows PlaySound calls to do a concurrency limit per owner. |

**Return:** void  

### SpawnSound2D

Spawns a sound with no attenuation, perfect for UI sounds.
	 
	   Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sound | USoundBase *  | - Sound to play. |
| VolumeMultiplier | float  | - Multiplied with the volume to make the sound louder or softer. |
| PitchMultiplier | float  | - Multiplies the pitch. |
| StartTime | float  | - How far in to the sound to begin playback at |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| bPersistAcrossLevelTransition | bool  |  |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  An audio component to manipulate the spawned sound

### CreateSound2D

Creates a sound with no attenuation, perfect for UI sounds. This does NOT play the sound
	 
	   Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sound | USoundBase *  | - Sound to create. |
| VolumeMultiplier | float  | - Multiplied with the volume to make the sound louder or softer. |
| PitchMultiplier | float  | - Multiplies the pitch. |
| StartTime | float  | - How far in to the sound to begin playback at |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| bPersistAcrossLevelTransition | bool  |  |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  An audio component to manipulate the created sound

### PlaySoundAtLocation

Plays a sound at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sound | USoundBase *  | - sound to play |
| Location | FVector  | - World position to play sound at |
| Rotation | FRotator  | - World rotation to play sound at |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - PitchMultiplier |
| StartTime | float  | - How far in to the sound to begin playback at |
| AttenuationSettings | USoundAttenuation *  | - Override attenuation settings package to play sound with |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| OwningActor | AActor * | - The actor to use as the "owner" for concurrency settings purposes. Allows PlaySound calls to do a concurrency limit per owner. |

**Return:** void  

### SpawnSoundAtLocation

Spawns a sound at the given location. This does not travel with any actor. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Sound | USoundBase *  | - sound to play |
| Location | FVector  | - World position to play sound at |
| Rotation | FRotator  | - World rotation to play sound at |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - PitchMultiplier |
| StartTime | float  | - How far in to the sound to begin playback at |
| AttenuationSettings | USoundAttenuation *  | - Override attenuation settings package to play sound with |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  An audio component to manipulate the spawned sound

### SpawnSoundAttached

Plays a sound attached to and following the specified component. This is a fire and forget sound. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Sound | USoundBase *  | - sound to play |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  | - Optional named point within the AttachComponent to play the sound at |
| Location | FVector  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world position that will be translated to a relative offset |
| Rotation | FRotator  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world rotation that will be translated to a relative offset |
| LocationType | EAttachLocation :: Type  | - Specifies whether Location is a relative offset or an absolute world position |
| bStopWhenAttachedToDestroyed | bool  | - Specifies whether the sound should stop playing when the owner of the attach to component is destroyed. |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - PitchMultiplier |
| StartTime | float  | - How far in to the sound to begin playback at |
| AttenuationSettings | USoundAttenuation *  | - Override attenuation settings package to play sound with |
| ConcurrencySettings | USoundConcurrency *  | - Override concurrency settings package to play sound with |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  An audio component to manipulate the spawned sound

### PlayDialogue2D

Plays a dialogue directly with no attenuation, perfect for UI.
	 
	   Fire and Forget.
	   Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Dialogue | UDialogueWave *  | - dialogue to play |
| Context | FDialogueContext &  | - context the dialogue is to play in |
| VolumeMultiplier | float  | - Multiplied with the volume to make the sound louder or softer. |
| PitchMultiplier | float  | - Multiplies the pitch. |
| StartTime | float | - How far in to the dialogue to begin playback at |

**Return:** void  

### SpawnDialogue2D

Spawns a dialogue with no attenuation, perfect for UI.
	 
	   Not Replicated.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Dialogue | UDialogueWave *  | - dialogue to play |
| Context | FDialogueContext &  | - context the dialogue is to play in |
| VolumeMultiplier | float  | - Multiplied with the volume to make the sound louder or softer. |
| PitchMultiplier | float  | - Multiplies the pitch. |
| StartTime | float  | - How far in to the dialogue to begin playback at |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  An audio component to manipulate the spawned sound

### PlayDialogueAtLocation

Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Dialogue | UDialogueWave *  | - dialogue to play |
| Context | FDialogueContext &  | - context the dialogue is to play in |
| Location | FVector  | - World position to play dialogue at |
| Rotation | FRotator  | - World rotation to play dialogue at |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - Pitch multiplier |
| StartTime | float  | - How far in to the dialogue to begin playback at |
| AttenuationSettings | USoundAttenuation * | - Override attenuation settings package to play sound with |

**Return:** void  

### SpawnDialogueAtLocation

Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Dialogue | UDialogueWave *  | - dialogue to play |
| Context | FDialogueContext &  | - context the dialogue is to play in |
| Location | FVector  | - World position to play dialogue at |
| Rotation | FRotator  | - World rotation to play dialogue at |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - PitchMultiplier |
| StartTime | float  | - How far in to the dialogue to begin playback at |
| AttenuationSettings | USoundAttenuation *  | - Override attenuation settings package to play sound with |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  Audio Component to manipulate the playing dialogue with

### SpawnDialogueAttached

Spawns a dialogue attached to and following the specified component. This is a fire and forget sound. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Dialogue | UDialogueWave *  | - dialogue to play |
| Context | FDialogueContext &  | - context the dialogue is to play in |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  | - Optional named point within the AttachComponent to play the sound at |
| Location | FVector  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world position that will be translated to a relative offset |
| Rotation | FRotator  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world rotation that will be translated to a relative offset |
| LocationType | EAttachLocation :: Type  | - Specifies whether Location is a relative offset or an absolute world position |
| bStopWhenAttachedToDestroyed | bool  | - Specifies whether the sound should stop playing when the owner of the attach to component is destroyed. |
| VolumeMultiplier | float  | - Volume multiplier |
| PitchMultiplier | float  | - PitchMultiplier |
| StartTime | float  | - How far in to the dialogue to begin playback at |
| AttenuationSettings | USoundAttenuation *  | - Override attenuation settings package to play sound with |
| bAutoDestroy | bool | - Whether the returned audio component will be automatically cleaned up when the sound finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UAudioComponent *  Audio Component to manipulate the playing dialogue with

### SpawnForceFeedbackAtLocation

Plays a force feedback effect at the given location. This is a fire and forget effect and does not travel with any actor. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ForceFeedbackEffect | UForceFeedbackEffect *  | - effect to play |
| Location | FVector  | - World position to center the effect at |
| Rotation | FRotator  | - World rotation to center the effect at |
| bLooping | bool  |  |
| IntensityMultiplier | float  | - Intensity multiplier |
| StartTime | float  | - How far in to the feedback effect to begin playback at |
| AttenuationSettings | UForceFeedbackAttenuation *  | - Override attenuation settings package to play effect with |
| bAutoDestroy | bool | - Whether the returned force feedback component will be automatically cleaned up when the feedback patern finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UForceFeedbackComponent *  Force Feedback Component to manipulate the playing feedback effect with

### SpawnForceFeedbackAttached

Plays a force feedback effect attached to and following the specified component. This is a fire and forget effect. Replication is also not handled at this point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ForceFeedbackEffect | UForceFeedbackEffect *  | - effect to play |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  | - Optional named point within the AttachComponent to attach to |
| Location | FVector  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world position that will be translated to a relative offset |
| Rotation | FRotator  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world rotation that will be translated to a relative offset |
| LocationType | EAttachLocation :: Type  | - Specifies whether Location is a relative offset or an absolute world position |
| bStopWhenAttachedToDestroyed | bool  | - Specifies whether the feedback effect should stop playing when the owner of the attach to component is destroyed. |
| bLooping | bool  |  |
| IntensityMultiplier | float  | - Intensity multiplier |
| StartTime | float  | - How far in to the feedback effect to begin playback at |
| AttenuationSettings | UForceFeedbackAttenuation *  | - Override attenuation settings package to play effect with |
| bAutoDestroy | bool | - Whether the returned force feedback component will be automatically cleaned up when the feedback patern finishes (by completing or stopping) or whether it can be reactivated |

**Return:** UForceFeedbackComponent *  Force Feedback Component to manipulate the playing feedback effect with

### SetSubtitlesEnabled

Will set subtitles to be enabled or disabled.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | bool | will enable subtitle drawing if true, disable if false. |

**Return:** void  

### AreSubtitlesEnabled

Returns whether or not subtitles are currently enabled.

**Return:** bool true if subtitles are enabled.

### SetBaseSoundMix

Set the sound mix of the audio system for special EQing

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InSoundMix | USoundMix * |  |

**Return:** void  

### SetSoundMixClassOverride

Overrides the sound class adjuster in the given sound mix. If the sound class does not exist in the input sound mix, the sound class adjustment will be added to the sound mix.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InSoundMixModifier | USoundMix *  | The sound mix to modify. |
| InSoundClass | USoundClass *  | The sound class to override (or add) in the sound mix. |
| Volume | float  | The volume scale to set the sound class adjuster to. |
| Pitch | float  | The pitch scale to set the sound class adjuster to. |
| FadeInTime | float  | The interpolation time to use to go from the current sound class adjuster values to the new values. |
| bApplyToChildren | bool | Whether or not to apply this override to the sound class' children or to just the specified sound class. |

**Return:** void  

### ClearSoundMixClassOverride

Clears the override of the sound class adjuster in the given sound mix. If the override did not exist in the sound mix, this will do nothing.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InSoundMixModifier | USoundMix *  | The sound mix to modify. |
| InSoundClass | USoundClass *  | The sound class to override (or add) in the sound mix. |
| FadeOutTime | float | The interpolation time to use to go from the current sound class adjuster override values to the non-override values. |

**Return:** void  

### PushSoundMixModifier

Push a sound mix modifier onto the audio system

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InSoundMixModifier | USoundMix * |  |

**Return:** void  

### PopSoundMixModifier

Pop a sound mix modifier from the audio system

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| InSoundMixModifier | USoundMix * |  |

**Return:** void  

### ClearSoundMixModifiers

Clear all sound mix modifiers from the audio system

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** void  

### ActivateReverbEffect

Activates a Reverb Effect without the need for a volume

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| ReverbEffect | UReverbEffect *  | Reverb Effect to use |
| TagName | FName  | Tag to associate with Reverb Effect |
| Priority | float  | Priority of the Reverb Effect |
| Volume | float  | Volume level of Reverb Effect |
| FadeTime | float | Time before Reverb Effect is fully active |

**Return:** void  

### DeactivateReverbEffect

Deactivates a Reverb Effect not applied by a volume
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TagName | FName | Tag associated with Reverb Effect to remove |

**Return:** void  

### GetCurrentReverbEffect

Returns the highest priority reverb settings currently active from any source (volumes or manual setting).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** UReverbEffect *  

### SpawnDecalAtLocation

Spawns a decal at the given location and rotation, fire and forget. Does not replicate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| DecalMaterial | UMaterialInterface *  | - decal's material |
| DecalSize | FVector  | - size of decal |
| Location | FVector  | - location to place the decal in world space |
| Rotation | FRotator  | - rotation to place the decal in world space |
| LifeSpan | float | - destroy decal component after time runs out (0 = infinite) |

**Return:** UDecalComponent *  

### SpawnDecalAttached

Spawns a decal attached to and following the specified component. Does not replicate.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DecalMaterial | UMaterialInterface *  | - decal's material |
| DecalSize | FVector  | - size of decal |
| AttachToComponent | USceneComponent *  |  |
| AttachPointName | FName  | - Optional named point within the AttachComponent to spawn the emitter at |
| Location | FVector  | - Depending on the value of Location Type this is either a relative offset from the attach componentpoint or an absolute world position that will be translated to a relative offset |
| Rotation | FRotator  | - Depending on the value of LocationType this is either a relative offset from the attach componentpoint or an absolute world rotation that will be translated to a realative offset |
| LocationType | EAttachLocation :: Type  | - Specifies whether Location is a relative offset or an absolute world position |
| LifeSpan | float | - destroy decal component after time runs out (0 = infinite) |

**Return:** UDecalComponent *  

### BreakHitResult

Extracts data from a HitResult.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hit | FHitResult &  |  The source HitResult. |
| bBlockingHit | bool &  | True if there was a blocking hit, false otherwise. |
| bInitialOverlap | bool &  | True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPoint will equal Location, and normals will be equal and indicate a depenetration vector. |
| Time | float &  |  'Time' of impact along trace direction ranging from [0.0 to 1.0) if there is a hit, indicating time between start and end. Equals 1.0 if there is no hit. |
| Distance | float &  | The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object). |
| Location | FVector &  | Location of the hit in world space. If this was a swept shape test, this is the location where we can place the shape in the world where it will not penetrate. |
| ImpactPoint | FVector &  | Location of the actual contact point of the trace shape with the surface of the hit object. Equal to Location in the case of an initial overlap. |
| Normal | FVector &  | Normal of the hit in world space, for the object that was swept (e.g. for a sphere trace this points towards the sphere's center). Equal to ImpactNormal for line tests. |
| ImpactNormal | FVector &  | Normal of the hit in world space, for the object that was hit by the sweep. |
| PhysMat | UPhysicalMaterial * &  | Physical material that was hit. Must set bReturnPhysicalMaterial to true in the query params for this to be returned. |
| HitActor | AActor * &  | Actor hit by the trace. |
| HitComponent | UPrimitiveComponent * &  | PrimitiveComponent hit by the trace. |
| HitBoneName | FName &  | Name of the bone hit (valid only if we hit a skeletal mesh). |
| HitItem | int32 &  | Primitive-specific data recording which item in the primitive was hit |
| FaceIndex | int32 &  | If colliding with trimesh or landscape, index of face that was hit. |
| TraceStart | FVector &  |  |
| TraceEnd | FVector & |  |

**Return:** void  

### MakeHitResult

Create a HitResult struct

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bBlockingHit | bool  | True if there was a blocking hit, false otherwise. |
| bInitialOverlap | bool  | True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPoint will equal Location, and normals will be equal and indicate a depenetration vector. |
| Time | float  |  'Time' of impact along trace direction ranging from [0.0 to 1.0) if there is a hit, indicating time between start and end. Equals 1.0 if there is no hit. |
| Distance | float  | The distance from the TraceStart to the Location in world space. This value is 0 if there was an initial overlap (trace started inside another colliding object). |
| Location | FVector  | Location of the hit in world space. If this was a swept shape test, this is the location where we can place the shape in the world where it will not penetrate. |
| ImpactPoint | FVector  | Location of the actual contact point of the trace shape with the surface of the hit object. Equal to Location in the case of an initial overlap. |
| Normal | FVector  | Normal of the hit in world space, for the object that was swept (e.g. for a sphere trace this points towards the sphere's center). Equal to ImpactNormal for line tests. |
| ImpactNormal | FVector  | Normal of the hit in world space, for the object that was hit by the sweep. |
| PhysMat | UPhysicalMaterial *  | Physical material that was hit. Must set bReturnPhysicalMaterial to true in the query params for this to be returned. |
| HitActor | AActor *  | Actor hit by the trace. |
| HitComponent | UPrimitiveComponent *  | PrimitiveComponent hit by the trace. |
| HitBoneName | FName  | Name of the bone hit (valid only if we hit a skeletal mesh). |
| HitItem | int32  | Primitive-specific data recording which item in the primitive was hit |
| FaceIndex | int32  | If colliding with trimesh or landscape, index of face that was hit. |
| TraceStart | FVector  |  |
| TraceEnd | FVector |  |

**Return:** FHitResult  

### GetSurfaceType

Returns the EPhysicalSurface type of the given Hit.
	  To edit surface type for your project, use ProjectSettingsPhysicsPhysicalSurface section

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hit | FHitResult & |  |

**Return:** EPhysicalSurface  

### FindCollisionUV

Try and find the UV for a collision impact. Note this ONLY works if 'Support UV From Hit Results' is enabled in Physics Settings.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hit | FHitResult &  |  |
| UVChannel | int32  |  |
| UV | FVector2D & |  |

**Return:** bool  

### CreateSaveGameObject

Create a new, empty SaveGame object to set data on and then pass to SaveGameToSlot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SaveGameClass | TSubclassOf < USaveGame > | Class of SaveGame to create |

**Return:** USaveGame *  				New SaveGame object to write data to

### CreateSaveGameObjectFromBlueprint

Create a new, empty SaveGame object to set data on and then pass to SaveGameToSlot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SaveGameBlueprint | UBlueprint * | Blueprint of SaveGame to create |

**Return:** USaveGame *  					New SaveGame object to write data to

### SaveGameToSlot

Save the contents of the SaveGameObject to a slot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SaveGameObject | USaveGame *  | Object that contains data about the save game that we want to write out |
| SlotName | FString &  |  Name of save game slot to save to. |
| UserIndex | int32 | For some platforms, master user index to identify the user doing the saving. |

**Return:** bool  				Whether we successfully saved this information

### DoesSaveGameExist

See if a save game exists with the specified name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FString &  |  Name of save game slot. |
| UserIndex | int32 | For some platforms, master user index to identify the user doing the saving. |

**Return:** bool  

### BindLoadGameGuardEntranceCheckDelegate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Obj | UObject *  |  |
| FuncName | FString & |  |

**Return:** void  

### BindLoadGameGuardExitCheckDelegate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Obj | UObject *  |  |
| FuncName | FString & |  |

**Return:** void  

### LoadGameFromSlot

Load the contents from a given slot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FString &  |  Name of the save game slot to load from. |
| UserIndex | int32 | For some platforms, master user index to identify the user doing the loading. |

**Return:** USaveGame *  SaveGameObject	Object containing loaded game state (NULL if load fails)

### LoadGameFromSlotWithSizeLimit

Load the contents from a given slot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FString &  |  Name of the save game slot to load from. |
| UserIndex | int32  | For some platforms, master user index to identify the user doing the loading. |
| MaxSerSize | int32 | Specify the maxserializesize of archive, just working for fstring. |

**Return:** USaveGame *  SaveGameObject	Object containing loaded game state (NULL if load fails)

### LoadGameFromMemory

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectBytes | TArray < uint8 > &  |  |
| MaxSerSize | int32 |  |

**Return:** USaveGame *  

### LoadGameFromMemoryWithSizeLimit

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectBytes | TArray < uint8 > &  |  |
| MaxSerSize | int32 |  |

**Return:** USaveGame *  

### DeleteGameInSlot

Delete a save game in a particular slot.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SlotName | FString &  |  Name of save game slot to delete. |
| UserIndex | int32 | For some platforms, master user index to identify the user doing the deletion. |

**Return:** bool  True if a file was actually able to be deleted. use DoesSaveGameExist to distinguish between delete failures and failure due to file not existing.

### GetWorldDeltaSeconds

获得当前每帧的delta time，单位秒

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * | world上下文对象 |

**Return:** float  每帧的delta time