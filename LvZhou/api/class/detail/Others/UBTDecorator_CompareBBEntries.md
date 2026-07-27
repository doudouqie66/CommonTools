---
title: UBTDecorator_CompareBBEntries
language: cpp
---

# UBTDecorator_CompareBBEntries

Blackboard comparison decorator node.
  A decorator node that bases its condition on a comparison between two Blackboard keys.

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| Operator | TEnumAsByte < EBlackBoardEntryComparison :: Type > | operation type |
| BlackboardKeyA | FBlackboardKeySelector | blackboard key selector |
| BlackboardKeyB | FBlackboardKeySelector | blackboard key selector |