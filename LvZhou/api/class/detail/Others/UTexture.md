---
title: UTexture
language: cpp
---

# UTexture

> Inheritance: UObject -> IInterface_AssetUserData

## Variables

| Name | Type | Description |
|------|------|-------------|
| LightingGuid | FGuid | Unique ID for this material, used for caching during distributed lighting |
| LODBias | int32 | -------------------------------------------------------------------------- 	---- |
| ExpectedQualityLimit | FExpectedQuality |  |
| NumCinematicMipLevels | int32 | Number of mip-levels to use for cinematic quality. |
| SRGB | uint32 | This should be unchecked if using alpha channels individually as masks. |
| bNotUsedInUltimateHighQuality | uint32 |  |
| bNotUsedInHighQuality | uint32 |  |
| bNotUsedInMediumQuality | uint32 |  |
| bNotUsedInLowQuality | uint32 |  |
| NeverStream | uint32 |  |
| bNoTiling | uint32 | If true, the RHI texture will be created using TexCreate_NoTiling |
| bUseCinematicMipLevels | uint32 | Whether to use the extra cinematic quality mip-levels, when we're forcing mip-le |
| AssetUserData | TArray < UAssetUserData * > | Array of user data stored with the asset |
| CachedCombinedLODBias | int32 | Cached combined group and texture LOD bias to use. |
| bAsyncResourceReleaseHasBeenStarted | uint32 | Whether the async resource release process has already been kicked off or not |
| CompressionSettings | TEnumAsByte < enum TextureCompressionSettings > | Compression settings to use when building the texture. |
| Filter | TEnumAsByte < enum TextureFilter > | The texture filtering mode to use when sampling this texture. |
| LODGroup | TEnumAsByte < enum TextureGroup > | Texture group this texture belongs to |
| CrunchSetting | TEnumAsByte < enum ETextureCrunchSetting > |  |
| bOverrideCrunchCompressionAmount | uint32 |  |
| CrunchCompressionAmount | float |  |
| BasisSetting | TEnumAsByte < enum ETextureBasisSetting > |  |
| bOverrideBasisCompressionAmount | uint32 |  |
| BasisCompressionAmount | float |  |
| Source | FTextureSource | -------------------------------------------------------------------------- 	---- |
| SourceFilePath_DEPRECATED | FString |  |
| AssetImportData | UAssetImportData * |  |
| AdjustBrightness | float | Static texture brightness adjustment (scales HSV value.)  (Non-destructive; Requ |
| AdjustBrightnessCurve | float | Static texture curve adjustment (raises HSV value to the specified power.)  (Non |
| AdjustVibrance | float | Static texture "vibrance" adjustment (0 - 1) (HSV saturation algorithm adjustmen |
| AdjustSaturation | float | Static texture saturation adjustment (scales HSV saturation.)  (Non-destructive; |
| AdjustRGBCurve | float | Static texture RGB curve adjustment (raises linear-space RGB color to the specif |
| AdjustHue | float | Static texture hue adjustment (0 - 360) (offsets HSV hue by value in degrees.)   |
| AdjustMinAlpha | float | Remaps the alpha to the specified minmax range, defines the new value of 0 (Non- |
| AdjustMaxAlpha | float | Remaps the alpha to the specified minmax range, defines the new value of 1 (Non- |
| CompressionNoAlpha | uint32 | If enabled, the texture's alpha channel will be discarded during compression |
| CompressionNone | uint32 |  |
| DeferCompression | uint32 | If enabled, defer compression of the texture until save. |
| MaxTextureSize | int32 | The maximum resolution for generated textures. A value of 0 means the maximum si |
| MaxTextureSizeHD | int32 |  |
| MaxTextureSizeWinOB | int32 |  |
| MaxTextureSizePC | int32 |  |
| CompressionQuality | TEnumAsByte < enum ETextureCompressionQuality > | The compression quality for generated textures. |
| bDitherMipMapAlpha | uint32 | When true, the alpha channel of mip-maps and the base image are dithered for smo |
| AlphaCoverageThresholds | FVector4 | Alpha values per channel to compare to when preserving alpha coverage. |
| bPreserveBorder | uint32 | When true the texture's border will be preserved during mipmap generation. |
| bFlipGreenChannel | uint32 | When true the texture's green channel will be inverted. This is useful for some  |
| bForcePVRTC4 | uint32 | For DXT1 textures, setting this will cause the texture to be twice the size, but |
| PowerOfTwoMode | TEnumAsByte < enum ETexturePowerOfTwoSetting :: Type > | How to pad the texture to a power of 2 size (if necessary) |
| PaddingColor | FColor | The color used to pad the texture out if it is resized due to PowerOfTwoMode |
| bChromaKeyTexture | bool | Whether to chroma key the image, replacing any pixels that match ChromaKeyColor  |
| ChromaKeyThreshold | float | The threshold that components have to match for the texel to be considered equal |
| ChromaKeyColor | FColor | The color that will be replaced with transparent black if chroma keying is enabl |
| MipGenSettings | TEnumAsByte < enum TextureMipGenSettings > | Per asset specific setting to define the mip-map generation properties like shar |
| bUseNewFilter_UE4 | bool | New Tex Mip Filter  Tex MaxSize Filter from UE5 |
| CompositeTexture | UTexture * | Can be defined to modify the roughness based on the normal map variation (mostly |
| CompositeTextureMode | TEnumAsByte < enum ECompositeTextureMode > | defines how the CompositeTexture is applied, e.g. CTM_RoughnessFromNormalAlpha |
| CompositePower | float | default 1, high values result in a stronger effect e.g 1, 2, 4, 8 	  this is no  |
| bIsCookingHDTexture | bool |  |
| bIsCookingPCTexture | bool |  |
| bUseLegacyGamma | uint32 | A flag for using the simplified legacy gamma space e.g pow(color,12.2) for conve |
| bKeepSourceDataWhenCookingUGCEditor | uint32 |  |