---
title: UBTTask_SetTagCooldown
language: cpp
---

# UBTTask_SetTagCooldown

Cooldown task node.
  Sets a cooldown tag value.  Use with cooldown tag decorators to prevent behavior tree execution.

> Inheritance: UBTTaskNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| CooldownTag | FGameplayTag | Gameplay tag that will be used for the cooldown. |
| bAddToExistingDuration | bool | True if we are adding to any existing duration, false if we are setting the dura |
| CooldownDuration | float | Value we will add or set to the Cooldown tag when this task runs. |