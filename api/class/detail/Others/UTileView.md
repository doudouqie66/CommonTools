---
title: UTileView
language: cpp
---

# UTileView

A flow panel that presents the contents as a set of tiles all uniformly sized.

> Inheritance: UTableViewBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| ItemWidth | float |  |
| ItemHeight | float |  |
| Items | TArray < UObject * > |  |
| SelectionMode | TEnumAsByte < ESelectionMode :: Type > |  |
| OnGenerateTileEvent | FOnGenerateRowUObject |  |

## Functions

### SetItemWidth

Set item width

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Width | float |  |

**Return:** void  

### SetItemHeight

Set item height

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Height | float |  |

**Return:** void  

### RequestListRefresh

Refreshes the list

**Return:** void