---
title: ULandscapeHeightfieldCollisionComponent
language: cpp
---

# ULandscapeHeightfieldCollisionComponent

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| ComponentLayerInfos | TArray < ULandscapeLayerInfoObject * > | List of layers painted on this component. Matches the WeightmapLayerAllocations  |
| SectionBaseX | int32 | Offset of component in landscape quads |
| SectionBaseY | int32 |  |
| CollisionSizeQuads | int32 | Size of component in collision quads |
| CollisionScale | float | Collision scale: (ComponentSizeQuads)  (CollisionSizeQuads) |
| SimpleCollisionSizeQuads | int32 | Size of component's "simple collision" in collision quads |
| CollisionQuadFlags | TArray < uint8 > | The flags for each collision quad. See ECollisionQuadFlags. |
| HeightfieldGuid | FGuid | Guid used to share PhysX heightfield objects in the editor |
| CachedLocalBox | FBox | Cached local-space bounding box, created at heightmap update time |
| RenderComponent | TLazyObjectPtr < ULandscapeComponent > | Reference to render component |
| bUseLandscapeDeform | bool |  |
| CookedPhysicalMaterials | TArray < UPhysicalMaterial * > | This is a list of physical materials that is actually used by a cooked HeightFie |
| RCRLandscapeMapList | TArray < FString > |  |
| RCRCommunicatorClassName | FSoftClassPath |  |
| RCRCommunicator | URCRCommunicator * |  |