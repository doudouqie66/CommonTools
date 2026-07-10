---
title: FMeshInstancingSettings
---

# FMeshInstancingSettings

Mesh instance-replacement settings

## Variables

| Name | Type | Description |
|------|------|-------------|
| ActorClassToUse | TSubclassOf < AActor > | The actor class to attach new instance static mesh components to |
| InstanceReplacementThreshold | int32 | The number of static mesh instances needed before a mesh is replaced with an ins |
| MeshReplacementMethod | EMeshInstancingReplacementMethod | How to replace the original actors when instancing |
| bSkipMeshesWithVertexColors | bool | Whether to skip the conversion to an instanced static mesh for meshes with verte |
| bUseHLODVolumes | bool | Whether split up instanced static mesh components based on their intersection wi |