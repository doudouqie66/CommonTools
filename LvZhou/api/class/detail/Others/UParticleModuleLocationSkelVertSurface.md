---
title: UParticleModuleLocationSkelVertSurface
language: cpp
---

# UParticleModuleLocationSkelVertSurface

> Inheritance: UParticleModuleLocationBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceType | TEnumAsByte < enum ELocationSkelVertSurfaceSource > | Whether the module uses Verts or Surfaces for locations. 	  	 	VERTSURFACESOURCE |
| UniversalOffset | FVector | An offset to apply to each vertsurface |
| bUpdatePositionEachFrame | uint32 | If true, update the particle locations each frame with that of the vertsurface |
| bOrientMeshEmitters | uint32 | If true, rotate mesh emitter meshes to orient w the vertsurface |
| bInheritBoneVelocity | uint32 | If true, particles inherit the associated bone velocity when spawned |
| InheritVelocityScale | float | A scale on how much of the bone's velocity a particle will inherit. |
| SkelMeshActorParamName | FName | The parameter name of the skeletal mesh actor that supplies the SkelMeshComponen |
| ValidAssociatedBones | TArray < FName > | This module will only spawn from verts or surfaces associated with the bones in  |
| bEnforceNormalCheck | uint32 | When true use the RestrictToNormal and NormalTolerance values to check surface n |
| NormalToCompare | FVector | Use this normal to restrict spawning locations |
| NormalCheckToleranceDegrees | float | Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means  |
| NormalCheckTolerance | float | Normal tolerance.  Value between 1.0 and -1.0 with 1.0 being exact match, 0.0 be |
| ValidMaterialIndices | TArray < int32 > | Array of material indices that are valid materials to spawn from. 	 	If empty, a |
| bInheritVertexColor | uint32 | If true, particles inherit the associated vertex color on spawn. This feature is |
| bInheritUV | uint32 | If true, particles inherit the associated UV data on spawn. Accessed through dyn |
| InheritUVChannel | uint32 | UV channel to inherit from the spawn mesh, internally clamped to those available |
| EditorSkelMesh | USkeletalMesh * | The name of the skeletal mesh to use in the editor |