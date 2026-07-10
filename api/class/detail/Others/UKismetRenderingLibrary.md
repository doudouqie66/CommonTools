---
title: UKismetRenderingLibrary
language: cpp
---

# UKismetRenderingLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### ClearRenderTarget2D

Clears the specified render target with the given ClearColor.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| ClearColor | FLinearColor |  |

**Return:** ENGINE_API void  

### CreateRenderTarget2D

Creates a new render target and initializes it to the specified dimensions

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Width | int32  |  |
| Height | int32  |  |
| Format | ETextureRenderTargetFormat |  |

**Return:** ENGINE_API UTextureRenderTarget2D *  

### CreateRenderTarget2DExt

Creates a new render target and initializes it to the specified dimensions

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Width | int32  |  |
| Height | int32  |  |
| Format | ETextureRenderTargetFormat  |  |
| ClearColor | FLinearColor & |  |

**Return:** ENGINE_API UTextureRenderTarget2D *  

### CreateRenderTarget2DWithFilter

Creates a new render target and initializes it to the specified dimensions

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Width | int32  |  |
| Height | int32  |  |
| Format | ETextureRenderTargetFormat  |  |
| Filter | TextureFilter |  |

**Return:** ENGINE_API UTextureRenderTarget2D *  

### ReleaseRenderTarget2D

Manually releases GPU resources of a render target. This is useful for blueprint creating a lot of render target that would
	  normally be released too late by the garbage collector that can be problematic on platforms that have tight GPU memory constrains.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TextureRenderTarget | UTextureRenderTarget2D * |  |

**Return:** ENGINE_API void  

### DrawMaterialToRenderTarget

Renders a quad with the material applied to the specified render target.   
	  This sets the render target even if it is already set, which is an expensive operation. 
	  Use BeginDrawCanvasToRenderTarget  EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| Material | UMaterialInterface * |  |

**Return:** ENGINE_API void  

### RenderTargetCreateStaticTexture2DEditorOnly

Creates a new Static Texture from a Render Target 2D. Render Target Must be power of two and use four channels.
	 Only works in the editor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| RenderTarget | UTextureRenderTarget2D *  |  |
| Name | FString  |  |
| CompressionSettings | TextureCompressionSettings  |  |
| MipSettings | TextureMipGenSettings |  |

**Return:** ENGINE_API UTexture2D *  

### ConvertRenderTargetToTexture2DEditorOnly

Copies the contents of a render target to a UTexture2D
	  Only works in the editor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| RenderTarget | UTextureRenderTarget2D *  |  |
| Texture | UTexture2D * |  |

**Return:** ENGINE_API void  

### ExportRenderTarget

Exports a render target as a HDR or PNG image onto the disk (depending on the format of the render target)

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| FilePath | FString &  |  |
| FileName | FString & |  |

**Return:** ENGINE_API void  

### ExportTexture2D

Exports a Texture2D as a HDR image onto the disk.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Texture | UTexture2D *  |  |
| FilePath | FString &  |  |
| FileName | FString & |  |

**Return:** ENGINE_API void  

### BeginDrawCanvasToRenderTarget

Returns a Canvas object that can be used to draw to the specified render target.
	  Canvas has functions like DrawMaterial with size parameters that can be used to draw to a specific area of a render target.
	  Be sure to call EndDrawCanvasToRenderTarget to complete the rendering!

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| Canvas | UCanvas * &  |  |
| Size | FVector2D &  |  |
| Context | FDrawToRenderTargetContext & |  |

**Return:** ENGINE_API void  

### EndDrawCanvasToRenderTarget

Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Context | FDrawToRenderTargetContext & |  |

**Return:** ENGINE_API void  

### MakeSkinWeightInfo

Create FSkelMeshSkinWeightInfo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Bone0 | int32  |  |
| Weight0 | uint8  |  |
| Bone1 | int32  |  |
| Weight1 | uint8  |  |
| Bone2 | int32  |  |
| Weight2 | uint8  |  |
| Bone3 | int32  |  |
| Weight3 | uint8 |  |

**Return:** ENGINE_API FSkelMeshSkinWeightInfo  

### BreakSkinWeightInfo

Break FSkelMeshSkinWeightInfo

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWeight | FSkelMeshSkinWeightInfo  |  |
| Bone0 | int32 &  |  |
| Weight0 | uint8 &  |  |
| Bone1 | int32 &  |  |
| Weight1 | uint8 &  |  |
| Bone2 | int32 &  |  |
| Weight2 | uint8 &  |  |
| Bone3 | int32 &  |  |
| Weight3 | uint8 & |  |

**Return:** ENGINE_API void  

### ReadRenderTargetRawPixel

Incredibly inefficient and slow operation! Read a value as-is from a render target using integer pixel coordinates.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| X | int32  |  |
| Y | int32 |  |

**Return:** ENGINE_API FLinearColor  

### ReadRenderTargetRawUV

Incredibly inefficient and slow operation! Read a value as-is color from a render target using UV [0,1]x[0,1] coordinates.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| TextureRenderTarget | UTextureRenderTarget2D *  |  |
| U | float  |  |
| V | float |  |

**Return:** ENGINE_API FLinearColor  

### NeedsToSwitchVerticalAxis

**Return:** ENGINE_API bool 

### SetCastInsetShadowForAllAttachments

Set the inset shadow casting state of the given component and all its child attachments.
	 	Also choose if all attachments should be grouped for the inset shadow rendering. If enabled, one depth target will be shared for all attachments.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PrimitiveComponent | UPrimitiveComponent *  |  |
| bCastInsetShadow | bool  |  |
| bLightAttachmentsAsGroup | bool |  |

**Return:** ENGINE_API void  

### SetupFPPShadowForAllAttachments

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PrimitiveComponent | UPrimitiveComponent *  |  |
| ChangeRecords | TArray < FFppTppShadowChangeRecord > & |  |

**Return:** ENGINE_API void  

### SetupTPPShadowForAllAttachments

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PrimitiveComponent | UPrimitiveComponent *  |  |
| ChangeRecords | TArray < FFppTppShadowChangeRecord > & |  |

**Return:** ENGINE_API void  

### ResetShadowForAllAttachments

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PrimitiveComponent | UPrimitiveComponent *  |  |
| ChangeRecords | TArray < FFppTppShadowChangeRecord > & |  |

**Return:** ENGINE_API void  

### RecordForAllAttachments

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PrimitiveComponent | UPrimitiveComponent *  |  |
| ChangeRecords | TArray < FFppTppShadowChangeRecord > & |  |

**Return:** ENGINE_API void  

### GetScalabilityQualityLevels

**Return:** ENGINE_API FScalabilityQuality 

### ApplyMaxScalabilityQualityLevels

**Return:** ENGINE_API void 

### ApplyScalabilityQualityLevels

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| QualityLevels | FScalabilityQuality & |  |

**Return:** ENGINE_API void  

### CreateRenderTarget2D

Creates a new render target and initializes it to the specified dimensions

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| Width | int32  |  |
| Height | int32  |  |
| Format | ETextureRenderTargetFormat  |  |
| bAutoGenerateMipmap | bool |  |

**Return:** ENGINE_API UTextureRenderTarget2D *