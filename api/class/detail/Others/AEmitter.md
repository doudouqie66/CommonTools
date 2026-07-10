---
title: AEmitter
language: cpp
---

# AEmitter

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| ParticleSystemComponent | UParticleSystemComponent * |  |
| bDestroyOnSystemFinish | uint32 |  |
| bPostUpdateTickGroup | uint32 |  |
| bCurrentlyActive | uint32 | used to update status of toggleable level placed emitters on clients |

## Functions

### OnParticleSystemFinished

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FinishedComponent | UParticleSystemComponent * |  |

**Return:** void  

### OnRep_bCurrentlyActive

Replication Notification Callbacks

**Return:** void 

### Activate

**Return:** void 

### Deactivate

**Return:** void 

### ToggleActive

**Return:** void 

### IsActive

**Return:** bool 

### SetTemplate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewTemplate | UParticleSystem * |  |

**Return:** void  

### SetFloatParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | float |  |

**Return:** void  

### SetVectorParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | FVector |  |

**Return:** void  

### SetColorParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | FLinearColor |  |

**Return:** void  

### SetActorParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | AActor * |  |

**Return:** void  

### SetMaterialParameter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName  |  |
| Param | UMaterialInterface * |  |

**Return:** void