---
title: UPanelWidget
language: cpp
---

# UPanelWidget

The base class for all UMG panel widgets.  Panel widgets layout a collection of child widgets.

> Inheritance: UWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| Slots | TArray < UPanelSlot * > | The slots in the widget holding the child widgets of this panel. |
| CachedContents_ForGC | TArray < UWidget * > |  |

## Functions

### GetChildrenCount

Gets number of child widgets in the container.

**Return:** int32 

### GetChildAt

Gets the widget at an index.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 | The index of the widget. |

**Return:** UWidget *  The widget at the given index, or nothing if there is no widget there.

### GetChildIndex

Gets the index of a specific child widget

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** int32  

### HasChild

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** bool  true if panel contains this widget

### RemoveChildAt

Removes a child by it's index.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** bool  

### AddChild

Adds a new child widget to the container.  Returns the base slot type, 
	  requires casting to turn it into the type specific to the container.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** UPanelSlot *  

### InsertChildAtIndex

Insert a widget at a specific index, available in game.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32  |  |
| Content | UWidget * |  |

**Return:** UPanelSlot *  

### ShiftChildToIndex

Moves the child widget from its current index to the new index provided, available in game.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32  |  |
| Child | UWidget * |  |

**Return:** void  

### RemoveChild

Removes a specific widget from the container.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Content | UWidget * |  |

**Return:** bool  true if the widget was found and removed.

### HasAnyChildren

**Return:** bool true if there are any child widgets in the panel

### ClearChildren

Remove all child widgets from the panel widget.

**Return:** void