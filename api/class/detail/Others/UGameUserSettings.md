---
title: UGameUserSettings
language: cpp
---

# UGameUserSettings

Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bUseVSync | bool | Whether to use VSync or not. (public to allow UI to connect to it) |
| ResolutionSizeX | uint32 | Game screen resolution width, in pixels. |
| ResolutionSizeY | uint32 | Game screen resolution height, in pixels. |
| LastUserConfirmedResolutionSizeX | uint32 | Game screen resolution width, in pixels. |
| LastUserConfirmedResolutionSizeY | uint32 | Game screen resolution height, in pixels. |
| IsBorderless | bool | Is game window borderless added by windzjliu |
| BorderlessMode | int32 |  |
| WindowPosX | int32 | Window PosX |
| WindowPosY | int32 | Window PosY |
| FullscreenMode | int32 | Game window fullscreen mode 	 	0 = Fullscreen 	 	1 = Windowed fullscreen 	 	2 =  |
| LastConfirmedFullscreenMode | int32 | Last user confirmed fullscreen mode setting. |
| PreferredFullscreenMode | int32 | Fullscreen mode to use when toggling between windowed and fullscreen. Same value |
| Version | uint32 | All settings will be wiped and set to default if the serialized version differs  |
| AudioQualityLevel | int32 |  |
| FrameRateLimit | float | Frame rate cap |
| DesiredScreenWidth | int32 | Desired screen width used to calculate the resolution scale when user changes di |
| bUseDesiredScreenHeight | bool | If true, the desired screen height will be used to scale the render resolution a |
| DesiredScreenHeight | int32 | Desired screen height used to calculate the resolution scale when user changes d |
| LastRecommendedScreenWidth | float | Result of the last benchmark; calculated resolution to use. |
| LastRecommendedScreenHeight | float | Result of the last benchmark; calculated resolution to use. |
| LastCPUBenchmarkResult | float | Result of the last benchmark (CPU); -1 if there has not been a benchmark run |
| LastGPUBenchmarkResult | float | Result of the last benchmark (GPU); -1 if there has not been a benchmark run |
| LastCPUBenchmarkSteps | TArray < float > | Result of each individual sub-section of the last CPU benchmark; empty if there  |
| LastGPUBenchmarkSteps | TArray < float > | Result of each individual sub-section of the last GPU benchmark; empty if there  |
| LastGPUBenchmarkMultiplier | float | Multiplier used against the last GPU benchmark |
| bUseHDRDisplayOutput | bool | HDR |
| HDRDisplayOutputNits | int32 | HDR |

## Functions

### ApplySettings

Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bCheckForCommandLineOverrides | bool |  |

**Return:** void  

### ApplyNonResolutionSettings

**Return:** void 

### ApplyResolutionSettings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bCheckForCommandLineOverrides | bool |  |

**Return:** void  

### GetScreenResolution

Returns the user setting for game screen resolution, in pixels.

**Return:** FIntPoint 

### GetLastConfirmedScreenResolution

Returns the last confirmed user setting for game screen resolution, in pixels.

**Return:** FIntPoint 

### GetDesktopResolution

Returns user's desktop resolution, in pixels.

**Return:** FIntPoint 

### SetScreenResolution

Sets the user setting for game screen resolution, in pixels.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Resolution | FIntPoint |  |

**Return:** void  

### GetIsBorderless

IsBorderless getter and setter added by windzjliu

**Return:** bool 

### SetIsBorderless

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InIsBorderless | bool |  |

**Return:** void  

### GetBorderlessMode

**Return:** int32 

### SetBorderlessMode

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBorderlessMode | int32 |  |

**Return:** void  

### GetFullscreenMode

Returns the user setting for game window fullscreen mode.

**Return:** EWindowMode :: Type 

### GetLastConfirmedFullscreenMode

Returns the last confirmed user setting for game window fullscreen mode.

**Return:** EWindowMode :: Type 

### SetFullscreenMode

Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InFullscreenMode | EWindowMode :: Type |  |

**Return:** void  

### GetPreferredFullscreenMode

Returns the user setting for game window fullscreen mode.

**Return:** EWindowMode :: Type 

### SetVSyncEnabled

Sets the user setting for vsync. See UGameUserSettings::bUseVSync.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### IsVSyncEnabled

Returns the user setting for vsync.

**Return:** bool 

### IsScreenResolutionDirty

Checks if the Screen Resolution user setting is different from current

**Return:** bool 

### IsFullscreenModeDirty

Checks if the FullscreenMode user setting is different from current

**Return:** bool 

### IsVSyncDirty

Checks if the vsync user setting is different from current system setting

**Return:** bool 

### ConfirmVideoMode

Mark current video mode settings (fullscreenmoderesolution) as being confirmed by the user

**Return:** void 

### RevertVideoMode

Revert video mode (fullscreenmoderesolution) back to the last user confirmed values

**Return:** void 

### SetBenchmarkFallbackValues

Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash

**Return:** void 

### SetAudioQualityLevel

Sets the user's audio quality level setting

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QualityLevel | int32 |  |

**Return:** void  

### GetAudioQualityLevel

Returns the user's audio quality level setting

**Return:** int32 

### SetFrameRateLimit

Sets the user's frame rate limit (0 will disable frame rate limiting)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLimit | float |  |

**Return:** void  

### GetFrameRateLimit

Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled)

**Return:** float 

### SetOverallScalabilityLevel

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetOverallScalabilityLevel

**Return:** int32 

### GetResolutionScaleInformation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CurrentScaleNormalized | float &  |  |
| CurrentScaleValue | int32 &  |  |
| MinScaleValue | int32 &  |  |
| MaxScaleValue | int32 & |  |

**Return:** void  

### GetResolutionScaleInformationEx

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CurrentScaleNormalized | float &  |  |
| CurrentScaleValue | float &  |  |
| MinScaleValue | float &  |  |
| MaxScaleValue | float & |  |

**Return:** void  

### SetResolutionScaleValue

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScaleValue | int32 |  |

**Return:** void  

### SetResolutionScaleValueEx

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScaleValue | float |  |

**Return:** void  

### SetResolutionScaleNormalized

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewScaleNormalized | float |  |

**Return:** void  

### SetViewDistanceQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetViewDistanceQuality

**Return:** int32 

### SetShadowQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetShadowQuality

**Return:** int32 

### SetAntiAliasingQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetAntiAliasingQuality

**Return:** int32 

### SetTextureQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetTextureQuality

**Return:** int32 

### SetVisualEffectQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetVisualEffectQuality

**Return:** int32 

### SetPostProcessingQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetPostProcessingQuality

**Return:** int32 

### SetFoliageQuality

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Value | int32 |  |

**Return:** void  

### GetFoliageQuality

**Return:** int32 

### IsDirty

Checks if any user settings is different from current

**Return:** bool 

### ValidateSettings

Validates and resets bad user settings to default. Deletes stale user settings file if necessary.

**Return:** void 

### LoadSettings

Loads the user settings from persistent storage

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bForceReload | bool |  |

**Return:** void  

### SaveSettings

Save the user settings to persistent storage (automatically happens as part of ApplySettings)

**Return:** void 

### ResetToCurrentSettings

This function resets all settings to the current system settings

**Return:** void 

### SetToDefaults

**Return:** void 

### GetDefaultResolutionScale

Gets the desired resolution quality based on DesiredScreenWidthHeight and the current screen resolution

**Return:** float 

### GetRecommendedResolutionScale

Gets the recommended resolution quality based on LastRecommendedScreenWidthHeight and the current screen resolution

**Return:** float 

### GetDefaultResolution

**Return:** FIntPoint The default resolution when no resolution is set

### GetDefaultWindowPosition

**Return:** FIntPoint The default window position when no position is set

### GetDefaultWindowMode

**Return:** EWindowMode :: Type The default window mode when no mode is set

### GetGameUserSettings

Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...)

**Return:** UGameUserSettings * 

### RunHardwareBenchmark

Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorkScale | int32  |  |
| CPUMultiplier | float  |  |
| GPUMultiplier | float |  |

**Return:** void  

### ApplyHardwareBenchmarkResults

Applies the settings stored in ScalabilityQuality and saves settings

**Return:** void 

### SupportsHDRDisplayOutput

Whether the curently running system supports HDR display output

**Return:** bool 

### EnableHDRDisplayOutput

Enables or disables HDR display output. Can be called again to change the desired nit level

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool  |  |
| DisplayNits | int32 |  |

**Return:** void  

### GetCurrentHDRDisplayNits

Returns 0 if HDR isn't supported or is turned off

**Return:** int32 

### IsHDREnabled

**Return:** bool