---
title: UWidgetSwitcher
language: cpp
---

# UWidgetSwitcher

A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

> Inheritance: UPanelWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| ActiveWidgetIndex | int32 | The slot index to display |
| bHideInactiveWidgets | bool |  |
| ActiveWidgetIndexDelegate | FGetInt32 |  |

## Functions

### GetNumWidgets

Gets the number of widgets that this switcher manages.

**Return:** int32 

### GetActiveWidgetIndex

Gets the slot index of the currently active widget

**Return:** int32 

### GetLocalActiveWidgetIndex

**Return:** int32 

### SetActiveWidgetIndex

Activates the widget at the specified index.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** void  

### SetActiveWidget

Activates the widget and makes it the active index.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Widget | UWidget * |  |

**Return:** void  

### GetWidgetAtIndex

Get a widget at the provided index

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32 |  |

**Return:** UWidget *  

### GetActiveWidget

Get the reference of the currently active widget

**Return:** UWidget *