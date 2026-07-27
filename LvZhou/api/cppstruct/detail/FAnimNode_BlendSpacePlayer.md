---
title: FAnimNode_BlendSpacePlayer
---

# FAnimNode_BlendSpacePlayer

## Variables

| Name | Type | Description |
|------|------|-------------|
| X | float |  |
| Y | float |  |
| Z | float |  |
| PlayRate | float |  |
| bLoop | bool |  |
| StartPosition | float |  |
| BlendSpace | UBlendSpaceBase * |  |
| bResetPlayTimeWhenBlendSpaceChanges | bool |  |
| bResetPlayTimeWhenBlendSpaceReactive | bool |  |
| bResetSampleCacheWhenBlendSpaceChanges | bool |  |
| BlendFilter | FBlendFilter |  |
| BlendSampleDataCache | TArray < FBlendSampleData > |  |
| PreviousBlendSpace | UBlendSpaceBase * |  |
| EnableBSBlend | bool |  |
| BSBlendOutTime | float |  |
| BSBlendBySyncGroup | bool |  |
| BSBlendResetNewTimeAccumulator | bool |  |
| BSBlendOutTime_Counter | float |  |
| BSBlendOutTime_Alpha | float |  |
| BSBlendOutWeight | float |  |
| LastBlendSpace | UBlendSpaceBase * |  |
| BlendOutPlayers_Cache | TArray < UBlendSpaceBase * > |  |