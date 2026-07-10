---
title: FMinimalViewInfo
---

# FMinimalViewInfo

## Variables

| Name | Type | Description |
|------|------|-------------|
| Location | FVector | Location |
| LocationLocalSpace | FVector | Location In Local Space |
| Rotation | FRotator | Rotation |
| ViewTag | FName |  |
| FOV | float | The field of view (in degrees) in perspective mode (ignored in Orthographic mode |
| bUseFirstPersonParameters | uint32 |  |
| FirstPersonFOV | float | The horizontal field of view (in degrees) used for primitives tagged as "IsFirst |
| FirstPersonScale | float | The scale to apply to primitives tagged as "IsFirstPerson". This is used to scal |
| FirstPersonScaleParameters | FVector |  |
| OrthoWidth | float | The desired width (in world units) of the orthographic view (ignored in Perspect |
| OrthoNearClipPlane | float | The near plane distance of the orthographic view (in world units) |
| OrthoFarClipPlane | float | The far plane distance of the orthographic view (in world units) |
| AspectRatio | float |  |
| bConstrainAspectRatio | uint32 |  |
| bUseFieldOfViewForLOD | uint32 |  |
| ProjectionMode | TEnumAsByte < ECameraProjectionMode :: Type > |  |
| PostProcessBlendWeight | float | Indicates if PostProcessSettings should be applied. |
| PostProcessSettings | FPostProcessSettings | Post-process settings to use if PostProcessBlendWeight is non-zero. |
| OffCenterProjectionOffset | FVector2D | Off-axis  off-center projection offset as proportion of screen dimensions |