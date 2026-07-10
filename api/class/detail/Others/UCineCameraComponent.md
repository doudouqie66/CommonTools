---
title: UCineCameraComponent
language: cpp
---

# UCineCameraComponent

A specialized version of a camera component, geared toward cinematic usage.

> Inheritance: UCameraComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| FilmbackSettings | FCameraFilmbackSettings | Controls the filmback of the camera. |
| LensSettings | FCameraLensSettings | Controls the camera's lens. |
| FocusSettings | FCameraFocusSettings | Controls the camera's focus. |
| CurrentFocalLength | float | Current focal length of the camera (i.e. controls FoV, zoom) |
| CurrentAperture | float | Current aperture, in terms of f-stop (e.g. 2.8 for f2.8) |
| CurrentFocusDistance | float | Read-only. Control this value via FocusSettings. |
| FilmbackPresets | TArray < FNamedFilmbackPreset > | List of available filmback presets |
| LensPresets | TArray < FNamedLensPreset > | List of available lens presets |
| DefaultFilmbackPresetName | FString | Name of the default filmback preset |
| DefaultLensPresetName | FString | Name of the default lens preset |
| DefaultLensFocalLength | float | Default focal length (will be constrained by default lens) |
| DefaultLensFStop | float | Default aperture (will be constrained by default lens) |

## Functions

### GetHorizontalFieldOfView

Returns the horizonal FOV of the camera with current settings.

**Return:** float 

### GetVerticalFieldOfView

Returns the vertical FOV of the camera with current settings.

**Return:** float 

### GetFilmbackPresetName

Returns the filmback name of the camera with the current settings.

**Return:** FString 

### SetFilmbackPresetByName

Set the current preset settings by preset name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPresetName | FString & |  |

**Return:** void  

### GetLensPresetName

Returns the lens name of the camera with the current settings.

**Return:** FString 

### SetLensPresetByName

Set the current lens settings by preset name.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPresetName | FString & |  |

**Return:** void