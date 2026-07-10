---
title: FAnimNode_BoneFollowChain
---

# FAnimNode_BoneFollowChain

make bone list move like snake

## Variables

| Name | Type | Description |
|------|------|-------------|
| BasePose | FPoseLink |  |
| ToParentDisTolerence | int32 |  |
| ToParentMaxDisTolerence | int32 |  |
| bLeaderBoneMoveFromAnim | bool |  |
| bClearParentBonePathWhenNoMove | bool |  |
| bEnableTerrainAdaptFeature | bool |  |
| TerrainTraceStart | float |  |
| TerrainTraceEnd | float |  |
| ToParentRotationScale | float |  |
| bLerpBoneRotaion | bool |  |
| bLerpBoneRotaionCalcCurFrameBoneTransform | bool |  |
| MaxBonePathRecordBufferSize | int32 |  |
| LeaderBone | FBoneReference |  |
| FollowBoneList | TArray < FBoneReference > |  |