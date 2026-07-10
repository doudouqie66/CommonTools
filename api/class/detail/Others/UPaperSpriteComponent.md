---
title: UPaperSpriteComponent
language: cpp
---

# UPaperSpriteComponent

A component that handles rendering and collision for a single instance of a UPaperSprite asset.
 
  This component is created when you drag a sprite asset from the content browser into a Blueprint, or
  contained inside of the actor created when you drag one into the level.
 
  @see UPrimitiveComponent, UPaperSprite

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceSprite | UPaperSprite * |  |
| MaterialOverride_DEPRECATED | UMaterialInterface * |  |
| SpriteColor | FLinearColor |  |

## Functions

### SetSprite

Change the PaperSprite used by this instance.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewSprite | UPaperSprite * |  |

**Return:** bool  

### GetSprite

Gets the PaperSprite used by this instance.

**Return:** UPaperSprite * 

### SetSpriteColor

Set color of the sprite

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewColor | FLinearColor |  |

**Return:** void