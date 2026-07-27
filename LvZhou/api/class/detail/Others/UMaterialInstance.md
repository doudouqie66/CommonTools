---
title: UMaterialInstance
language: cpp
---

# UMaterialInstance

> Inheritance: UMaterialInterface

## Variables

| Name | Type | Description |
|------|------|-------------|
| MeshLogicType | int32 | 材质实例的功能分类：1:挂件 |
| PhysMaterial | UPhysicalMaterial * | Physical material to use for this graphics material. Used for sounds, effects et |
| Parent | UMaterialInterface * | Parent material. |
| bOverride_IncludeShaderCode | uint32 |  |
| bIncludeShaderCode | uint32 |  |
| bHasStaticPermutationResource | uint32 | Indicates whether the instance has static permutation resources (which are requi |
| bOverrideSubsurfaceProfile | uint32 | Defines if SubsurfaceProfile from this instance is used or it uses the parent on |
| FontParameterValues | TArray < FFontParameterValue > | Font parameters. |
| ScalarParameterValues | TArray < FScalarParameterValue > | Scalar parameters. |
| TextureParameterValues | TArray < FTextureParameterValue > | Texture parameters. |
| VectorParameterValues | TArray < FVectorParameterValue > | Vector parameters. |
| DynamicInstancingParameters | TMap < FString , FVector4 > | Dynamic instancing parameters. |
| bOverrideBaseProperties_DEPRECATED | bool |  |
| BasePropertyOverrides | FMaterialInstanceBasePropertyOverrides |  |
| PermutationTextureReferences | TArray < UTexture * > | Cached texture references from all expressions in the material (including nested |
| bEnableTexture2DArrayShaderVariant | uint32 |  |
| ReferencedTextureGuids | TArray < FGuid > |  |