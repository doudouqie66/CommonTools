---
title: UColorGradient
language: cpp
---

# UColorGradient

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| ColorRGBs | TArray < FColorGradientCellInfo > |  |

## Functions

### GetNum

**Return:** int32 

### GetCellByIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Idx | int  |  |
| OutPercent | float &  |  |
| OutColorRGB | FLinearColor & |  |

**Return:** bool  

### FindIndexByPercent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPercent | float |  |

**Return:** int32  

### SetDatas

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| datas | TArray < FColorGradientCellInfo > & |  |

**Return:** void