---
title: UKismetMaterialLibrary
language: cpp
---

# UKismetMaterialLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### SetScalarParameterValue

Sets a scalar parameter value on the material collection instance. Logs if ParameterName is invalid.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Collection | UMaterialParameterCollection *  |  |
| ParameterName | FName  |  |
| ParameterValue | float |  |

**Return:** ENGINE_API void  

### SetVectorParameterValue

Sets a vector parameter value on the material collection instance. Logs if ParameterName is invalid.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Collection | UMaterialParameterCollection *  |  |
| ParameterName | FName  |  |
| ParameterValue | FLinearColor & |  |

**Return:** ENGINE_API void  

### GetScalarParameterValue

Gets a scalar parameter value from the material collection instance. Logs if ParameterName is invalid.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Collection | UMaterialParameterCollection *  |  |
| ParameterName | FName |  |

**Return:** ENGINE_API float  

### GetVectorParameterValue

Gets a vector parameter value from the material collection instance. Logs if ParameterName is invalid.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Collection | UMaterialParameterCollection *  |  |
| ParameterName | FName |  |

**Return:** ENGINE_API FLinearColor  

### CreateDynamicMaterialInstance

Creates a Dynamic Material Instance which you can modify during gameplay.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Parent | UMaterialInterface * |  |

**Return:** ENGINE_API class UMaterialInstanceDynamic *