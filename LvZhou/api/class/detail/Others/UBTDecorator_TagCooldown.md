---
title: UBTDecorator_TagCooldown
language: cpp
---

# UBTDecorator_TagCooldown

Cooldown decorator node.
  A decorator node that bases its condition on whether a cooldown timer based on a gameplay tag has expired.

> Inheritance: UBTDecorator

## Variables

| Name | Type | Description |
|------|------|-------------|
| CooldownTag | FGameplayTag | Gameplay tag that will be used for the cooldown. |
| CooldownDuration | float | Value we will add or set to the Cooldown tag when this node is deactivated. |
| bAddToExistingDuration | bool | True if we are adding to any existing duration, false if we are setting the dura |
| bActivatesCooldown | bool | Whether or not we are addingsetting to the cooldown tag's value when the decorat |