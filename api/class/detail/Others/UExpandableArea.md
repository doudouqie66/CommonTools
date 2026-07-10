---
title: UExpandableArea
language: cpp
---

# UExpandableArea

> Inheritance: UWidget -> INamedSlotInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| Style | FExpandableAreaStyle |  |
| BorderBrush | FSlateBrush |  |
| BorderColor | FSlateColor |  |
| bIsExpanded | bool |  |
| MaxHeight | float | The maximum height of the area |
| HeaderPadding | FMargin |  |
| AreaPadding | FMargin |  |
| HeaderContent | UWidget * |  |
| BodyContent | UWidget * |  |

## Functions

### GetIsExpanded

**Return:** bool 

### SetIsExpanded

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsExpanded | bool |  |

**Return:** void  

### SetIsExpanded_Animated

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsExpanded | bool |  |

**Return:** void