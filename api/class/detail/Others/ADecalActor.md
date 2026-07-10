---
title: ADecalActor
language: cpp
---

# ADecalActor

DecalActor contains a DecalComponent which can be used to render material modifications on top of existing geometry.

 @see UDecalComponent

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| Decal | UDecalComponent * | The decal component for this decal actor |
| ArrowComponent | UArrowComponent * | Reference to the editor only arrow visualization component |
| SpriteComponent | UBillboardComponent * | Reference to the billboard component |
| BoxComponent_DEPRECATED | UBoxComponent * |  |

## Functions

### SetDecalMaterial

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewDecalMaterial | UMaterialInterface * |  |

**Return:** void  

### GetDecalMaterial

**Return:** UMaterialInterface * 

### CreateDynamicMaterialInstance

**Return:** UMaterialInstanceDynamic *