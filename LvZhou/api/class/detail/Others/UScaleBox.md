---
title: UScaleBox
language: cpp
---

# UScaleBox

Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If
  you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need
  to auto fit some text to an area, this is the control for you.
 
   Single Child
   Aspect Ratio

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Stretch | TEnumAsByte < EStretch :: Type > | The stretching rule to apply when content is stretched |
| StretchDirection | TEnumAsByte < EStretchDirection :: Type > | Controls in what direction content can be scaled |
| UserSpecifiedScale | float | Optional scale that can be specified by the User. Used only for UserSpecified st |
| UserSpecifiedScaleBias | float | Scale bias that can fit to the content, especially for the text exceeded the bou |
| IgnoreInheritedScale | bool | Optional bool to ignore the inherited scale. Applies inverse scaling to countera |
| UsePcParams | bool |  |
| StretchPc | TEnumAsByte < EStretch :: Type > |  |
| StretchDirectionPc | TEnumAsByte < EStretchDirection :: Type > |  |
| UserSpecifiedScalePc | float |  |
| UserSpecifiedScaleBiasPc | float |  |
| IgnoreInheritedScalePc | bool |  |
| bSingleLayoutPass | bool | Only perform a single layout pass, if you do this, it can save a considerable 	  |
| bFroceSlateLayoutCachingCalcSize | bool |  |
| bForceUseLastUnPrepassChildSize | bool |  |

## Functions

### SetStretch

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStretch | EStretch :: Type |  |

**Return:** void  

### SetStretchDirection

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InStretchDirection | EStretchDirection :: Type |  |

**Return:** void  

### SetUserSpecifiedScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InUserSpecifiedScale | float |  |

**Return:** void  

### SetIgnoreInheritedScale

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInIgnoreInheritedScale | bool |  |

**Return:** void  

### SetUserSpecifiedScaleBias

#if UMG_SCALEBOX_BIAS

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InUserSpecifiedScaleBias | float |  |

**Return:** void  

### SetPcParamController

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InValue | int32 |  |

**Return:** void  

### OnUIRectOffsetChange

**Return:** void