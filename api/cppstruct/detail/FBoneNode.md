---
title: FBoneNode
---

# FBoneNode

Each Bone node in BoneTree

## Variables

| Name | Type | Description |
|------|------|-------------|
| Name_DEPRECATED | FName | Name of bone, this is the search criteria to match with mesh bone. This will be  |
| ParentIndex_DEPRECATED | int32 | Parent Index. -1 if not used. The root has 0 as its parent. Do not delete the el |
| TranslationRetargetingMode | TEnumAsByte < EBoneTranslationRetargetingMode :: Type > | Retargeting Mode for Translation Component. |
| PerBoneOverrideRetargetingModeConfig | TMap < FName , TEnumAsByte < EBoneTranslationRetargetingMode :: Type > > |  |