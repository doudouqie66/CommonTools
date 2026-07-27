---
title: UBTDecorator_Loop
language: cpp
---

# UBTDecorator_Loop

Loop decorator node.
  A decorator node that bases its condition on whether its loop counter has been exceeded.

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| NumLoops | int32 | number of executions |
| bInfiniteLoop | bool | infinite loop |
| InfiniteLoopTimeoutTime | float | timeout (when looping infinitely, when we finish a loop we will check whether we |