---
title: UWrapBox
language: cpp
---

# UWrapBox

Arranges widgets left-to-right.  When the widgets exceed the Width it will place widgets on the next line.
  
   Many Children
   Flows
   Wraps

> Inheritance: UPanelWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| InnerSlotPadding | FVector2D | The inner slot padding goes between slots sharing borders |
| WrapWidth | float | When this width is exceeded, elements will start appearing on the next line. |
| bExplicitWrapWidth | bool | Use explicit wrap width whenever possible. It greatly simplifies layout calculat |

## Functions

### SetInnerSlotPadding

Sets the inner slot padding goes between slots sharing borders

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPadding | FVector2D |  |

**Return:** void  

### AddChildWrapBox

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** UWrapBoxSlot *