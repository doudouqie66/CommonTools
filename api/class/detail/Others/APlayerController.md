---
title: APlayerController
language: cpp
---

# APlayerController

PlayerControllers are used by human players to control Pawns.
 
  ControlRotation (accessed via GetControlRotation()), determines the aiming
  orientation of the controlled Pawn.
 
  In networked games, PlayerControllers exist on the server for every player-controlled pawn,
  and also on the controlling client's machine. They do NOT exist on a client's
  machine for pawns controlled by remote players elsewhere on the network.

> Inheritance: AController

## Variables

| Name | Type | Description |
|------|------|-------------|
| Player | UPlayer * | UPlayer associated with this PlayerController.  Could be a local player or a net |
| AcknowledgedPawn | APawn * | Used in net games so client can acknowledge it possessed a specific pawn. |
| ControllingDirTrackInst | UInterpTrackInstDirector * | Director track that's currently possessing this player controller, or none if no |
| MyHUD | AHUD * | Heads up display associated with this PlayerController. |
| PlayerCameraManager | APlayerCameraManager * | Camera manager associated with this Player Controller. |
| PlayerCameraManagerClass | TSubclassOf < APlayerCameraManager > | PlayerCamera class should be set for each game, otherwise Engine.PlayerCameraMan |
| bAutoManageActiveCameraTarget | bool | True to allow this player controller to manage the camera target for you, 	  typ |
| SmoothTargetViewRotationSpeed | float | Interp speed for blending remote view rotation for smoother client updates |
| HiddenActors | TArray < AActor * > | The actors which the camera shouldn't see - e.g. used to hide actors which the c |
| HiddenPrimitiveComponents | TArray < TWeakObjectPtr < UPrimitiveComponent > > | Explicit components the camera shouldn't see (helpful for external systems to hi |
| LastSpectatorStateSynchTime | float | Used to make sure the client is kept synchronized when in a spectator state |
| LastSpectatorSyncLocation | FVector | Last location synced on the server for a spectator. |
| LastSpectatorSyncRotation | FRotator | Last rotation synced on the server for a spectator. |
| ClientCap | int32 | Cap set by server on bandwidth from client to server in bytessec (only has impac |
| CheatManager | UCheatManager * | Object that manages "cheat" commands.  Not instantiated in shipping builds. |
| CheatClass | TSoftClassPtr < UCheatManager > | Class of my CheatManager.  The Cheat Manager is not created in shipping builds |
| CheatManagerExtras | TArray < UCheatManager * > | Object that manages "cheat" commands.  Not instantiated in shipping builds. |
| CheatClassExtras | TArray < TSoftClassPtr < UCheatManager > > | Class of my CheatManager.  The Cheat Manager is not created in shipping builds |
| PlayerInput | UPlayerInput * | Object that manages player input. |
| ActiveForceFeedbackEffects | TArray < FActiveForceFeedbackEffect > |  |
| bPlayerIsWaiting | uint32 | True if PlayerController is currently waiting for the match to start or to respa |
| NetPlayerIndex | uint8 | index identifying players using the same base connection (splitscreen clients) 	 |
| PendingSwapConnection | UNetConnection * | this is set on the OLD PlayerController when performing a swap over a network co |
| NetConnection | UNetConnection * | The net connection this controller is communicating on, NULL for local players o |
| RotationInput | FRotator |  |
| InputYawScale | float | Yaw input speed scaling |
| InputPitchScale | float | Pitch input speed scaling |
| InputRollScale | float | Roll input speed scaling |
| bShowMouseCursor | uint32 | Whether the mouse cursor should be displayed. |
| bEnableClickEvents | uint32 | Whether actorcomponent click events should be generated. |
| bEnableTouchEvents | uint32 | Whether actorcomponent touch events should be generated. |
| bEnableMouseOverEvents | uint32 | Whether actorcomponent mouse over events should be generated. |
| bEnableTouchOverEvents | uint32 | Whether actorcomponent touch over events should be generated. |
| bForceFeedbackEnabled | uint32 |  |
| ForceFeedbackScale | float | Scale applied to force feedback values |
| ClickEventKeys | TArray < FKey > |  |
| DefaultMouseCursor | TEnumAsByte < EMouseCursor :: Type > |  |
| CurrentMouseCursor | TEnumAsByte < EMouseCursor :: Type > |  |
| DefaultClickTraceChannel | TEnumAsByte < ECollisionChannel > | Default trace channel used for determining what world object was clicked on. |
| CurrentClickTraceChannel | TEnumAsByte < ECollisionChannel > | Trace channel currently being used for determining what world object was clicked |
| HitResultTraceDistance | float |  |
| bPauseUpdateStreamingState | uint32 |  |
| bActiveReplayViewer | uint8 | true means this controller is active now as a replay viewer |
| bEnableReplayRecord | uint8 | true means this controller is enable to record for replay |
| IsBlockingInput | bool |  |
| InputWhiteListWhenBlocked | TSet < FName > |  |
| InputBlackList | TSet < FName > |  |
| PriorityActionSet | TSet < FName > |  |
| PriorityActionClusters | TArray < FActionCluster > |  |
| ActionExecuteState | int32 |  |
| InactiveStateInputComponent | UInputComponent * | InputComponent we use when player is in Inactive state. |
| bShouldPerformFullTickWhenPaused | uint32 | Whether we fully tick when the game is paused, if our tick function is allowed t |
| CurrentTouchInterface | UTouchInterface * | The currently set touch interface |
| SpectatorPawn | ASpectatorPawn * | The pawn used when spectating (NULL if not spectating). |
| SpawnLocation | FVector | The location used internally when there is no pawn or spectator, to know where t |
| bIsActorChannelOpen | bool |  |
| bIsDemoViewController | bool |  |
| bIsLocalPlayerController | bool | Set during SpawnActor once and never again to indicate the intent of this contro |
| SeamlessTravelCount | uint16 | Counter for this players seamless travels (used along with the below value, to r |
| LastCompletedSeamlessTravelCount | uint16 | The value of SeamlessTravelCount, upon the last call to GameModeBase::HandleSeam |
| bNeedResetCameraOnPossess | bool | Restart Player by plane do not reset camera!  Engine Modification by czcheng, 20 |
| bNeedResetControlRotator | bool |  |
| LevelVisibilityInfoList | TArray < FLevelVisibilityInfo > |  |
| bClientRetryClientRestartFailedProcess | bool |  |

## Functions

### ServerSetSpectatorWaiting

Indicate that the Spectator is waiting to joinrespawn.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bWaiting | bool |  |

**Return:** void  

### ClientSetSpectatorWaiting

Indicate that the Spectator is waiting to joinrespawn.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bWaiting | bool |  |

**Return:** void  

### SetActionExecuteState

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bSuccess | bool |  |

**Return:** void  

### GetActionExecuteState

**Return:** int32 

### EnableCheats

Enables cheats within the game

**Return:** void 

### FOV

Set the field of view to NewFOV

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewFOV | float |  |

**Return:** void  

### RestartLevel

Restarts the current level

**Return:** void 

### LocalTravel

Causes the client to travel to the given URL

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| URL | FString & |  |

**Return:** void  

### ClientReturnToMainMenu

Return the client to the main menu gracefully

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ReturnReason | FString & |  |

**Return:** void  

### ClientRepObjRef

Development RPC for testing object reference replication

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** void  

### Pause

Command to try to pause the game.

**Return:** void 

### SetPauseByBlueprint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bPaused | bool |  |

**Return:** void  

### SetName

Trys to set the player's name to the given name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| S | FString & |  |

**Return:** void  

### SwitchLevel

SwitchLevel to the given MapURL.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| URL | FString & |  |

**Return:** void  

### GetHitResultUnderCursor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TraceChannel | ECollisionChannel  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### GetHitResultUnderCursorByChannel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TraceChannel | ETraceTypeQuery  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### GetHitResultUnderCursorForObjects

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ObjectTypes | TArray < TEnumAsByte < EObjectTypeQuery > > &  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### GetHitResultUnderFinger

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FingerIndex | ETouchIndex :: Type  |  |
| TraceChannel | ECollisionChannel  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### GetHitResultUnderFingerByChannel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FingerIndex | ETouchIndex :: Type  |  |
| TraceChannel | ETraceTypeQuery  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### GetHitResultUnderFingerForObjects

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FingerIndex | ETouchIndex :: Type  |  |
| ObjectTypes | TArray < TEnumAsByte < EObjectTypeQuery > > &  |  |
| bTraceComplex | bool  |  |
| HitResult | FHitResult & |  |

**Return:** bool  

### DeprojectMousePositionToWorld

Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| WorldDirection | FVector & |  |

**Return:** bool  

### DeprojectScreenPositionToWorld

Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ScreenX | float  |  |
| ScreenY | float  |  |
| WorldLocation | FVector &  |  |
| WorldDirection | FVector & |  |

**Return:** bool  

### ProjectWorldLocationToScreen

Convert a World Space 3D position into a 2D Screen Space position.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector  |  |
| ScreenLocation | FVector2D &  |  |
| bPlayerViewportRelative | bool |  |

**Return:** bool  true if the world coordinate was successfully projected to the screen.

### SetMouseLocation

Positions the mouse cursor in screen space, in pixels.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| X | int  |  |
| Y | int |  |

**Return:** void  

### StartFire

Fire the player's currently selected weapon with the optional fire mode.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FireModeNum | uint8 |  |

**Return:** void  

### ClientEnableNetworkVoice

Tell the client to enable or disable voice chat (not muting)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool | enable or disable voice chat |

**Return:** void  

### ToggleSpeaking

Toggle voice chat on and off

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInSpeaking | bool |  |

**Return:** void  

### ClientVoiceHandshakeComplete

Tells the client that the server has all the information it needs and that it
	  is ok to start sending voice packets. The server will already send voice packets
	  when this function is called, since it is set server side and then forwarded
	 
	  NOTE: This is done as an RPC instead of variable replication because ordering matters

**Return:** void 

### ServerMutePlayer

Tell the server to mute a player for this controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerId | FUniqueNetIdRepl | player id to mute |

**Return:** void  

### ServerUnmutePlayer

Tell the server to unmute a player for this controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerId | FUniqueNetIdRepl | player id to unmute |

**Return:** void  

### ClientMutePlayer

Tell the client to mute a player for this controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerId | FUniqueNetIdRepl | player id to mute |

**Return:** void  

### ClientUnmutePlayer

Tell the client to unmute a player for this controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PlayerId | FUniqueNetIdRepl | player id to unmute |

**Return:** void  

### ConsoleKey

Console control commands, useful when remote debugging so you can't touch the console the normal way

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Key | FKey |  |

**Return:** void  

### SendToConsole

Sends a command to the console to execute if not shipping version

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Command | FString & |  |

**Return:** void  

### ClientAddTextureStreamingLoc

Adds a location to the texture streaming system for the specified duration.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InLoc | FVector  |  |
| Duration | float  |  |
| bOverrideLocation | bool |  |

**Return:** void  

### ClientCancelPendingMapChange

Tells client to cancel any pending map change.

**Return:** void 

### ClientCapBandwidth

Set CurrentNetSpeed to the lower of its current value and Cap.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Cap | int32 |  |

**Return:** void  

### ClientCommitMapChange

Actually performs the level transition prepared by PrepareMapChange().

**Return:** void 

### ClientFlushLevelStreaming

Tells the client to block until all pending level streaming actions are complete
	  happens at the end of the tick
	  primarily used to force update the client ASAP at join time

**Return:** void 

### ClientForceGarbageCollection

Forces GC at the end of the tick on the client

**Return:** void 

### ClientGameEnded

Replicated function called by GameHasEnded().

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndGameFocus | AActor *  | - actor to view with camera |
| bIsWinner | bool | - true if this controller is on winning team |

**Return:** void  

### ClientGotoState

Server uses this to force client into NewState .

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewState | FName |  |

**Return:** void  

### ClientIgnoreLookInput

calls IgnoreLookInput on client

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIgnore | bool |  |

**Return:** void  

### ClientIgnoreMoveInput

calls IgnoreMoveInput on client

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bIgnore | bool |  |

**Return:** void  

### ClientMessage

Outputs a message to HUD

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| S | FString &  | - message to display |
| Type | FName  | - @todo document |
| MsgLifeTime | float | - Optional length of time to display 0 = default time |

**Return:** void  

### ClientPlayCameraAnim

Play the indicated CameraAnim on this camera.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimToPlay | UCameraAnim *  | - Camera animation to play |
| Scale | float  | - "Intensity" scalar. This is the scale at which the anim was first played. |
| Rate | float  | - Multiplier for playback rate. 1.0 = normal. |
| BlendInTime | float  | - Time to interpolate in from zero, for smooth starts |
| BlendOutTime | float  | - Time to interpolate out to zero, for smooth finishes |
| bLoop | bool  | - True if the animation should loop, false otherwise |
| bRandomStartTime | bool  | - Whether or not to choose a random time to start playing. Only really makes sense for bLoop = true |
| Space | ECameraAnimPlaySpace :: Type  | - Animation play area |
| CustomPlaySpace | FRotator | - Matrix used when Space = CAPS_UserDefined |

**Return:** void  

### ClientPlayCameraShake

Play Camera Shake

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Shake | TSubclassOf < UCameraShake >  | - Camera shake animation to play |
| Scale | float  | - Scalar defining how "intense" to play the anim |
| PlaySpace | ECameraAnimPlaySpace :: Type  | - Which coordinate system to play the shake in (used for CameraAnims within the shake). |
| UserPlaySpaceRot | FRotator | - Matrix used when PlaySpace = CAPS_UserDefined |

**Return:** void  

### ClientPlayCameraShakeWithWorldLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Shake | TSubclassOf < UCameraShake >  |  |
| WorldLocation | FVector  |  |
| Scale | float  |  |
| PlaySpace | ECameraAnimPlaySpace :: Type  |  |
| UserPlaySpaceRot | FRotator |  |

**Return:** void  

### ClientPlaySound

Play sound client-side (so only the client will hear it)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Sound | USoundBase *  | - Sound to play |
| VolumeMultiplier | float  | - Volume multiplier to apply to the sound |
| PitchMultiplier | float | - Pitch multiplier to apply to the sound |

**Return:** void  

### ClientPlaySoundAtLocation

Play sound client-side at the specified location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Sound | USoundBase *  | - Sound to play |
| Location | FVector  | - Location to play the sound at |
| VolumeMultiplier | float  | - Volume multiplier to apply to the sound |
| PitchMultiplier | float | - Pitch multiplier to apply to the sound |

**Return:** void  

### ClientPrepareMapChange

Asynchronously loads the given level in preparation for a streaming map transition.
	  the server sends one function per level name since dynamic arrays can't be replicated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LevelName | FName  |  |
| bFirst | bool  | - whether this is the first item in the list (so clear the list first) |
| bLast | bool | - whether this is the last item in the list (so start preparing the change after receiving it) |

**Return:** void  

### ClientPrestreamTextures

Forces the streaming system to disregard the normal logic for the specified duration and
	  instead always load all mip-levels for all textures used by the specified actor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ForcedActor | AActor *  | - The actor whose textures should be forced into memory. |
| ForceDuration | float  | - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic. |
| bEnableStreaming | bool  | - Whether to start (true) or stop (false) streaming |
| CinematicTextureGroups | int32 | - Bitfield indicating which texture groups that use extra high-resolution mips |

**Return:** void  

### ClientReset

Tell client to reset the PlayerController

**Return:** void 

### ClientRestart

Tell client to restart the level

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPawn | APawn * |  |

**Return:** void  

### ClientSetBlockOnAsyncLoading

Tells the client to block until all pending level streaming actions are complete.
	  Happens at the end of the tick primarily used to force update the client ASAP at join time.

**Return:** void 

### ClientSetCameraFade

Tell client to fade camera

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnableFading | bool  |  |
| FadeColor | FColor  |  |
| FadeAlpha | FVector2D  |  |
| FadeTime | float  |  |
| bFadeAudio | bool |  |

**Return:** void  

### ClientSetCameraMode

Replicated function to set camera style on client

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewCamMode | FName |  |

**Return:** void  

### ClientSetCinematicMode

Called by the server to synchronize cinematic transitions with the client

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInCinematicMode | bool  |  |
| bAffectsMovement | bool  |  |
| bAffectsTurning | bool  |  |
| bAffectsHUD | bool |  |

**Return:** void  

### ClientSetForceMipLevelsToBeResident

Forces the streaming system to disregard the normal logic for the specified duration and
	  instead always load all mip-levels for all textures used by the specified material.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface *  | - The material whose textures should be forced into memory. |
| ForceDuration | float  | - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic. |
| CinematicTextureGroups | int32 | - Bitfield indicating which texture groups that use extra high-resolution mips |

**Return:** void  

### ClientSetHUD

Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewHUDClass | TSubclassOf < AHUD > |  |

**Return:** void  

### GetViewportSize

Helper to get the size of the HUD canvas for this player controller.  Returns 0 if there is no HUD

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SizeX | int32 &  |  |
| SizeY | int32 & |  |

**Return:** void  

### GetHUD

Gets the HUD currently being used by this player controller

**Return:** AHUD * 

### SetMouseCursorWidget

Sets the Widget for the Mouse Cursor to display

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Cursor | EMouseCursor :: Type  | - the cursor to set the widget for |
| CursorWidget | UUserWidget * | - the widget to set the cursor to |

**Return:** void  

### ClientSetViewTarget

Set the view target

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| A | AActor *  | - new actor to set as view target |
| TransitionParams | FViewTargetTransitionParams | - parameters to use for controlling the transition |

**Return:** void  

### ClientSpawnCameraLensEffect

Spawn a camera lens effect (e.g. blood).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LensEffectEmitterClass | TSubclassOf < AEmitterCameraLensEffectBase > |  |

**Return:** void  

### ClientClearCameraLensEffects

Removes all Camera Lens Effects.

**Return:** void 

### ClientStopCameraAnim

Stop camera animation on client.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AnimToStop | UCameraAnim * |  |

**Return:** void  

### ClientStopCameraShake

Stop camera shake on client.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Shake | TSubclassOf < UCameraShake >  |  |
| bImmediately | bool |  |

**Return:** void  

### ClientPlayForceFeedback

Play a force feedback pattern on the player's controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ForceFeedbackEffect | UForceFeedbackEffect *  | The force feedback pattern to play |
| bLooping | bool  |  Whether the pattern should be played repeatedly or be a single one shot |
| bIgnoreTimeDilation | bool  | Whether the pattern should ignore time dilation |
| Tag | FName |   A tag that allows stopping of an effect. If another effect with this Tag is playing, it will be stopped and replaced |

**Return:** void  

### ClientStopForceFeedback

Stops a playing force feedback pattern

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ForceFeedbackEffect | UForceFeedbackEffect *  | If set only patterns from that effect will be stopped |
| Tag | FName |   If not none only the pattern with this tag will be stopped |

**Return:** void  

### PlayDynamicForceFeedback

Latent action that controls the playing of force feedback
	  Begins playing when Start is called.  Calling Update or Stop if the feedback is not active will have no effect.
	  Completed will execute when Stop is called or the duration ends.
	  When Update is called the Intensity, Duration, and affect values will be updated with the current inputs

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Intensity | float  |  How strong the feedback should be. Valid values are between 0.0 and 1.0 |
| Duration | float  |  How long the feedback should play for. If the value is negative it will play until stopped |
| bAffectsLeftLarge | bool  |  |
| bAffectsLeftSmall | bool  |  |
| bAffectsRightLarge | bool  |  |
| bAffectsRightSmall | bool  |  |
| Action | TEnumAsByte < EDynamicForceFeedbackAction :: Type >  |  |
| LatentInfo | FLatentActionInfo |  |

**Return:** void  

### PlayHapticEffect

Play a haptic feedback curve on the player's controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HapticEffect | UHapticFeedbackEffect_Base *  |  The haptic effect to play |
| Hand | EControllerHand  |   Which hand to play the effect on |
| Scale | float  |   Scale between 0.0 and 1.0 on the intensity of playback |
| bLoop | bool |  |

**Return:** void  

### StopHapticEffect

Stops a playing haptic feedback curve

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Hand | EControllerHand |   Which hand to stop the effect for |

**Return:** void  

### SetHapticsByValue

Sets the value of the haptics for the specified hand directly, using frequency and amplitude.  NOTE:  If a curve is already
	 playing for this hand, it will be cancelled in favour of the specified values.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Frequency | float  |  The normalized frequency [0.0, 1.0] to play through the haptics system |
| Amplitude | float  |  The normalized amplitude [0.0, 1.0] to set the haptic feedback to |
| Hand | EControllerHand |   Which hand to play the effect on |

**Return:** void  

### SetControllerLightColor

Sets the light color of the player's controller

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Color | FColor |   The color for the light to be |

**Return:** void  

### ClientTravel

Travel to a different map or IP address. Calls the PreClientTravel event before doing anything.
	  NOTE: This is implemented as a locally executed wrapper for ClientTravelInternal, to avoid API compatability breakage
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| URL | FString &  |  A string containing the mapname (or IP address) to travel to, along with option keyvalue pairs |
| TravelType | ETravelType  |  specifies whether the client should append URL options used in previous travels; if true is specified |
| bSeamless | bool  |  Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative) |
| MapPackageGuid | FGuid | The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded, |

**Return:** void  

### ClientTravelInternal

Internal clientside implementation of ClientTravel - use ClientTravel to call this
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| URL | FString &  |  A string containing the mapname (or IP address) to travel to, along with option keyvalue pairs |
| TravelType | ETravelType  |  specifies whether the client should append URL options used in previous travels; if true is specified |
| bSeamless | bool  |  Indicates whether to use seamless travel (requires TravelType of TRAVEL_Relative) |
| MapPackageGuid | FGuid | The GUID of the map package to travel to - this is used to find the file when it has been autodownloaded, |

**Return:** void  

### ClientUpdateLevelStreamingStatus

Replicated Update streaming status

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageName | FName  | - Name of the level package name used for loading. |
| bNewShouldBeLoaded | bool  | - Whether the level should be loaded |
| bNewShouldBeVisible | bool  | - Whether the level should be visible if it is loaded |
| bNewShouldBlockOnLoad | bool  | - Whether we want to force a blocking load |
| LODIndex | int32 |  - Current LOD index for a streaming level |

**Return:** void  

### ClientWasKicked

Notify client they were kicked from the server

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KickReason | FText & |  |

**Return:** void  

### ClientStartOnlineSession

Notify client that the session is starting

**Return:** void 

### ClientEndOnlineSession

Notify client that the session is about to start

**Return:** void 

### ClientRetryClientRestart

Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPawn | APawn * |  |

**Return:** void  

### ClientReceiveLocalizedMessage

send client localized message id

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Message | TSubclassOf < ULocalMessage >  |  |
| Switch | int32  |  |
| RelatedPlayerState_1 | APlayerState *  |  |
| RelatedPlayerState_2 | APlayerState *  |  |
| OptionalObject | UObject * |  |

**Return:** void  

### ServerAcknowledgePossession

acknowledge possession of pawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| P | APawn * |  |

**Return:** void  

### ServerCamera

change mode of camera

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMode | FName |  |

**Return:** void  

### ServerChangeName

Change name of server

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| S | FString & |  |

**Return:** void  

### ServerNotifyLoadedWorld

Called to notify the server when the client has loaded a new world via seamless traveling

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldPackageName | FName | the name of the world package that was loaded |

**Return:** void  

### ServerNotifyStreamLevelDisFactor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFactor | float |  |

**Return:** void  

### ServerPause

Replicate pause request to the server

**Return:** void 

### ServerRestartPlayer

Attempts to restart this player, generally called from the client upon respawn request.

**Return:** void 

### ServerSetSpectatorLocation

When spectating, updates spectator locationrotation and pings the server to make sure spectating should continue.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLoc | FVector  |  |
| NewRot | FRotator |  |

**Return:** void  

### ServerCheckClientPossession

Tells the server to make sure the possessed pawn is in sync with the client.

**Return:** void 

### ServerCheckClientPossessionReliable

Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.

**Return:** void 

### ServerShortTimeout

Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period

**Return:** void 

### ServerUpdateCamera

If PlayerCamera.bUseClientSideCameraUpdates is set, client will replicate camera positions to the server.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CamLoc | FVector_NetQuantize  |  |
| CamPitchAndYaw | int32 |  |

**Return:** void  

### ServerUpdateCameraLocation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CamLoc | FVector_NetQuantize |  |

**Return:** void  

### ServerUpdateLevelVisibility

Called when the client addsremoves a streamed level
	  the server will only replicate references to Actors in visible levels so that it's impossible to send references to
	  Actors the client has not initialized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageName | FName  | the name of the package for the level whose status changed |
| bIsVisible | bool |  |

**Return:** void  

### ServerUpdateLevelListVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageNames | TArray < FName > &  |  |
| bIsVisible | bool |  |

**Return:** void  

### ServerUpdateLevelListPackageVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageInfo | TArray < FLevelVisibilityInfo > & |  |

**Return:** void  

### ServerUpdateLevelIndexListPackageVisibility

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PackageInfo | TArray < FLevelIndexVisibilityInfo > & |  |

**Return:** void