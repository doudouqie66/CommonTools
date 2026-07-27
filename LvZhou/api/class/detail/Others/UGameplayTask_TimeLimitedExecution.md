---
title: UGameplayTask_TimeLimitedExecution
language: cpp
---

# UGameplayTask_TimeLimitedExecution

Adds time limit for running a child task
  - child task needs to be created with UGameplayTask_TimeLimitedExecution passed as TaskOwner 
  - activations are tied together and when either UGameplayTask_TimeLimitedExecution or child task is activated, other one starts as well
  - OnFinished and OnTimeExpired are mutually exclusive

> Inheritance: UGameplayTask