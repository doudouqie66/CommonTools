---
title: UArrowComponent
language: cpp
---

# UArrowComponent

A simple arrow rendered using lines. Useful for indicating which way an object is facing.

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ArrowColor | FColor |  |
| ArrowSize | float |  |
| bIsScreenSizeScaled | bool | Set to limit the screen size of this arrow |
| ScreenSize | float | The size on screen to limit this arrow to (in screen space) |
| bTreatAsASprite | uint32 | If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled. |

## Functions

### SetArrowColor

Updates the arrow's colour, and tells it to refresh

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewColor | FLinearColor |  |

**Return:** void