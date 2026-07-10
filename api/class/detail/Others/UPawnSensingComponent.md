---
title: UPawnSensingComponent
language: cpp
---

# UPawnSensingComponent

SensingComponent encapsulates sensory (ie sight and hearing) settings and functionality for an Actor,
  allowing the actor to seehear Pawns in the world. It does nothing on network clients.

> Inheritance: UActorComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| HearingThreshold | float | Max distance at which a makenoise(1.0) loudness sound can be heard, regardless o |
| LOSHearingThreshold | float | Max distance at which a makenoise(1.0) loudness sound can be heard if unoccluded |
| SightRadius | float | Maximum sight distance. |
| SensingInterval | float | Amount of time between pawn sensing updates. Use SetSensingInterval() to adjust  |
| HearingMaxSoundAge | float |  |
| bEnableSensingUpdates | uint32 | If true, component will perform sensing updates. At runtime change this using Se |
| bOnlySensePlayers | uint32 | If true, will only sense player-controlled pawns in the world. Default: true |
| bSeePawns | uint32 | If true, we will perform visibility tests and will trigger notifications when a  |
| bHearNoises | uint32 | If true, we will perform audibility tests and will be notified when a Pawn makes |
| PeripheralVisionAngle | float | How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to chan |
| PeripheralVisionCosine | float | Cosine of limits of peripheral vision. Computed from PeripheralVisionAngle. |

## Functions

### SetSensingInterval

Changes the SensingInterval.
	  If we are currently waiting for an interval, this can either extend or shorten that interval.
	  A value <= 0 prevents any updates.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSensingInterval | float |  |

**Return:** void  

### SetSensingUpdatesEnabled

Enables or disables sensing updates. The timer is reset in either case.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnabled | bool |  |

**Return:** void  

### SetPeripheralVisionAngle

Sets PeripheralVisionAngle. Calculates PeripheralVisionCosine from PeripheralVisionAngle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewPeripheralVisionAngle | float |  |

**Return:** void  

### GetPeripheralVisionAngle

**Return:** float 

### GetPeripheralVisionCosine

**Return:** float