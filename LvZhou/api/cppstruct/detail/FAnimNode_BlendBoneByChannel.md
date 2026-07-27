---
title: FAnimNode_BlendBoneByChannel
---

# FAnimNode_BlendBoneByChannel

## Variables

| Name | Type | Description |
|------|------|-------------|
| A | FPoseLink |  |
| B | FPoseLink |  |
| Alpha | float |  |
| AlphaScaleBias | FInputScaleBias |  |
| BoneDefinitions | TArray < FBlendBoneByChannelEntry > |  |
| TransformsSpace | TEnumAsByte < EBoneControlSpace > | Space to convert transforms into prior to copying channels |
| InternalBlendAlpha | float |  |
| bBIsRelevant | bool |  |
| ValidBoneEntries | TArray < FBlendBoneByChannelEntry > |  |