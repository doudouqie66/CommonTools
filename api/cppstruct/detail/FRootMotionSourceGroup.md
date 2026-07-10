---
title: FRootMotionSourceGroup
---

# FRootMotionSourceGroup

Group of Root Motion Sources that are applied

## Variables

| Name | Type | Description |
|------|------|-------------|
| bHasAdditiveSources | bool | Whether this group has additive root motion sources |
| bHasOverrideSources | bool | Whether this group has override root motion sources |
| LastPreAdditiveVelocity | FVector_NetQuantize10 | Saved off pre-additive-applied Velocity, used for being able to reliably addremo |
| bIsAdditiveVelocityApplied | bool | True when we had additive velocity applied last tick, checked to know if we shou |
| LastAccumulatedSettings | FRootMotionSourceSettings | Aggregate Settings of the last group of accumulated sources |