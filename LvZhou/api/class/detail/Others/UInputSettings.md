---
title: UInputSettings
language: cpp
---

# UInputSettings

Project wide settings for input handling

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| AxisConfig | TArray < struct FInputAxisConfigEntry > | Properties of Axis controls |
| bAltEnterTogglesFullscreen | uint32 |  |
| bF11TogglesFullscreen | uint32 |  |
| bUseMouseForTouch | uint32 |  |
| bEnableMouseSmoothing | uint32 |  |
| bEnableFOVScaling | uint32 |  |
| FOVScale | float |  |
| DoubleClickTime | float | If a key is pressed twice in this amount of time it is considered a "double clic |
| bCaptureMouseOnLaunch | bool | Controls if the viewport will capture the mouse on Launch of the application |
| DefaultViewportMouseCaptureMode | EMouseCaptureMode | The default mouse capture mode for the game viewport |
| bDefaultViewportMouseLock_DEPRECATED | bool | The default mouse lock state when the viewport acquires capture |
| DefaultViewportMouseLockMode | EMouseLockMode | The default mouse lock state behavior when the viewport acquires capture |
| ActionMappings | TArray < struct FInputActionKeyMapping > | List of Action Mappings |
| AxisMappings | TArray < struct FInputAxisKeyMapping > | List of Axis Mappings |
| bAlwaysShowTouchInterface | bool | Should the touch input interface be shown always, or only when the platform has  |
| bShowConsoleOnFourFingerTap | bool | Whether or not to show the console on 4 finger tap, on mobile platforms |
| DefaultTouchInterface | FSoftObjectPath | The default on-screen touch input interface for the game (can be null to disable |
| ConsoleKey_DEPRECATED | FKey | The key which opens the console. |
| ConsoleKeys | TArray < FKey > | The keys which open the console. |

## Functions

### GetInputSettings

Returns the game local input settings (action mappings, axis mappings, etc...)

**Return:** UInputSettings * 

### AddActionMapping

Programmatically add an action mapping to the project defaults

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyMapping | FInputActionKeyMapping &  |  |
| bForceRebuildKeymaps | bool |  |

**Return:** void  

### GetActionMappingByName

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InActionName | FName  |  |
| OutMappings | TArray < FInputActionKeyMapping > & |  |

**Return:** void  

### RemoveActionMapping

Programmatically remove an action mapping to the project defaults

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyMapping | FInputActionKeyMapping &  |  |
| bForceRebuildKeymaps | bool |  |

**Return:** void  

### AddAxisMapping

Programmatically add an axis mapping to the project defaults

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyMapping | FInputAxisKeyMapping &  |  |
| bForceRebuildKeymaps | bool |  |

**Return:** void  

### GetAxisMappingByName

Retrieve all axis mappings by a certain name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAxisName | FName  |  |
| OutMappings | TArray < FInputAxisKeyMapping > & |  |

**Return:** void  

### RemoveAxisMapping

Programmatically remove an axis mapping to the project defaults

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| KeyMapping | FInputAxisKeyMapping &  |  |
| bForceRebuildKeymaps | bool |  |

**Return:** void  

### SaveKeyMappings

Flush the current mapping values to the config file

**Return:** void 

### GetActionNames

Populate a list of all defined action names

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ActionNames | TArray < FName > & |  |

**Return:** void  

### GetAxisNames

Populate a list of all defined axis names

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AxisNames | TArray < FName > & |  |

**Return:** void  

### ForceRebuildKeymaps

When changes are made to the default mappings, push those changes out to PlayerInput key maps

**Return:** void 

### ApplySettings

**Return:** void 

### ResetToDefaultEditorSettings

**Return:** void 

### SaveToConfig

**Return:** void 

### GetActionMappings

**Return:** TArray < struct FInputActionKeyMapping > 

### GetAxisMappings

**Return:** TArray < struct FInputAxisKeyMapping >