---
title: AAudioVolume
language: cpp
---

# AAudioVolume

> Inheritance: AVolume

## Variables

| Name | Type | Description |
|------|------|-------------|
| Priority | float | Priority of this volume. In the case of overlapping volumes the one with the hig |
| bEnabled | uint32 | whether this volume is currently enabled and able to affect sounds |
| Settings | FReverbSettings | Reverb settings to use for this volume. |
| AmbientZoneSettings | FInteriorSettings | Interior settings used for this volume |

## Functions

### SetPriority

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPriority | float |  |

**Return:** void  

### SetEnabled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bNewEnabled | bool |  |

**Return:** void  

### SetReverbSettings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewReverbSettings | FReverbSettings & |  |

**Return:** void  

### SetInteriorSettings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInteriorSettings | FInteriorSettings & |  |

**Return:** void  

### OnRep_bEnabled

**Return:** void