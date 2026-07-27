---
title: FAnimNode_AimOffsetLookAt
---

# FAnimNode_AimOffsetLookAt

This node uses a source transform of a socket on the skeletal mesh to automatically calculate
  Yaw and Pitch directions for a referenced aim offset given a point in the world to look at.

## Variables

| Name | Type | Description |
|------|------|-------------|
| BasePose | FPoseLink |  |
| LODThreshold | int32 | Max LOD that this node is allowed to run 	 For example if you have LODThreadhold |
| bIsLODEnabled | bool |  |
| LookAtLocation | FVector | Location, in world space to look at |
| SourceSocketName | FName | Socket to treat as the look at source |
| PivotSocketName | FName | Socket to treat as the look at pivot (optional). This will overwrite the transla |
| SocketAxis | FVector | Axis in the socket transform to consider the 'forward' or look at axis |
| Alpha | float | Amount of this node to blend into the output pose |
| SocketBoneReference | FBoneReference | Cached reference to the source socket's bone |
| SocketLocalTransform | FTransform | Cached local transform of the source socket |
| PivotSocketBoneReference | FBoneReference | Cached reference to the pivot socket's bone |
| PivotSocketLocalTransform | FTransform | Cached local transform of the pivot socket |