---
title: UMenuAnchor
language: cpp
---

# UMenuAnchor

The Menu Anchor allows you to specify an location that a popup menu should be anchored to, 
  and should be summoned from.
   Single Child
   Popup

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| MenuClass | TSubclassOf < UUserWidget > | The widget class to spawn when the menu is required.  Creates the widget freshly |
| OnGetMenuContentEvent | FGetWidget | Called when the menu content is requested to allow a more customized handling ov |
| Placement | TEnumAsByte < EMenuPlacement > | The placement location of the summoned widget. |
| ShouldDeferPaintingAfterWindowContent | bool |  |
| UseApplicationMenuStack | bool | Does this menu behave like a normal stacked menu? Set it to false to control the |

## Functions

### ToggleOpen

Toggles the menus open state.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bFocusOnOpen | bool | Should we focus the popup as soon as it opens? |

**Return:** void  

### Open

Opens the menu if it is not already open

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bFocusMenu | bool |  |

**Return:** void  

### Close

Closes the menu if it is currently open.

**Return:** void 

### IsOpen

**Return:** bool true if the popup is open; false otherwise.

### ShouldOpenDueToClick

**Return:** bool true if we should open the menu due to a click. Sometimes we should not, if

### GetMenuPosition

**Return:** FVector2D The current menu position

### HasOpenSubMenus

**Return:** bool Whether this menu has open submenus