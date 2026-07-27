---
title: USceneCaptureComponent
language: cpp
---

# USceneCaptureComponent

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| PrimitiveRenderMode | ESceneCapturePrimitiveRenderMode | Controls what primitives get rendered into the scene capture. |
| HiddenComponents | TArray < TWeakObjectPtr < UPrimitiveComponent > > | The components won't rendered by current component. |
| HiddenActors | TArray < AActor * > | The actors to hide in the scene capture. |
| ShowOnlyComponents | TArray < TWeakObjectPtr < UPrimitiveComponent > > | The only components to be rendered by this scene capture, if PrimitiveRenderMode |
| bShowAttachedActor | bool |  |
| ShowOnlyActors | TArray < AActor * > | The only actors to be rendered by this scene capture, if PrimitiveRenderMode is  |
| bCaptureEveryFrame | bool | Whether to update the capture's contents every frame.  If disabled, the componen |
| bCaptureOnMovement | bool | Whether to update the capture's contents on movement.  Disable if you are going  |
| bAlwaysPersistRenderingState | bool | Whether to persist the rendering state even if bCaptureEveryFrame==false.  This  |
| LODDistanceFactor | float | Scales the distance used by LOD. Set to values greater than 1 to cause the scene |
| MaxViewDistanceOverride | float | if > 0, sets a maximum render distance override.  Can be used to cull distant ob |
| CaptureSortPriority | int32 | Capture priority within the frame to sort scene capture on GPU to resolve interd |
| ShowFlagSettings | TArray < struct FEngineShowFlagsSetting > | ShowFlags for the SceneCapture's ViewFamily, to control rendering settings for t |
| LightingChannels | FLightingChannels |  |
| bUseLightingChannels | bool |  |

## Functions

### HideComponent

Adds the component to our list of hidden components.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InComponent | UPrimitiveComponent * |  |

**Return:** void  

### HideActorComponents

Adds all primitive components in the actor to our list of hidden components.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActor | AActor * |  |

**Return:** void  

### ShowOnlyComponent

Adds the component to our list of show-only components.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InComponent | UPrimitiveComponent * |  |

**Return:** void  

### ShowOnlyActorComponents

Adds all primitive components in the actor to our list of show-only components.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActor | AActor * |  |

**Return:** void  

### RemoveShowOnlyComponent

Removes a component from the Show Only list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InComponent | UPrimitiveComponent * |  |

**Return:** void  

### RemoveShowOnlyActorComponents

Removes a actor's components from the Show Only list.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActor | AActor * |  |

**Return:** void  

### ClearShowOnlyComponents

Clears the Show Only list.

**Return:** void 

### ClearHiddenComponents

Clears the hidden list.

**Return:** void 

### SetCaptureSortPriority

Changes the value of TranslucentSortPriority.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewCaptureSortPriority | int32 |  |

**Return:** void