---
title: UInterpTrackInstVectorMaterialParam
language: cpp
---

# UInterpTrackInstVectorMaterialParam

> Inheritance: UInterpTrackInst

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaterialInstances | TArray < UMaterialInstanceDynamic * > | MIDs we're using to set the desired parameter. |
| ResetVectors | TArray < FVector > | Saved values for restoring state when exiting Matinee. |
| PrimitiveMaterialRefs | TArray < struct FPrimitiveMaterialRef > | Primitive components on which materials have been overridden. |
| InstancedTrack | UInterpTrackVectorMaterialParam * | Track we are an instance of - used in the editor to propagate changes to the tra |