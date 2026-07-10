---
title: UInterpGroup
language: cpp
---

# UInterpGroup

> Inheritance: UObject -> FInterpEdInputInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| InterpTracks | TArray < UInterpTrack * > |  |
| GroupName | FName | Within an InterpData, all GroupNames must be unique.  	 	Used for naming Variabl |
| GroupColor | FColor | Colour used for drawing tracks etc. related to this group. |
| bCollapsed | uint32 | Whether or not this group is folded away in the editor. |
| bVisible | uint32 | Whether or not this group is visible in the editor. |
| bIsFolder | uint32 | When enabled, this group is treated like a folder in the editor, which should on |
| bIsParented | uint32 | When true, this group is considered a 'visual child' of another group.  This doe |
| bIsSelected | uint32 | When enabled, this group will be selected in the interp editor. |