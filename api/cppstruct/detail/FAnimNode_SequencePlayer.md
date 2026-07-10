---
title: FAnimNode_SequencePlayer
---

# FAnimNode_SequencePlayer

## Variables

| Name | Type | Description |
|------|------|-------------|
| Sequence | UAnimSequenceBase * |  |
| bLoopAnimation | bool |  |
| bCheckNeedInitializeSupFirst | bool |  |
| PlayRate | float |  |
| StartPosition | float |  |
| ReversePlayRate | bool |  |
| bResetPlayTimeWhenReactivate | bool |  |
| bForceResetPlayTime | bool |  |
| CheckReactivateFrameCounterSubValue | int32 |  |
| bShouldReinitPose | bool |  |
| ReInitPose | FBonesTransfromsWithFPP |  |
| bResetToAdditivePose | bool |  |
| EnableSequenceBlend | bool |  |
| SequenceBlendOutTime | float |  |
| SequenceBlendBySyncGroup | bool |  |
| SequenceBlendResetNewTimeAccumulator | bool |  |
| SequenceBlendOutWeightScale | float |  |
| SequenceBlendOutWhenRelevant | bool |  |
| SequenceBlendOutTime_Counter | float |  |
| SequenceBlendOutTime_Alpha | float |  |
| SequenceBlendOutWeight | float |  |
| LastSequence | UAnimSequenceBase * |  |
| BlendOutPlayers_Cache | TArray < UAnimSequenceBase * > |  |