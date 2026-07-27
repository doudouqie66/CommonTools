---
title: USimpleConstructionScript
language: cpp
---

# USimpleConstructionScript

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| RootNodes | TArray < USCS_Node * > | Root nodes of the construction script |
| AllNodes | TArray < USCS_Node * > | All nodes that exist in the hierarchy of this SimpleConstructionScript |
| NodesRemovedInCompile | TArray < USCS_Node * > | junyuandeng: temp container |
| AllNodesIncludeEditorOnly | TArray < USCS_Node * > |  |
| DefaultSceneRootNode | USCS_Node * | Default scene root node; used when no other nodes are available to use as the ro |
| RootNode_DEPRECATED | USCS_Node * | (DEPRECATED) Root node of the construction script |
| ActorComponentNodes_DEPRECATED | TArray < USCS_Node * > | (DEPRECATED) Actor Component based nodes are stored here.  They cannot be in the |