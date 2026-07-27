---
title: FAnimNode_CopyBoneDelta
---

# FAnimNode_CopyBoneDelta

Simple controller to copy a transform relative to the ref pose to the target bone,
 	instead of the copy bone node which copies the absolute transform

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceBone | FBoneReference |  |
| TargetBone | FBoneReference |  |
| bCopyTranslation | bool |  |
| bCopyRotation | bool |  |
| bCopyScale | bool |  |
| CopyMode | CopyBoneDeltaMode |  |
| TranslationMultiplier | float |  |
| RotationMultiplier | float |  |
| ScaleMultiplier | float |  |