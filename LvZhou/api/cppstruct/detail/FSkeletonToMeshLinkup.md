---
title: FSkeletonToMeshLinkup
---

# FSkeletonToMeshLinkup

This is a mapping table between bone in a particular skeletal mesh and bone of this skeleton set.

## Variables

| Name | Type | Description |
|------|------|-------------|
| SkeletonToMeshTable | TArray < int32 > | Mapping table. Size must be same as size of bone tree (not Mesh Ref Pose).  	  N |
| MeshToSkeletonTable | TArray < int32 > | Mapping table. Size must be same as size of ref pose (not bone tree).  	  No ind |