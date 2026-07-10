---
title: FColorParameterNameAndCurves
---

# FColorParameterNameAndCurves

Structure representing an animated vector parameter and it's associated animation curve.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName | The name of the vector parameter which is being animated. |
| Index | int32 |  |
| RedCurve | FRichCurve | The curve which contains the animation data for the red component of the color p |
| GreenCurve | FRichCurve | The curve which contains the animation data for the green component of the color |
| BlueCurve | FRichCurve | The curve which contains the animation data for the blue component of the color  |
| AlphaCurve | FRichCurve | The curve which contains the animation data for the alpha component of the color |