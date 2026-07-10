---
title: UNavigationPath
language: cpp
---

# UNavigationPath

UObject wrapper for FNavigationPath

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| PathPoints | TArray < FVector > |  |
| RecalculateOnInvalidation | TEnumAsByte < ENavigationOptionFlag :: Type > |  |

## Functions

### GetDebugString

**Return:** FString 

### EnableDebugDrawing

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bShouldDrawDebugData | bool  |  |
| PathColor | FLinearColor |  |

**Return:** void  

### EnableRecalculationOnInvalidation

if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| DoRecalculation | TEnumAsByte < ENavigationOptionFlag :: Type > |  |

**Return:** void  

### GetPathLength

**Return:** float 

### GetPathCost

**Return:** float 

### IsPartial

**Return:** bool 

### IsValid

**Return:** bool 

### IsStringPulled

**Return:** bool