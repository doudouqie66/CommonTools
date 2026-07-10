---
title: FAINoiseEvent
---

# FAINoiseEvent

## Variables

| Name | Type | Description |
|------|------|-------------|
| NoiseLocation | FVector | if not set Instigator's location will be used |
| Loudness | float | Loudness modifier of the sound. 	  If MaxRange is non-zero, this modifies the ra |
| MaxRange | float | Max range at which the sound can be heard. Multiplied by Loudness. 	  A value of |
| Instigator | AActor * | Actor triggering the sound. |
| Tag | FName | Named identifier for the noise. |