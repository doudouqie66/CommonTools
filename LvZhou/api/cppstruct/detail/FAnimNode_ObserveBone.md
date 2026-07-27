---
title: FAnimNode_ObserveBone
---

# FAnimNode_ObserveBone

Debugging node that displays the current value of a bone in a specific space.

## Variables

| Name | Type | Description |
|------|------|-------------|
| BoneToObserve | FBoneReference | Name of bone to observe. |
| DisplaySpace | TEnumAsByte < EBoneControlSpace > | Reference frame to display the bone transform in. |
| bRelativeToRefPose | bool | Show the difference from the reference pose? |
| Translation | FVector | Translation of the bone being observed. |
| Rotation | FRotator | Rotation of the bone being observed. |
| Scale | FVector | Scale of the bone being observed. |