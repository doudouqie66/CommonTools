---
title: UPaperFlipbook
language: cpp
---

# UPaperFlipbook

Contains an animation sequence of sprite frames

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| FramesPerSecond | float |  |
| KeyFrames | TArray < FPaperFlipbookKeyFrame > |  |
| DefaultMaterial | UMaterialInterface * |  |
| CollisionSource | TEnumAsByte < EFlipbookCollisionMode :: Type > |  |

## Functions

### GetNumFrames

**Return:** int32 

### GetTotalDuration

**Return:** float 

### GetKeyFrameIndexAtTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bClampToEnds | bool |  |

**Return:** int32  

### GetSpriteAtTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bClampToEnds | bool |  |

**Return:** UPaperSprite *  

### GetSpriteAtFrame

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FrameIndex | int32 |  |

**Return:** UPaperSprite *  

### GetNumKeyFrames

**Return:** int32 

### IsValidKeyFrameIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** bool