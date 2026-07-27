---
title: UTextLayoutWidget
language: cpp
---

# UTextLayoutWidget

Base class for all widgets that use a text layout.
  Contains the common options that should be exposed for the underlying Slate widget.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| ShapedTextOptions | FShapedTextOptions | Controls how the text within this widget should be shaped. |
| Justification | TEnumAsByte < ETextJustify :: Type > | How the text should be aligned with the margin. |
| VerticalJustification | TEnumAsByte < ETextVerticalJustify :: Type > |  |
| bNeedVerticalJustificationWhenOverflow | bool | Should the text still be justified vertically when it overflow its block. |
| AutoWrapText | bool | True if we're wrapping text automatically based on the computed horizontal space |
| WrapTextAt | float | Whether text wraps onto a new line when it's length exceeds this width; if this  |
| WrappingPolicy | ETextWrappingPolicy | The wrapping policy to use. |
| Margin | FMargin | The amount of blank space left around the edges of text area. |
| LineHeightPercentage | float | The amount to scale each lines height by. |