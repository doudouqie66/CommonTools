---
title: UWindDirectionalSourceComponent
language: cpp
---

# UWindDirectionalSourceComponent

Component that provides a directional wind source. Only affects SpeedTree assets.

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Strength | float |  |
| Speed | float |  |
| MinGustAmount | float |  |
| MaxGustAmount | float |  |
| Radius | float |  |
| bPointWind | uint32 |  |

## Functions

### SetStrength

Because the actual data used to query wind is stored on the render thread in
	  an instance of FWindSourceSceneProxy all of our properties are read only.
	  The data can be manipulated with the following functions which will queue 
	  a render thread update for this component
	 
	 Sets the strength of the generated wind

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewStrength | float |  |

**Return:** void  

### SetSpeed

Sets the windspeed of the generated wind

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewSpeed | float |  |

**Return:** void  

### SetMinimumGustAmount

Set minimum deviation for wind gusts

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewMinGust | float |  |

**Return:** void  

### SetMaximumGustAmount

Set maximum deviation for wind gusts

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewMaxGust | float |  |

**Return:** void  

### SetRadius

Set the effect radius for point wind

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewRadius | float |  |

**Return:** void  

### SetWindType

Set the type of wind generator to use

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InNewType | EWindSourceType |  |

**Return:** void