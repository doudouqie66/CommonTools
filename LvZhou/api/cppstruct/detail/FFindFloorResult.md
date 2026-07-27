---
title: FFindFloorResult
---

# FFindFloorResult

Data about the floor for walking movement, used by CharacterMovementComponent.

## Variables

| Name | Type | Description |
|------|------|-------------|
| bBlockingHit | uint32 | True if there was a blocking hit in the floor test that was NOT in initial penet |
| bWalkableFloor | uint32 | True if the hit found a valid walkable floor. |
| bLineTrace | uint32 | True if the hit found a valid walkable floor using a line trace (rather than a s |
| FloorDist | float | The distance to the floor, computed from the swept capsule trace. |
| LineDist | float | The distance to the floor, computed from the trace. Only valid if bLineTrace is  |
| HitResult | FHitResult | Hit result of the test that found a floor. Includes more specific data about the |