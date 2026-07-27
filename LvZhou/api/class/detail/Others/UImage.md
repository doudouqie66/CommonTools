---
title: UImage
language: cpp
---

# UImage

The image widget allows you to display a Slate Brush, or texture or material in the UI.
 
   No Children

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| BrushImage | TSoftObjectPtr < UObject > |  |
| bIsEnhancedImage | bool |  |
| ForceAsyncLoadReference | bool |  |
| BrushAssetReference | FStringAssetReference |  |
| Brush | FSlateBrush | Image to draw |
| BrushMaterialParamNames | FString |  |
| BrushDelegate | FGetSlateBrush | A bindable delegate for the Image. |
| ColorAndOpacity | FLinearColor | Color and opacity |
| ColorAndOpacityDelegate | FGetLinearColor | A bindable delegate for the ColorAndOpacity. |
| bIsUseEnhancedHitTest | bool | 是否使用自定义触摸响应区域，在运行时修改无效 |
| HitTestAreaRadius | float | 圆形响应区域的半径，最大为控件边长一半，-1为控件大小一半 |
| OnMouseButtonDownEvent | FOnPointerEvent |  |

## Functions

### GetBrush

**Return:** FSlateBrush 

### SetColorAndOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InColorAndOpacity | FLinearColor |  |

**Return:** void  

### SetColorRGBStr

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| HexString | FString & |  |

**Return:** void  

### SetBrushImageReference

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetReference | FStringAssetReference |  |

**Return:** void  

### SetBrushImageReferenceWithMatchSize

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetReference | FStringAssetReference  |  |
| bMatchSize | bool |  |

**Return:** void  

### SetBrushImageReferenceWithColor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AssetReference | FStringAssetReference  |  |
| Color | FLinearColor  |  |
| bMatchSize | bool |  |

**Return:** void  

### SetOpacity

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOpacity | float |  |

**Return:** void  

### SetBrush

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InBrush | FSlateBrush & |  |

**Return:** void  

### SetBrushFromAsset

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Asset | USlateBrushAsset * |  |

**Return:** void  

### SetBrushFromTexture

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture2D *  |  |
| bMatchSize | bool |  |

**Return:** void  

### SetBrushFromTextureDynamic

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture2DDynamic *  |  |
| bMatchSize | bool |  |

**Return:** void  

### SetBrushFromMaterial

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface * |  |

**Return:** void  

### GetDynamicMaterial

**Return:** UMaterialInstanceDynamic * 

### SetDisablePaint

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InDisablePaint | bool |  |

**Return:** void  

### ReleaseAsyncSetBrushHandle

**Return:** void 

### OnAsyncLoadImageAssetComplete

**Return:** void 

### OnAsyncLoadAssetComplete

**Return:** void