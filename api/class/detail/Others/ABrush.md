---
title: ABrush
language: cpp
---

# ABrush

> Inheritance: AActor

## Variables

| Name | Type | Description |
|------|------|-------------|
| BrushType | TEnumAsByte < enum EBrushType > | Type of brush |
| BrushColor | FColor |  |
| PolyFlags | int32 |  |
| bColored | uint32 |  |
| bSolidWhenSelected | uint32 |  |
| bPlaceableFromClassBrowser | uint32 | If true, this brush class can be placed using the class browser like other simpl |
| bNotForClientOrServer | uint32 | If true, this brush is a builder or otherwise does not need to be loaded into th |
| Brush | UModel * |  |
| BrushComponent | UBrushComponent * |  |
| bInManipulation | uint32 | Flag set when we are in a manipulation (scaling, translation, brush builder para |
| SavedSelections | TArray < struct FGeomSelection > | Stores selection information from geometry mode.  This is the only information t |