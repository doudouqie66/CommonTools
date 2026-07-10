---
title: UPaperGroupedSpriteComponent
language: cpp
---

# UPaperGroupedSpriteComponent

A component that handles rendering and collision for many instances of one or more UPaperSprite assets.
 
  @see UPrimitiveComponent, UPaperSprite

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| InstanceMaterials | TArray < UMaterialInterface * > | Array of materials used by the instances |
| PerInstanceSpriteData | TArray < FSpriteInstanceData > | Array of instances |

## Functions

### AddInstance

Add an instance to this component. Transform can be given either in the local space of this component or world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Transform | FTransform &  |  |
| Sprite | UPaperSprite *  |  |
| bWorldSpace | bool  |  |
| Color | FLinearColor |  |

**Return:** int32  

### GetInstanceTransform

Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set.  Returns True on success.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32  |  |
| OutInstanceTransform | FTransform &  |  |
| bWorldSpace | bool |  |

**Return:** bool  

### UpdateInstanceTransform

Update the transform for the instance specified. Instance is given in local space of this component unless bWorldSpace is set.  Returns True on success.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32  |  |
| NewInstanceTransform | FTransform &  |  |
| bWorldSpace | bool  |  |
| bMarkRenderStateDirty | bool  |  |
| bTeleport | bool |  |

**Return:** bool  

### UpdateInstanceColor

Update the color for the instance specified. Returns True on success.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32  |  |
| NewInstanceColor | FLinearColor  |  |
| bMarkRenderStateDirty | bool |  |

**Return:** bool  

### RemoveInstance

Remove the instance specified. Returns True on success.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32 |  |

**Return:** bool  

### ClearInstances

Clear all instances being rendered by this component

**Return:** void 

### GetInstanceCount

Get the number of instances in this component

**Return:** int32 

### SortInstancesAlongAxis

Sort all instances by their world space position along the specified axis

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldSpaceSortAxis | FVector |  |

**Return:** void