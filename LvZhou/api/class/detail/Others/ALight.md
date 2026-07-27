---
title: ALight
language: cpp
---

# ALight

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| LightComponent | ULightComponent * | @todo document |
| bEnabled | uint32 | replicated copy of LightComponent's bEnabled property |

## Functions

### OnRep_bEnabled

Replication Notification Callbacks

**Return:** void 

### SetEnabled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bSetEnabled | bool |  |

**Return:** void  

### IsEnabled

**Return:** bool 

### ToggleEnabled

**Return:** void 

### SetBrightness

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewBrightness | float |  |

**Return:** void  

### GetBrightness

**Return:** float 

### SetLightColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightColor | FLinearColor |  |

**Return:** void  

### GetLightColor

**Return:** FLinearColor 

### SetLightFunctionMaterial

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionMaterial | UMaterialInterface * |  |

**Return:** void  

### SetLightFunctionScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionScale | FVector |  |

**Return:** void  

### SetLightFunctionFadeDistance

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLightFunctionFadeDistance | float |  |

**Return:** void  

### SetCastShadows

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void  

### SetAffectTranslucentLighting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewValue | bool |  |

**Return:** void