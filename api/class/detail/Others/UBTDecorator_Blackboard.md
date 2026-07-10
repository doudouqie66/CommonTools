---
title: UBTDecorator_Blackboard
language: cpp
---

# UBTDecorator_Blackboard

Blackboard decorator node.
  A decorator node that bases its condition on a Blackboard key.

> Inheritance: UBTDecorator_BlackboardBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| IntValue | int32 | value for arithmetic operations |
| FloatValue | float | value for arithmetic operations |
| StringValue | FString | value for string operations |
| CachedDescription | FString | cached description |
| OperationType | uint8 | operation type |
| NotifyObserver | TEnumAsByte < EBTBlackboardRestart :: Type > | when observer can try to request abort? |