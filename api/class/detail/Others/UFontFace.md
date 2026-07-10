---
title: UFontFace
language: cpp
---

# UFontFace

A font face asset contains the raw payload data for a source TTFOTF file as used by FreeType.
  During cook this asset type generates a ".ufont" file containing the raw payload data (unless loaded "Inline").

> Inheritance: UObject -> IFontFaceInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceFilename | FString | The filename of the font face we were created from. This may not always exist on |
| Hinting | EFontHinting | The hinting algorithm to use with the font face. |
| LoadingPolicy | EFontLoadingPolicy | Enum controlling how this font face should be loaded at runtime. See the enum fo |
| LayoutMethod | EFontLayoutMethod | Which method should we use when laying out the font? Try changing this if you no |
| FontFaceData_DEPRECATED | TArray < uint8 > | The data associated with the font face. This should always be filled in providin |