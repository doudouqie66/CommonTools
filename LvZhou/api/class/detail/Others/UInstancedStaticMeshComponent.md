---
title: UInstancedStaticMeshComponent
language: cpp
---

# UInstancedStaticMeshComponent

A component that efficiently renders multiple instances of the same StaticMesh.

> Inheritance: UStaticMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| PerInstanceSMData | TArray < FInstancedStaticMeshInstanceData > | Array of instances, bulk serialized. |
| InstancingRandomSeed | int32 | Value used to seed the random number stream that generates random numbers for ea |
| InstanceStartCullDistance | int32 | Distance from camera at which each instance begins to fade out. |
| InstanceEndCullDistance | int32 | Distance from camera at which each instance completely fades out. |
| InstanceNearCullDistance | int32 | Distance from camera at which each instance. |
| bIsFlyType | bool |  |
| bIsFoliage | bool |  |
| bIsPCFoliage | bool |  |
| InstanceReorderTable | TArray < int32 > | Mapping from PerInstanceSMData order to instance render buffer order. If empty,  |
| RemovedInstances | TArray < int32 > |  |
| InstanceVisibilityMapping | TMap < int32 , FInstanceVisibilityData > |  |
| UseDynamicInstanceBuffer | bool | Set to true to permit updating the vertex buffer used in the instance buffer wit |
| KeepInstanceBufferCPUAccess | bool | Set to true to keep instance buffer accessible by the CPU, otherwise it's discar |
| DynamicInstancingParametersValue | TArray < FVector4 > |  |
| PerInstanceDynamicInstancingParameterCount | int32 | PerInstanceDynamicInstancingParameterCount |
| PhysicsSerializer | UPhysicsSerializer * | Serialization of all the InstanceBodies. Helps speed up physics creation time. |
| StashInstanceTransform | TMap < int32 , FMatrix > |  |
| NumPendingLightmaps | int32 | Number of pending lightmaps still to be calculated (Apply()'d). |
| CachedMappings | TArray < FInstancedStaticMeshMappingInfo > | The mappings for all the instances of this component. |

## Functions

### AddInstance

Add an instance to this component. Transform is given in local space of this component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceTransform | FTransform & |  |

**Return:** int32  

### AddInstanceWorldSpace

Add an instance to this component. Transform is given in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldTransform | FTransform & |  |

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

Update the transform for the instance specified.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32  |  The index of the instance to update |
| NewInstanceTransform | FTransform &  | The new transform |
| bWorldSpace | bool  |  If true, the new transform interpreted as a World Space transform, otherwise it is interpreted as Local Space |
| bMarkRenderStateDirty | bool  | If true, the change should be visible immediately. If you are updating many instances you should only set this to true for the last instance. |
| bTeleport | bool |  Whether or not the instance's physics should be moved normally, or teleported (moved instantly, ignoring velocity). |

**Return:** bool  					True on success.

### RemoveInstance

Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndex | int32 |  |

**Return:** bool  

### ClearInstances

Clear all instances being rendered by this component.

**Return:** void 

### GetInstanceCount

Get the number of instances in this component.

**Return:** int32 

### SetCullDistances

Sets the fading start and culling end distances for this component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartCullDistance | int32  |  |
| EndCullDistance | int32 |  |

**Return:** void  

### SetNearCullDistance

Sets the cull near distance for this component.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CullDistance | int32 |  |

**Return:** void  

### GetInstancesOverlappingSphere

Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Center | FVector &  |  |
| Radius | float  |  |
| bSphereInWorldSpace | bool |  |

**Return:** TArray < int32 >  

### GetInstancesOverlappingBox

Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Box | FBox &  |  |
| bBoxInWorldSpace | bool |  |

**Return:** TArray < int32 >  

### HideInstance

Update the transform for the instance specified.
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndices | TArray < int32 > & |  |

**Return:** bool  					True on success.

### ShowInstance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceIndices | TArray < int32 > & |  |

**Return:** bool