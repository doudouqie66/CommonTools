---
title: UBTDecorator_SetTagCooldown
language: cpp
---

# UBTDecorator_SetTagCooldown

Set tag cooldown decorator node.
  A decorator node that sets a gameplay tag cooldown.

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| CooldownTag | FGameplayTag | Gameplay tag that will be used for the cooldown. |
| CooldownDuration | float | Value we will add or set to the Cooldown tag when this task runs. |
| bAddToExistingDuration | bool | True if we are adding to any existing duration, false if we are setting the dura |