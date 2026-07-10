---
title: FAnimNode_LayeredBoneBlend
---

# FAnimNode_LayeredBoneBlend

## Variables

| Name | Type | Description |
|------|------|-------------|
| BasePose | FPoseLink | The source pose |
| BlendPoses | TArray < FPoseLink > | Each layer's blended pose |
| LayerSetup | TArray < FInputBlendPose > | Configuration for the parts of the skeleton to blend for each layer. Allows 	  c |
| BlendWeights | TArray < float > | The weights of each layer |
| bMeshSpaceRotationBlend | bool | Whether to blend bone rotations in mesh space or in local space |
| CurveBlendOption | TEnumAsByte < enum ECurveBlendOption :: Type > | How to blend the layers together |
| bBlendRootMotionBasedOnRootBone | bool | Whether to incorporate the per-bone blend weight of the root bone when lending r |
| bHasRelevantPoses | bool |  |
| PerBoneBlendWeights | TArray < FPerBoneBlendWeight > |  |
| SkeletonGuid | FGuid |  |
| VirtualBoneGuid | FGuid |  |
| DesiredBoneBlendWeightsInitMesh | TWeakObjectPtr < USkeletalMesh > |  |