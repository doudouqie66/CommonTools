---
title: UAISense_Damage
language: cpp
---

# UAISense_Damage

> Inheritance: UAISense

## Variables

| Name | Type | Description |
|------|------|-------------|
| RegisteredEvents | TArray < FAIDamageEvent > |  |

## Functions

### ReportDamageEvent

EventLocation will be reported as Instigator's location at the moment of event happening

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| DamagedActor | AActor *  |  |
| Instigator | AActor *  |  |
| DamageAmount | float  |  |
| EventLocation | FVector  |  |
| HitLocation | FVector |  |

**Return:** void