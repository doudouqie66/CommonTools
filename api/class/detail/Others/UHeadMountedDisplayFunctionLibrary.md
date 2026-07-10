---
title: UHeadMountedDisplayFunctionLibrary
language: cpp
---

# UHeadMountedDisplayFunctionLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### IsHeadMountedDisplayEnabled

Returns whether or not we are currently using the head mounted display.
	 

**Return:** bool (Boolean)  status of HMD

### IsHeadMountedDisplayConnected

Returns whether or not the HMD hardware is connected and ready to use.  It may or may not actually be in use.
	

**Return:** bool (Boolean)  status whether the HMD hardware is connected and ready to use.  It may or may not actually be in use.

### EnableHMD

Switches tofrom using HMD and stereo rendering.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  (in) 'true' to enable HMD stereo; 'false' otherwise |

**Return:** bool  (Boolean)		True, if the request was successful.

### GetHMDDeviceName

Returns the name of the device, so scripts can modify their behaviour appropriately
	 

**Return:** FName FName specific to the currently active HMD device type.  "None" implies no device, "Unknown" implies a device with no description.

### GetHMDWornState

Returns the worn state of the device.
	

**Return:** EHMDWornState :: Type Unknown, Worn, NotWorn.  If the platform does not detect this it will always return Unknown.

### GetOrientationAndPosition

Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DeviceRotation | FRotator &  | (out) The device's current rotation |
| DevicePosition | FVector & | (out) The device's current position, in its own tracking space |

**Return:** void  

### HasValidTrackingPosition

If the HMD supports positional tracking, whether or not we are currently being tracked

**Return:** bool 

### GetNumOfTrackingSensors

If the HMD has multiple positional tracking sensors, return a total number of them currently connected.

**Return:** int32 

### GetTrackingSensorParameters

If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.
	  This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Origin | FVector &  |  (out) Origin, in world-space, of the sensor |
| Rotation | FRotator &  |  (out) Rotation, in world-space, of the sensor |
| LeftFOV | float &  |  (out) Field-of-view, left from center, in degrees, of the valid tracking zone of the sensor |
| RightFOV | float &  |  (out) Field-of-view, right from center, in degrees, of the valid tracking zone of the sensor |
| TopFOV | float &  |  (out) Field-of-view, top from center, in degrees, of the valid tracking zone of the sensor |
| BottomFOV | float &  |  (out) Field-of-view, bottom from center, in degrees, of the valid tracking zone of the sensor |
| Distance | float &  |  (out) Nominal distance to sensor, in world-space |
| NearPlane | float &  |  (out) Near plane distance of the tracking volume, in world-space |
| FarPlane | float &  |  (out) Far plane distance of the tracking volume, in world-space |
| IsActive | bool &  |  (out) True, if the query for the specified sensor succeeded. |
| Index | int32 |  (in) Index of the tracking sensor to query |

**Return:** void  

### GetPositionalTrackingCameraParameters

If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.
	  This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CameraOrigin | FVector &  |  |
| CameraRotation | FRotator &  |  |
| HFOV | float &  |  (out) Field-of-view, horizontal, in degrees, of the valid tracking zone of the sensor |
| VFOV | float &  |  (out) Field-of-view, vertical, in degrees, of the valid tracking zone of the sensor |
| CameraDistance | float &  | (out) Nominal distance to sensor, in world-space |
| NearPlane | float &  |  (out) Near plane distance of the tracking volume, in world-space |
| FarPlane | float & |  (out) Far plane distance of the tracking volume, in world-space |

**Return:** void  

### IsInLowPersistenceMode

Returns true, if HMD is in low persistence mode. 'false' otherwise.

**Return:** bool 

### EnableLowPersistenceMode

Switches between low and full persistence modes.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  (in) 'true' to enable low persistence mode; 'false' otherwise |

**Return:** void  

### ResetOrientationAndPosition

Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming
	  current position as a 'zero-point' (for positional tracking). 
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Yaw | float  |  (in) the desired yaw to be set after orientation reset. |
| Options | EOrientPositionSelector :: Type |  (in) specifies either position, orientation or both should be reset. |

**Return:** void  

### SetClippingPlanes

Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this
	  call won't be saved in .ini file.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Near | float  |  (in) Near clipping plane, in centimeters |
| Far | float |  (in) Far clipping plane, in centimeters |

**Return:** void  

### GetScreenPercentage

Returns screen percentage to be used in VR mode.
	 

**Return:** float (float)	The screen percentage to be used in VR mode.

### SetWorldToMetersScale

Sets the World to Meters scale, which changes the scale of the world as perceived by the player
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject *  |  |
| NewScale | float | Specifies how many Unreal units correspond to one meter in the real world |

**Return:** void  

### GetWorldToMetersScale

Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContext | UObject * |  |

**Return:** float  How many Unreal units correspond to one meter in the real world

### SetTrackingOrigin

Sets current tracking origin type (eye level or floor level).

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Origin | TEnumAsByte < EHMDTrackingOrigin :: Type > |  |

**Return:** void  

### GetTrackingOrigin

Returns current tracking origin type (eye level or floor level).

**Return:** TEnumAsByte < EHMDTrackingOrigin :: Type > 

### GetVRFocusState

Returns current state of VR focus.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUseFocus | bool &  | (out) if set to true, then this App does use VR focus. |
| bHasFocus | bool & | (out) if set to true, then this App currently has VR focus. |

**Return:** void  

### IsSpectatorScreenModeControllable

Return true if spectator screen mode control is available.

**Return:** bool 

### SetSpectatorScreenMode

Sets the social screen mode.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Mode | ESpectatorScreenMode |  (in) The social screen Mode. |

**Return:** void  

### SetSpectatorScreenTexture

Change the texture displayed on the social screen

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InTexture | UTexture * |  |

**Return:** void  

### SetSpectatorScreenModeTexturePlusEyeLayout

Setup the layout for ESpectatorScreenMode::TexturePlusEye.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EyeRectMin | FVector2D  |  |
| EyeRectMax | FVector2D  |  |
| TextureRectMin | FVector2D  |  |
| TextureRectMax | FVector2D  |  |
| bDrawEyeFirst | bool  |  |
| bClearBlack | bool |  |

**Return:** void