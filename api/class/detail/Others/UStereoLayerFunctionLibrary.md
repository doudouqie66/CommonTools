---
title: UStereoLayerFunctionLibrary
language: cpp
---

# UStereoLayerFunctionLibrary

StereoLayer Extensions Function Library

> Inheritance: UBlueprintFunctionLibrary

## Functions

### SetSplashScreen

Set splash screen attributes
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture *  |  (in) A texture to be used for the splash. B8R8G8A8 format. |
| Scale | FVector2D  |  (in) Scale of the texture. |
| Offset | FVector2D  |  (in) Position from which to start rendering the texture. |
| bShowLoadingMovie | bool  |  |
| bShowOnSet | bool |  |

**Return:** void  

### ShowSplashScreen

Show the splash screen and override the VR display

**Return:** void 

### HideSplashScreen

Hide the splash screen and return to normal display.

**Return:** void 

### EnableAutoLoadingSplashScreen

Enablesdisables splash screen to be automatically shown when LoadMap is called.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InAutoShowEnabled | bool |  |

**Return:** void