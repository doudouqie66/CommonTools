---
title: UParticleModuleLocationBoneSocket
language: cpp
---

# UParticleModuleLocationBoneSocket

> Inheritance: UParticleModuleLocationBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceType | TEnumAsByte < enum ELocationBoneSocketSource > | Whether the module uses Bones or Sockets for locations. 	  	 	BONESOCKETSOURCE_B |
| UniversalOffset | FVector | An offset to apply to each bonesocket |
| SourceLocations | TArray < struct FLocationBoneSocketInfo > | The name(s) of the bonesocket(s) to position at. If this is empty, the module wi |
| SelectionMethod | TEnumAsByte < enum ELocationBoneSocketSelectionMethod > | The method by which to select the bonesocket to spawn at. 	  	 	SEL_Sequential		 |
| bUpdatePositionEachFrame | uint32 | If true, update the particle locations each frame with that of the bonesocket |
| bOrientMeshEmitters | uint32 | If true, rotate mesh emitter meshes to orient w the socket |
| bInheritBoneVelocity | uint32 | If true, particles inherit the associated bone velocity when spawned |
| InheritVelocityScale | float | A scale on how much of the bone's velocity a particle will inherit. |
| SkelMeshActorParamName | FName | The parameter name of the skeletal mesh actor that supplies the SkelMeshComponen |
| NumPreSelectedIndices | int32 |  |
| EditorSkelMesh | USkeletalMesh * | The name of the skeletal mesh to use in the editor |