---
title: FAnimNode_BlendListBase
---

# FAnimNode_BlendListBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| BlendPose | TArray < FPoseLink > |  |
| BlendTime | TArray < float > |  |
| TransitionType | EBlendListTransitionType |  |
| BlendType | EAlphaBlendOption |  |
| CustomBlendCurve | UCurveFloat * |  |
| BlendProfile | UBlendProfile * |  |
| ResetFrameCountSubValue | int32 |  |
| LastFrameCount | uint64 |  |
| Blends | TArray < struct FAlphaBlend > |  |
| BlendWeights | TArray < float > |  |
| RemainingBlendTimes | TArray < float > |  |
| LastActiveChildIndex | int32 |  |
| PerBoneSampleData | TArray < FBlendSampleData > |  |
| bResetChildOnActivation | bool | This reinitializes child pose when re-activated. For example, when active child  |
| bResetChildOnBlendListChange | bool |  |