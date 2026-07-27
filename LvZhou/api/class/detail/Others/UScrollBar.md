---
title: UScrollBar
language: cpp
---

# UScrollBar

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| WidgetStyle | FScrollBarStyle | Style of the scrollbar |
| Style_DEPRECATED | USlateWidgetStyleAsset * |  |
| bAlwaysShowScrollbar | bool |  |
| Orientation | TEnumAsByte < EOrientation > |  |
| Thickness | FVector2D | The thickness of the scrollbar thumb |

## Functions

### SetState

Set the offset and size of the track's thumb.
	 Note that the maximum offset is 1.0-ThumbSizeFraction.
	 If the user can view 13 of the items in a single page, the maximum offset will be ~0.667f
	

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InOffsetFraction | float  |   Offset of the thumbnail from the top as a fraction of the total available scroll space. |
| InThumbSizeFraction | float | Size of thumbnail as a fraction of the total available scroll space. |

**Return:** void