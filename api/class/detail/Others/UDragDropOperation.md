---
title: UDragDropOperation
language: cpp
---

# UDragDropOperation

This class is the base drag drop operation for UMG, extend it to add additional data and add new functionality.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Tag | FString | A simple string tag you can optionally use to provide extra metadata about the o |
| Payload | UObject * | The payload of the drag operation.  This can be any UObject that you want to pas |
| DefaultDragVisual | UWidget * | The Drag Visual is the widget to display when dragging the item.  Normally peopl |
| Pivot | EDragPivot | Controls where the drag widget visual will appear when dragged relative to the p |
| Offset | FVector2D | A percentage offset (-1..+1) from the Pivot location, the percentage is of the d |
| StartOffset | FVector2D |  |
| bRemoveMoveAnimDelay | bool |  |

## Functions

### Drop

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerEvent | FPointerEvent & |  |

**Return:** void  

### DragCancelled

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerEvent | FPointerEvent & |  |

**Return:** void  

### Dragged

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointerEvent | FPointerEvent & |  |

**Return:** void