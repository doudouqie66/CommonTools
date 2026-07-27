---
title: UDynamicInputBindingComponent
language: cpp
---

# UDynamicInputBindingComponent

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ActionBindingClusters | TArray < FActionBindingCluster > |  |
| AxisBindingClusters | TArray < FAxisBindingCluster > |  |

## Functions

### BindAction

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionName | FName &  |  |
| ActorInputEvent | EActorInputEvent  |  |
| FunctionName | FName &  |  |
| bConsumeInput | bool |  |

**Return:** void  

### BindAxis

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisName | FName &  |  |
| FunctionName | FName &  |  |
| bConsumeInput | bool |  |

**Return:** void  

### RemoveActionBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionName | FName & |  |

**Return:** void  

### RemoveAxisBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisName | FName & |  |

**Return:** void  

### BindActionCluster

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** void  

### BindAxisCluster

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** void  

### RemoveActionClusterBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** void  

### RemoveAxisClusterBinding

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** void