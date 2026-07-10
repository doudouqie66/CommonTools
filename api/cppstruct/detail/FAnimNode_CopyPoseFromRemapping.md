---
title: FAnimNode_CopyPoseFromRemapping
---

# FAnimNode_CopyPoseFromRemapping

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceMeshComponent | TWeakObjectPtr < USkeletalMeshComponent > | This is used by default if it's valid |
| bUseAttachedParent | bool | If SourceMeshComponent is not valid, and if this is true, it will look for attah |
| bIkGunValid | bool |  |
| bParentPoseOffset | bool |  |
| NewFPPPoseOffset | FNewFPPPoseOffset |  |
| BoneNeedRelevant | TMap < FName , FName > |  |