---
title: USplineMeshComponent
language: cpp
---

# USplineMeshComponent

A Spline Mesh Component is a derivation of a Static Mesh Component which can be deformed using a spline. Only a start and end position (and tangent) can be specified.

> Inheritance: UStaticMeshComponent -> IInterface_CollisionDataProvider

## Variables

| Name | Type | Description |
|------|------|-------------|
| SplineParams | FSplineMeshParams | Spline that is used to deform mesh |
| SplineUpDir | FVector | Axis (in component space) that is used to determine X axis for co-ordinates alon |
| bAllowSplineEditingPerInstance | uint32 | If true, spline keys may be edited per instance in the level viewport. Otherwise |
| bSmoothInterpRollScale | uint32 | If true, will use smooth interpolation (ease inout) for Scale, Roll, and Offset  |
| ForwardAxis | TEnumAsByte < ESplineMeshAxis :: Type > | Chooses the forward axis for the spline mesh orientation |
| SplineBoundaryMin | float | Minimum coordinate along the spline forward axis which corresponds to start of s |
| SplineBoundaryMax | float | Maximum coordinate along the spline forward axis which corresponds to end of spl |
| BodySetup | UBodySetup * |  |
| CachedMeshBodySetupGuid | FGuid |  |
| bMeshDirty | uint32 |  |
| bHasBeenBakedWithLandcape | uint32 |  |

## Functions

### UpdateMesh

Update the collision and render state on the spline mesh following changes to its geometry

**Return:** void 

### GetStartPosition

Get the start position of spline in local space

**Return:** FVector 

### SetStartPosition

Set the start position of spline in local space

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartPos | FVector  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetStartTangent

Get the start tangent vector of spline in local space

**Return:** FVector 

### SetStartTangent

Set the start tangent vector of spline in local space

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartTangent | FVector  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetEndPosition

Get the end position of spline in local space

**Return:** FVector 

### SetEndPosition

Set the end position of spline in local space

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndPos | FVector  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetEndTangent

Get the end tangent vector of spline in local space

**Return:** FVector 

### SetEndTangent

Set the end tangent vector of spline in local space

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndTangent | FVector  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### SetStartAndEnd

Set the start and end, position and tangent, all in local space

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartPos | FVector  |  |
| StartTangent | FVector  |  |
| EndPos | FVector  |  |
| EndTangent | FVector  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetStartScale

Get the start scaling

**Return:** FVector2D 

### SetStartScale

Set the start scaling

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartScale | FVector2D  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetStartRoll

Get the start roll

**Return:** float 

### SetStartRoll

Set the start roll

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartRoll | float  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetStartOffset

Get the start offset

**Return:** FVector2D 

### SetStartOffset

Set the start offset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartOffset | FVector2D  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetEndScale

Get the end scaling

**Return:** FVector2D 

### SetEndScale

Set the end scaling

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndScale | FVector2D  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetEndRoll

Get the end roll

**Return:** float 

### SetEndRoll

Set the end roll

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndRoll | float  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetEndOffset

Get the end offset

**Return:** FVector2D 

### SetEndOffset

Set the end offset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EndOffset | FVector2D  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetForwardAxis

Get the forward axis

**Return:** ESplineMeshAxis :: Type 

### SetForwardAxis

Set the forward axis

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InForwardAxis | ESplineMeshAxis :: Type  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetSplineUpDir

Get the spline up direction

**Return:** FVector 

### SetSplineUpDir

Set the spline up direction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSplineUpDir | FVector &  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetBoundaryMin

Get the boundary min

**Return:** float 

### SetBoundaryMin

Set the boundary min

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoundaryMin | float  |  |
| bUpdateMesh | bool |  |

**Return:** void  

### GetBoundaryMax

Get the boundary max

**Return:** float 

### SetBoundaryMax

Set the boundary max

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBoundaryMax | float  |  |
| bUpdateMesh | bool |  |

**Return:** void