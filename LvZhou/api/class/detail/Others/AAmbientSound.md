---
title: AAmbientSound
language: cpp
---

# AAmbientSound

A sound actor that can be placed in a level

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| AudioComponent | UAudioComponent * | Audio component that handles sound playing |

## Functions

### FadeIn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FadeInDuration | float  |  |
| FadeVolumeLevel | float |  |

**Return:** void  

### FadeOut

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FadeOutDuration | float  |  |
| FadeVolumeLevel | float |  |

**Return:** void  

### AdjustVolume

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| AdjustVolumeDuration | float  |  |
| AdjustVolumeLevel | float |  |

**Return:** void  

### Play

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| StartTime | float |  |

**Return:** void  

### Stop

**Return:** void