---
title: UMultiBillBoardComponent
language: cpp
---

# UMultiBillBoardComponent

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| Elements | TArray < FBillBoardMaterialSpriteElement > | Current array of material billboard elements |
| BillboardDatas | TArray < FBillboardData > |  |

## Functions

### GetElements

**Return:** const TArray < FBillBoardMaterialSpriteElement > & 

### SetElements

Set all elements of this material billboard component

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewElements | TArray < FBillBoardMaterialSpriteElement > & |  |

**Return:** void  

### AddElement

Adds an element to the sprite.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Material | UMaterialInterface *  |  |
| DistanceToOpacityCurve | UCurveFloat *  |  |
| bSizeIsInScreenSpace | bool  |  |
| BaseSizeX | float  |  |
| BaseSizeY | float  |  |
| DistanceToSizeCurve | UCurveFloat * |  |

**Return:** void  

### K2_AddBillBoard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewLocation | FVector  |  |
| UV0 | FVector2D  |  |
| UV1 | FVector2D |  |

**Return:** int32  

### RemoveBillboard

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ID | int32 |  |

**Return:** void  

### ClearAllBillBoards

**Return:** void 

### SetBillboardUV

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ID | int32  |  |
| UV0 | FVector2D  |  |
| UV1 | FVector2D |  |

**Return:** void  

### CreateMultiBillboardComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| MultiBillboardClass | TSubclassOf < UMultiBillBoardComponent > |  |

**Return:** UMultiBillBoardComponent *