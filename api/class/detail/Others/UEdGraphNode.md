---
title: UEdGraphNode
language: cpp
---

# UEdGraphNode

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| DeprecatedPins | TArray < UEdGraphPin_Deprecated * > | List of connector pins |
| NodePosX | int32 | X position of node in the editor |
| NodePosY | int32 | Y position of node in the editor |
| NodeWidth | int32 | Width of node in the editor; only used when the node can be resized |
| NodeHeight | int32 | Height of node in the editor; only used when the node can be resized |
| AdvancedPinDisplay | TEnumAsByte < ENodeAdvancedPins :: Type > | Enum to indicate if a node has advanced-display-pins, and if they are shown |
| EnabledState | ENodeEnabledState | Indicates in what state the node is enabled, which may eliminate it from being c |
| bUserSetEnabledState | uint8 | Indicates whether or not the user explicitly set the enabled state |
| bIsNodeEnabled_DEPRECATED | uint8 | (DEPRECATED) FALSE if the node is a disabled, which eliminates it from being com |
| bHasCompilerMessage | uint8 | Flag to check for compile errorwarning |
| bCommentBubblePinned | uint8 | Comment bubble pinned state |
| bCommentBubbleVisible | uint8 | Comment bubble visibility |
| bCommentBubbleMakeVisible | uint8 | Make comment bubble visible |
| NodeComment | FString | Comment string that is drawn on the node |
| ReferenceObjCategory | FString | ReferenceObjCategory that is drawn on the node |
| ErrorType | int32 | Flag to store node specific compile errorwarning |
| ErrorMsg | FString | ErrorWarning description |
| NodeGuid | FGuid | GUID to uniquely identify this node, to facilitate diffing versions of this grap |