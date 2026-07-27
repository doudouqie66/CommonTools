---
title: FAnimNode_MoveAdditiveLayering
---

# FAnimNode_MoveAdditiveLayering

## Variables

| Name | Type | Description |
|------|------|-------------|
| BasePose | FPoseLink |  |
| TargetPose | FPoseLink |  |
| RefPose | FPoseLink |  |
| bFixRootRotation | bool |  |
| ArmMeshSpaceAlphaL | float |  |
| ArmMeshSpaceAlphaR | float |  |
| ArmSwayAlphaL | float |  |
| ArmSwayAlphaR | float |  |
| HandAlphaL | float |  |
| HandAlphaR | float |  |
| UpperPoseOverrideLayerSetup | TArray < FInputBlendPose > | Configuration for the parts of the skeleton to blend for each layer. Allows 	  c |
| SpineLocalSpaceAdditiveLayerSetup | TArray < FInputBlendPose > |  |
| MeshSpaceAdditiveLayerSetup_Left | TArray < FInputBlendPose > |  |
| MeshSpaceAdditiveLayerSetup_Right | TArray < FInputBlendPose > |  |
| ArmLocalSpaceAdditiveLayerSetup | TArray < FInputBlendPose > |  |
| bEvaluateLayer0 | bool |  |
| bEvaluateLayer1 | bool |  |
| bEvaluateLayer2 | bool |  |
| bEvaluateLayer3 | bool |  |
| SkeletonGuid | FGuid |  |
| VirtualBoneGuid | FGuid |  |
| UpperPoseOverrideData | FMoveAdditiveLayeringData |  |
| SpineLocalSpaceAdditiveData | FMoveAdditiveLayeringData |  |
| MeshSpaceAdditiveData_Left | FMoveAdditiveLayeringData |  |
| MeshSpaceAdditiveData_Right | FMoveAdditiveLayeringData |  |
| ArmLocalSpaceAdditiveData | FMoveAdditiveLayeringData |  |
| bOutputTargetPose | bool |  |
| bOutputRefPose | bool |  |
| bOutputLocalSpaceAdditivePose | bool |  |
| bOutputMeshSpaceAdditivePose | bool |  |