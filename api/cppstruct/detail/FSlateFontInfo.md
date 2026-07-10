---
title: FSlateFontInfo
---

# FSlateFontInfo

A representation of a font in Slate.

## Variables

| Name | Type | Description |
|------|------|-------------|
| FontObject | UObject * | The font object (valid when used from UMG or a Slate widget style asset) |
| FontMaterial | UObject * | The material to use when rendering this font |
| OutlineSettings | FFontOutlineSettings | Settings for applying an outline to a font |
| TypefaceFontName | FName | The name of the font to use from the default typeface (None will use the first e |
| Size | int32 | The font size is a measure in point values.  The conversion of points to Slate U |
| FontName_DEPRECATED | FName | The name of the font |
| Hinting_DEPRECATED | EFontHinting | The hinting algorithm to use with the font |