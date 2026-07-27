---
title: UEdGraph
language: cpp
---

# UEdGraph

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Schema | TSubclassOf < UEdGraphSchema > | The schema that this graph obeys |
| Nodes | TArray < UEdGraphNode * > | Set of all nodes in this graph |
| bEditable | uint32 | If true, graph can be edited by the user |
| bAllowDeletion | uint32 |  |
| bAllowRenaming | uint32 | If true, graph can be renamed; Note: Graph can also be renamed if bAllowDeletion |