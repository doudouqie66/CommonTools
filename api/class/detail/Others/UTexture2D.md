---
title: UTexture2D
language: cpp
---

# UTexture2D

> Inheritance: UTexture

## Variables

| Name | Type | Description |
|------|------|-------------|
| StreamingIndex | int32 | FStreamingTexture index used by the texture streaming system. |
| LevelIndex | int32 | Level scope index of this texture. It is used to reduce the amount of lookup to  |
| FirstResourceMemMip | int32 | keep track of first mip level used for ResourceMem creation |
| bSuperSamplingMipBiasResponsive | uint32 |  |
| PerTextureMipBias | int32 |  |
| ImportedSize | FIntPoint | The imported size of the texture. Only valid on cooked builds when texture sourc |
| ForceMipLevelsToBeResidentTimestamp | double | WorldSettings timestamp that tells the streamer to force all miplevels to be res |
| bTemporarilyDisableStreaming | bool | True if streaming is temporarily disabled so we can update subregions of this te |
| bIsStreamable | bool | Whether the texture is currently streamable or not. |
| bHasStreamingUpdatePending | uint32 | Whether some mips might be streamed soon. If false, the texture is not planned r |
| bForceMiplevelsToBeResident | uint32 | Override whether to fully stream even if texture hasn't been rendered. |
| bIgnoreStreamingMipBias | uint32 | Ignores the streaming mip bias used to accommodate memory constraints. |
| bGlobalForceMipLevelsToBeResident | uint32 | Global and serialized version of ForceMiplevelsToBeResident. |
| bIsTransient | uint32 |  |
| AddressX | TEnumAsByte < enum TextureAddress > | The addressing mode to use for the X axis. |
| AddressY | TEnumAsByte < enum TextureAddress > | The addressing mode to use for the Y axis. |
| NotInlineMipCountOverride | uint8 |  |
| bHasBeenPaintedInEditor | uint32 | Whether the texture has been painted in the editor. |

## Functions

### Blueprint_GetSizeX

Gets the X size of the texture, in pixels

**Return:** int32 

### Blueprint_GetSizeY

Gets the Y size of the texture, in pixels

**Return:** int32