---
title: ALevelBounds
language: cpp
---

# ALevelBounds

Defines level bounds
  Updates bounding box automatically based on actors transformation changes or holds fixed user defined bounding box
  Uses only actors where AActor::IsLevelBoundsRelevant() == true

> Inheritance: AActor -> FEditorTickableLevelBounds

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAutoUpdateBounds | bool | Whether to automatically update actor bounds based on all relevant actors bounds |

## Functions

### SaveLevelBoudns

**Return:** void 

### CaculateFoliageLevelBounds

**Return:** void