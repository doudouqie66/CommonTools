---
title: AInteractiveFoliageActor
language: cpp
---

# AInteractiveFoliageActor

> Inheritance: AStaticMeshActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| CapsuleComponent | UCapsuleComponent * | Collision cylinder |
| TouchingActorEntryPosition | FVector | Position of the last actor to enter the collision cylinder. 	  This currently do |
| FoliageVelocity | FVector | Simulated physics state |
| FoliageForce | FVector | @todo document |
| FoliagePosition | FVector | @todo document |
| FoliageDamageImpulseScale | float | Scales forces applied from damage events. |
| FoliageTouchImpulseScale | float | Scales forces applied from touch events. |
| FoliageStiffness | float | Determines how strong the force that pushes toward the spring's center will be. |
| FoliageStiffnessQuadratic | float | Same as FoliageStiffness, but the strength of this force increases with the squa |
| FoliageDamping | float | Determines the amount of energy lost by the spring as it oscillates. 	  This for |
| MaxDamageImpulse | float | Clamps the magnitude of each damage force applied. |
| MaxTouchImpulse | float | Clamps the magnitude of each touch force applied. |
| MaxForce | float | Clamps the magnitude of combined forces applied each update. |
| Mass | float |  |

## Functions

### CapsuleTouched

Called when capsule is touched

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OverlappedComp | UPrimitiveComponent *  |  |
| Other | AActor *  |  |
| OtherComp | UPrimitiveComponent *  |  |
| OtherBodyIndex | int32  |  |
| bFromSweep | bool  |  |
| OverlapInfo | FHitResult & |  |

**Return:** void