---
title: UFont
language: cpp
---

# UFont

A font object, for use by Slate, UMG, and Canvas.
 
  A font can either be:
     Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime.
     Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.

> Inheritance: UObject -> IFontProviderInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| FontCacheType | EFontCacheType | What kind of font caching should we use? This controls which options we see |
| Characters | TArray < FFontCharacter > | List of characters in the font.  For a MultiFont, this will include all characte |
| Textures | TArray < UTexture2D * > | Textures that store this font's glyph image data |
| IsRemapped | int32 | True if font is 'remapped'.  That is, the character array is not a direct mappin |
| EmScale | float | Font metrics. |
| Ascent | float | @todo document |
| Descent | float | @todo document |
| Leading | float | @todo document |
| Kerning | int32 | Default horizontal spacing between characters when rendering text with this font |
| ImportOptions | FFontImportOptionsData | Options used when importing this font |
| NumCharacters | int32 | Number of characters in the font, not including multiple instances of the same c |
| MaxCharHeight | TArray < int32 > | The maximum height of a character in this font.  For multi-fonts, this array wil |
| ScalingFactor | float | Scale to apply to the font. |
| LegacyFontSize | int32 | The default size of the font used for legacy Canvas APIs that don't specify a fo |
| LegacyFontName | FName | The default font name to use for legacy Canvas APIs that don't specify a font na |
| CompositeFont | FCompositeFont | Embedded composite font data |