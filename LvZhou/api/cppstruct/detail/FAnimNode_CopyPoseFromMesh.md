---
title: FAnimNode_CopyPoseFromMesh
---

# FAnimNode_CopyPoseFromMesh

Simple controller to copy a bone's transform to another one.

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceMeshComponent | TWeakObjectPtr < USkeletalMeshComponent > | This is used by default if it's valid |
| bUseAttachedParent | bool | If SourceMeshComponent is not valid, and if this is true, it will look for attah |