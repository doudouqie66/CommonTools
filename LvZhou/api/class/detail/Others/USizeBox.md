---
title: USizeBox
language: cpp
---

# USizeBox

A widget that allows you to specify the size it reports to have and desire.  Not all widgets report a desired size
  that you actually desire.  Wrapping them in a SizeBox lets you have the Size Box force them to be a particular size.
 
   Single Child
   Fixed Size

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| bOverride_WidthOverride | uint32 |  |
| bOverride_HeightOverride | uint32 |  |
| bOverride_MinDesiredWidth | uint32 |  |
| bOverride_MinDesiredHeight | uint32 |  |
| bOverride_MaxDesiredWidth | uint32 |  |
| bOverride_MaxDesiredHeight | uint32 |  |
| bOverride_MaxAspectRatio | uint32 |  |
| WidthOverride | float | When specified, ignore the content's desired size and report the WidthOverride a |
| HeightOverride | float | When specified, ignore the content's desired size and report the HeightOverride  |
| MinDesiredWidth | float | When specified, will report the MinDesiredWidth if larger than the content's des |
| MinDesiredHeight | float | When specified, will report the MinDesiredHeight if larger than the content's de |
| MaxDesiredWidth | float | When specified, will report the MaxDesiredWidth if smaller than the content's de |
| MaxDesiredHeight | float | When specified, will report the MaxDesiredHeight if smaller than the content's d |
| MaxAspectRatio | float |  |

## Functions

### SetWidthOverride

When specified, ignore the content's desired size and report the WidthOverride as the Box's desired width.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InWidthOverride | float |  |

**Return:** void  

### ClearWidthOverride

**Return:** void 

### SetHeightOverride

When specified, ignore the content's desired size and report the HeightOverride as the Box's desired height.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InHeightOverride | float |  |

**Return:** void  

### ClearHeightOverride

**Return:** void 

### SetMinDesiredWidth

When specified, will report the MinDesiredWidth if larger than the content's desired width.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinDesiredWidth | float |  |

**Return:** void  

### ClearMinDesiredWidth

**Return:** void 

### SetMinDesiredHeight

When specified, will report the MinDesiredHeight if larger than the content's desired height.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMinDesiredHeight | float |  |

**Return:** void  

### ClearMinDesiredHeight

**Return:** void 

### SetMaxDesiredWidth

When specified, will report the MaxDesiredWidth if smaller than the content's desired width.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxDesiredWidth | float |  |

**Return:** void  

### ClearMaxDesiredWidth

**Return:** void 

### SetMaxDesiredHeight

When specified, will report the MaxDesiredHeight if smaller than the content's desired height.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxDesiredHeight | float |  |

**Return:** void  

### ClearMaxDesiredHeight

**Return:** void 

### SetMaxAspectRatio

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InMaxAspectRatio | float |  |

**Return:** void  

### ClearMaxAspectRatio

**Return:** void