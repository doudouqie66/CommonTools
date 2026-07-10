---
title: FFontData
---

# FFontData

Payload data describing an individual font in a typeface. Keep this lean as it's also used as a key!

## Variables

| Name | Type | Description |
|------|------|-------------|
| FontFilename | FString | The filename of the font to use. 	  This variable is ignored if we have a font f |
| Hinting | EFontHinting | The hinting algorithm to use with the font. 	  This variable is ignored if we ha |
| LoadingPolicy | EFontLoadingPolicy | Enum controlling how this font should be loaded at runtime. See the enum for mor |
| FontFaceAsset | UObject * | Font data v3. This points to a font face asset. |
| BulkDataPtr_DEPRECATED | UFontBulkData * | Legacy font data v2. This used to be where font data was stored prior to font fa |
| FontData_DEPRECATED | TArray < uint8 > | Legacy font data v1. This used to be where font data was stored prior to font bu |