---
title: FNode
---

# FNode

Rig Controller for bone transform

## Variables

| Name | Type | Description |
|------|------|-------------|
| Name | FName | Name of the original node. We don't allow to change this. This is used for ident |
| ParentName | FName | We save Parent Node but if the parent node is removed, it will reset to root |
| Transform | FTransform | Absolute transform of the node. Hoping to use this data in the future to render |
| DisplayName | FString | This is Display Name where it will be used to display in Retarget Manager. This  |
| bAdvanced | bool |  |