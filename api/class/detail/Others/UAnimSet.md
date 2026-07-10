---
title: UAnimSet
language: cpp
---

# UAnimSet

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAnimRotationOnly | uint32 | Indicates that only the rotation should be taken from the animation sequence and |
| TrackBoneNames | TArray < FName > | Bone name that each track relates to. TrackBoneName.Num() == Number of tracks. |
| LinkupCache | TArray < struct FAnimSetMeshLinkup > | Non-serialised cache of linkups between different skeletal meshes and this AnimS |
| BoneUseAnimTranslation | TArray < uint8 > | Array of booleans that indicate whether or not to read the translation of a bone |
| ForceUseMeshTranslation | TArray < uint8 > | Cooked down version of ForceMeshTranslationBoneNames |
| UseTranslationBoneNames | TArray < FName > | Names of bones that should use translation from the animation, if bAnimRotationO |
| ForceMeshTranslationBoneNames | TArray < FName > | List of bones which are ALWAYS going to use their translation from the mesh and  |
| PreviewSkelMeshName | FName | In the AnimSetEditor, when you switch to this AnimSet, it sees if this skeletal  |
| BestRatioSkelMeshName | FName | Holds the name of the skeletal mesh whose reference skeleton best matches the Tr |