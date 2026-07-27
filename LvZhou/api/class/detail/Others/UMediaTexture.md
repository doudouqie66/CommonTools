---
title: UMediaTexture
language: cpp
---

# UMediaTexture

Implements a texture asset for rendering video tracks from UMediaPlayer assets.

> Inheritance: UTexture

## Variables

| Name | Type | Description |
|------|------|-------------|
| AddressX | TEnumAsByte < TextureAddress > | The addressing mode to use for the X axis. |
| AddressY | TEnumAsByte < TextureAddress > | The addressing mode to use for the Y axis. |
| AutoClear | bool | Whether to clear the texture when no media is being played (default = enabled). |
| ClearColor | FLinearColor | The color used to clear the texture if AutoClear is enabled (default = black). |
| MediaPlayer | UMediaPlayer * | The media player asset associated with this texture. |

## Functions

### GetAspectRatio

Gets the current aspect ratio of the texture.
	 

**Return:** float Texture aspect ratio.

### GetHeight

Gets the current height of the texture.
	 

**Return:** int32 Texture height (in pixels).

### GetWidth

Gets the current width of the texture.
	 

**Return:** int32 Texture width (in pixels).

### ResetFirstFrame

Reset The IsFirstFrameRender&IsFirstFrameNotify to false for iOS

**Return:** void