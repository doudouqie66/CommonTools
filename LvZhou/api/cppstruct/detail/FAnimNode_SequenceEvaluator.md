---
title: FAnimNode_SequenceEvaluator
---

# FAnimNode_SequenceEvaluator

## Variables

| Name | Type | Description |
|------|------|-------------|
| Sequence | UAnimSequenceBase * |  |
| ExplicitTime | float |  |
| ExplicitTimeType | TEnumAsByte < ESequenceEvalTimeType :: Type > | 输入时间类型： |
| bShouldLoop | bool | This only works if bTeleportToTargetTime is false OR this node is set to use Syn |
| bTeleportToExplicitTime | bool | If true, teleport to explicit time, does NOT advance time (does not trigger noti |
| StartPosition | float |  |
| ReinitializationBehavior | TEnumAsByte < ESequenceEvalReinit :: Type > | What to do when SequenceEvaluator is reinitialized |
| bReinitialized | bool |  |
| CheckReTickFrameCounterSubValue | int32 |  |
| bEnableTriggerNotify | bool |  |