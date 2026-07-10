---
title: UActorComponent
language: cpp
---

# UActorComponent

ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.
  ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.
 
  @see USceneComponent
  @see UPrimitiveComponent

> Inheritance: UObject -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| PrimaryComponentTick | FActorComponentTickFunction | Main tick function for the Actor |
| DSTickInterval | float | The frequency in seconds at which this tick function will be executed on DS.  If |
| ComponentTags | TArray < FName > | Array of tags that can be used for grouping and categorizing. Can also be access |
| NetUpdateFrequency | float |  |
| bAllowBPReceiveTickEvent | bool | If true, bp tick will be called , otherwise skipped |
| TickAdapterIntvlOverride | uint8 |  |
| bSyncOwnerTickAdapter | uint8 |  |
| ScriptNetworkReplicatedPropertyWrapper | FScriptNetworkReplicatedPropertyWrapper |  |
| bSupportSuspendTick | uint8 |  |
| bDestroyIfOnClientNoLocalControl | uint8 |  |
| bReplicates | uint8 | Is this component currently replicating? Should the network code consider it for |
| bNetAddressable | uint8 | Is this component safe to ID over the network by name? |
| bDeferedConstructComponent | uint8 |  |
| bSkipNewDuplicateComponent | uint8 |  |
| bNameStableForBackupRestore | uint8 |  |
| bNeedBackupRestoreForCustomSerialize | uint8 |  |
| bEnableTickWhenOutOfRegion | uint8 | If true, this component will Enale Tick when out of region. |
| bAutoActivate | uint8 | Whether the component is activated at creation or must be explicitly activated. |
| bIsActive | uint8 | Whether the component is currently active. |
| bEditableWhenInherited | uint8 |  |
| bCanEverAffectNavigation | uint8 | Whether this component can potentially influence navigation |
| bIsEditorOnly | uint8 | If true, the component will be excluded from non-editor builds |
| bNeedsLoadForClient | uint8 | If false, the component will be excluded from client builds |
| bNeedsLoadForServer | uint8 | If false, the component will be excluded from server builds |
| bAllowRenderDataUpdateLag | uint8 |  |
| CreationMethod | EComponentCreationMethod |  |
| UCSModifiedProperties | TArray < FSimpleMemberReference > |  |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the component |
| bCreatedByConstructionScript_DEPRECATED | uint8 | True if this component was created by a construction script, and will be destroy |
| bInstanceComponent_DEPRECATED | uint8 | True if this component was created as an instance component |

## Functions

### GetToString

**Return:** FString 

### ForceNetUpdate

**Return:** void 

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

### IsBeingDestroyed

Returns whether the component is in the process of being destroyed.

**Return:** bool 

### OnRep_Replicates

**Return:** void 

### OnRep_IsActive

**Return:** void 

### GetOwner

Follow the Outer chain to get the  AActor  that 'Owns' this component

**Return:** AActor * 

### ComponentHasTag

See if this component contains the supplied tag

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Tag | FName |  |

**Return:** bool  

### Activate

Activates the SceneComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bReset | bool | - The value to assign to HiddenGame. |

**Return:** void  

### Deactivate

Deactivates the SceneComponent.

**Return:** void 

### SetActive

Sets whether the component is active or not

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewActive | bool  | - The new active state of the component |
| bReset | bool |  |

**Return:** void  

### ToggleActive

Toggles the active state of the component

**Return:** void 

### IsActive

Returns whether the component is active or not

**Return:** bool - The active state of the component.

### SetAutoActivate

Sets whether the component should be auto activate or not. Only safe during construction scripts.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewAutoActivate | bool | - The new auto activate state of the component |

**Return:** void  

### SetTickableWhenPaused

Sets whether this component can tick when paused.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bTickableWhenPaused | bool |  |

**Return:** void  

### SetIsReplicated

Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ShouldReplicate | bool |  |

**Return:** void  

### ReceiveBeginPlay

Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay
	  or when the component is dynamically created if the Actor has already BegunPlay.

**Return:** void 

### ReceiveEndPlay

Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndPlayReason | EEndPlayReason :: Type |  |

**Return:** void  

### SetComponentTickEnabled

Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | bool | - Whether it should be enabled or not |

**Return:** void  

### IsComponentTickEnabled

Returns whether this component has tick enabled or not

**Return:** bool 

### IsComponentTickEnabledByExternal

Returns whether this component has tick enabled or not,
	  Which set by External business

**Return:** bool 

### SetComponentTickInterval

Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TickInterval | float | The duration between ticks for this component's primary tick function |

**Return:** void  

### GetComponentTickInterval

Returns whether this component has tick enabled or not

**Return:** float 

### K2_DestroyComponent

Unregister and mark for pending kill a component.  This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Object | UObject * |  |

**Return:** void  

### SetTickGroup

Changes the ticking group for this component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTickGroup | ETickingGroup |  |

**Return:** void  

### AddTickPrerequisiteActor

Make this component tick after PrerequisiteActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PrerequisiteActor | AActor * |  |

**Return:** void  

### AddTickPrerequisiteComponent

Make this component tick after PrerequisiteComponent.

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

### ReceiveTick

Event called every frame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeltaSeconds | float |  |

**Return:** void