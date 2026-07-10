---
title: UPhysicsHandleComponent
language: cpp
---

# UPhysicsHandleComponent

Utility object for moving physics objects around.

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| GrabbedComponent | UPrimitiveComponent * | Component we are currently holding |
| bSoftAngularConstraint | uint32 |  |
| bSoftLinearConstraint | uint32 |  |
| bInterpolateTarget | uint32 |  |
| LinearDamping | float | Linear damping of the handle spring. |
| LinearStiffness | float | Linear stiffness of the handle spring |
| AngularDamping | float | Angular stiffness of the handle spring |
| AngularStiffness | float | Angular stiffness of the handle spring |
| InterpolationSpeed | float | How quickly we interpolate the physics target transform |

## Functions

### GrabComponent

Grab the specified component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | UPrimitiveComponent *  |  |
| InBoneName | FName  |  |
| GrabLocation | FVector  |  |
| bConstrainRotation | bool |  |

**Return:** ENGINE_API virtual void  

### GrabComponentAtLocation

Grab the specified component at a given location. Does NOT constraint rotation which means the handle will pivot about GrabLocation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | UPrimitiveComponent *  |  |
| InBoneName | FName  |  |
| GrabLocation | FVector |  |

**Return:** ENGINE_API void  

### GrabComponentAtLocationWithRotation

Grab the specified component at a given location and rotation. Constrains rotation.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Component | UPrimitiveComponent *  |  |
| InBoneName | FName  |  |
| Location | FVector  |  |
| Rotation | FRotator |  |

**Return:** ENGINE_API void  

### ReleaseComponent

Release the currently held component

**Return:** ENGINE_API virtual void 

### GetGrabbedComponent

Returns the currently grabbed component, or null if nothing is grabbed.

**Return:** ENGINE_API class UPrimitiveComponent * 

### SetTargetLocation

Set the target location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector |  |

**Return:** ENGINE_API void  

### SetTargetRotation

Set the target rotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewRotation | FRotator |  |

**Return:** ENGINE_API void  

### SetTargetLocationAndRotation

Set target location and rotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  |  |
| NewRotation | FRotator |  |

**Return:** ENGINE_API void  

### GetTargetLocationAndRotation

Get the current location and rotation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TargetLocation | FVector &  |  |
| TargetRotation | FRotator & |  |

**Return:** ENGINE_API void  

### SetLinearDamping

Set linear damping

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLinearDamping | float |  |

**Return:** ENGINE_API void  

### SetLinearStiffness

Set linear stiffness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLinearStiffness | float |  |

**Return:** ENGINE_API void  

### SetAngularDamping

Set angular damping

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAngularDamping | float |  |

**Return:** ENGINE_API void  

### SetAngularStiffness

Set angular stiffness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewAngularStiffness | float |  |

**Return:** ENGINE_API void  

### SetInterpolationSpeed

Set interpolation speed

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInterpolationSpeed | float |  |

**Return:** ENGINE_API void