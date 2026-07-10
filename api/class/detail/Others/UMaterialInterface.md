---
title: UMaterialInterface
language: cpp
---

# UMaterialInterface

> Inheritance: UObject -> IBlendableInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| SubsurfaceProfile | USubsurfaceProfile * | SubsurfaceProfile, for Screen Space Subsurface Scattering |
| LightmassSettings | FLightmassMaterialInterfaceSettings | The Lightmass settings for this object. |
| TextureStreamingData | TArray < FMaterialTextureInfo > | Data used by the texture streaming to know how each texture is sampled by the ma |
| bTextureStreamingDataSorted | bool | Because of redirector, the texture names need to be resorted at each load in cas |
| TextureStreamingDataVersion | int32 |  |
| PreviewMesh | FSoftObjectPath | The mesh used by the material editor to preview the material. |
| ThumbnailInfo | UThumbnailInfo * | Information for thumbnail rendering |
| LightingGuid | FGuid | Unique ID for this material, used for caching during distributed lighting |

## Functions

### GetBaseMaterial

Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual GetMaterial()

**Return:** ENGINE_API UMaterial * 

### GetPhysicalMaterial

Return a pointer to the physical material used by this material instance.

**Return:** UPhysicalMaterial * The physical material.

### SetForceMipLevelsToBeResident

Force the streaming system to disregard the normal logic for the specified duration and
	  instead always load all mip-levels for all textures used by this material.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OverrideForceMiplevelsToBeResident | bool  | - Whether to use (true) or ignore (false) the bForceMiplevelsToBeResidentValue parameter. |
| bForceMiplevelsToBeResidentValue | bool  | - true forces all mips to stream in. false lets other factors decide what to do with the mips. |
| ForceDuration | float  |    - Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic. Negative value turns it off. |
| CinematicTextureGroups | int32 |  - Bitfield indicating texture groups that should use extra high-resolution mips |

**Return:** ENGINE_API virtual void  

### SetStreamingTextureMipOffset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewMipOffset | int32  |  |
| SizeLimited | bool |  |

**Return:** ENGINE_API virtual void