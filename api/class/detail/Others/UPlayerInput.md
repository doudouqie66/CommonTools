---
title: UPlayerInput
language: cpp
---

# UPlayerInput

end: 单条记录，滑屏轨迹中的一个点 

  Object within PlayerController that processes player input.
  Only exists on the client in network games.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnableKeyInput | bool |  |
| InputTouchCacheDataList | TArray < FInputTouchCacheData > |  |
| DebugExecBindings | TArray < struct FKeyBind > | Generic bindings of keys to Exec()-compatible strings for development purposes o |
| InvertedAxis | TArray < FName > | List of Axis Mappings that have been inverted |

## Functions

### SetMouseSensitivity

Exec function to change the mouse sensitivity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Sensitivity | float |  |

**Return:** void  

### SetBind

Exec function to add a debug exec command

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| BindName | FName  |  |
| Command | FString & |  |

**Return:** void  

### InvertAxisKey

Exec function to invert an axis key

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisKey | FKey |  |

**Return:** void  

### InvertAxis

Exec function to invert an axis mapping

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisName | FName |  |

**Return:** void  

### ClearSmoothing

Exec function to reset mouse smoothing values

**Return:** void