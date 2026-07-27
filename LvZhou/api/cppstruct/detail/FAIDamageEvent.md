---
title: FAIDamageEvent
---

# FAIDamageEvent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Amount | float | Damage taken by DamagedActor. 	 	@Note 0-damage events do not get ignored |
| Location | FVector | Event's "Location", or what will be later treated as the perceived location for  |
| HitLocation | FVector | Event's additional spatial information 	 	@TODO document |
| DamagedActor | AActor * | Damaged actor |
| Instigator | AActor * | Actor that instigated damage. Can be None |