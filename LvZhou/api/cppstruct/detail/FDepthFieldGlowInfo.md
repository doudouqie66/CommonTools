---
title: FDepthFieldGlowInfo
---

# FDepthFieldGlowInfo

info for glow when using depth field rendering

## Variables

| Name | Type | Description |
|------|------|-------------|
| bEnableGlow | uint32 | whether to turn on the outline glow (depth field fonts only) |
| GlowColor | FLinearColor | base color to use for the glow |
| GlowOuterRadius | FVector2D | if bEnableGlow, outline glow outer radius (0 to 1, 0.5 is edge of character silh |
| GlowInnerRadius | FVector2D | if bEnableGlow, outline glow inner radius (0 to 1, 0.5 is edge of character silh |