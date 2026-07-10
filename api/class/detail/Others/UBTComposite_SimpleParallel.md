---
title: UBTComposite_SimpleParallel
language: cpp
---

# UBTComposite_SimpleParallel

Simple Parallel composite node.
  Allows for running two children: one which must be a single task node (with optional decorators), and the other of which can be a complete subtree.

> Inheritance: UBTCompositeNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| FinishMode | TEnumAsByte < EBTParallelMode :: Type > | how background tree should be handled when main task finishes execution |