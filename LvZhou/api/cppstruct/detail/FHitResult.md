---
title: FHitResult
---

# FHitResult

Structure containing information about one hit of a trace, such as point of impact and surface normal at that point.

## Variables

| Name | Type | Description |
|------|------|-------------|
| bBlockingHit | uint32 | Indicates if this hit was a result of blocking collision. If false, there was no |
| bStartPenetrating | uint32 | Whether the trace started in penetration, i.e. with an initial blocking overlap. |
| Time | float | 'Time' of impact along trace direction (ranging from 0.0 to 1.0) if there is a h |
| Distance | float | The distance from the TraceStart to the Location in world space. This value is 0 |
| ImpactNormal | FVector_NetQuantizeNormal | Normal of the hit in world space, for the object that was hit by the sweep, if a |
| Location | FVector_NetQuantize | The location in world space where the moving shape would end up against the impa |
| ImpactPoint | FVector_NetQuantize | Location in world space of the actual contact of the trace shape (box, sphere, r |
| Normal | FVector_NetQuantizeNormal | Normal of the hit in world space, for the object that was swept. Equal to Impact |
| TraceStart | FVector_NetQuantize | Start location of the trace. 	  For example if a sphere is swept against the wor |
| TraceEnd | FVector_NetQuantize | End location of the trace; this is NOT where the impact occurred (if any), but t |
| PenetrationDepth | float | If this test started in penetration (bStartPenetrating is true) and a depenetrat |
| Item | int32 | Extra data about item that was hit (hit primitive specific). |
| PhysMaterial | TWeakObjectPtr < UPhysicalMaterial > | Physical material that was hit. 	  @note Must set bReturnPhysicalMaterial on the |
| Actor | TWeakObjectPtr < AActor > | Actor hit by the trace. |
| Component | TWeakObjectPtr < UPrimitiveComponent > | PrimitiveComponent hit by the trace. |
| BoneName | FName | Name of bone we hit (for skeletal meshes). |
| FaceIndex | int32 | Face index we hit (for complex hits with triangle meshes). |