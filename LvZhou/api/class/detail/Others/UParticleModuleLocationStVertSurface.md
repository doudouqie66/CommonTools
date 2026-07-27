---
title: UParticleModuleLocationStVertSurface
language: cpp
---

# UParticleModuleLocationStVertSurface

> Inheritance: UParticleModuleLocationBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceType | TEnumAsByte < enum ELocationStVertSurfaceSource > | Whether the module uses Verts or Surfaces for locations. 	  	   ST_VERTSURFACESO |
| BrustType | TEnumAsByte < enum ELocationStVertBrustType > |  |
| ParticleCoutingMethod | TEnumAsByte < enum EParticleCoutingMethod > |  |
| UniversalOffset | FVector | An offset to apply to each vertsurface |
| bUpdatePositionEachFrame | uint32 | If true, update the particle locations each frame with that of the vertsurface |
| bOrientMeshEmitters | uint32 | If true, rotate mesh emitter meshes to orient w the vertsurface |
| StMeshActorParamName | FName | The parameter name of the skeletal mesh actor that supplies the SkelMeshComponen |
| VertexPosition | TArray < FVector > |  |
| VertexNormals | TArray < FVector > |  |
| EditorStoreTriangleIndexArray | TArray < int32 > |  |
| EditorStoreTriangleNum | int32 |  |
| EditorStoreSectionCount | int32 |  |
| EditorStoreSectionMinVertexIndexMap | TMap < int32 , int32 > |  |
| EditorStoreSectionTrianglesMap | TMap < int32 , int32 > |  |
| PostionScale | FVector |  |
| ParticleSpeed | float |  |
| bEnforceNormalCheck | uint32 | When true use the RestrictToNormal and NormalTolerance values to check surface n |
| NormalToCompare | FVector | Use this normal to restrict spawning locations |
| NormalCheckToleranceDegrees | float | Normal tolerance.  0 degrees means it must be an exact match, 180 degrees means  |
| NormalCheckTolerance | float | Normal tolerance.  Value between 1.0 and -1.0 with 1.0 being exact match, 0.0 be |
| bInheritVertexColor | uint32 | If true, particles inherit the associated vertex color on spawn. This feature is |
| bInheritUV | uint32 | If true, particles inherit the associated UV data on spawn. Accessed through dyn |
| InheritUVChannel | uint32 | UV channel to inherit from the spawn mesh, internally clamped to those available |
| EditorStMesh | UStaticMesh * | The name of the skeletal mesh to use in the editor |