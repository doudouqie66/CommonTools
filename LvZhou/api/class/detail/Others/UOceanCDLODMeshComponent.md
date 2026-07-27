---
title: UOceanCDLODMeshComponent
language: cpp
---

# UOceanCDLODMeshComponent

> Inheritance: UMeshComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| CDLODMeshOverrideMaterial | UMaterialInterface * | The material used to rendering ocean |
| MaxViewDistance | float |  |
| MaxCDLODDistance | float |  |
| LODDistanceRatio | float |  |
| LOD0Size | float |  |
| LODCount | int32 |  |
| WaveFadeDistance | float | . amplitude of wave have to fade as 0 for edge quads,this is the fade radius |
| SeaLevel | float |  |
| Occlusioncoff | float |  |
| FFTSampleCount | int32 |  |
| FFTSampleSize | float | . FFT texture sampled by world position, used as  normalize sample position |
| FFTFoamBlurNormalZ | FVector2D | . X influence the foam shape 	. Y : Z of normal vector of FFT wave, at this mome |
| GerstnerFFTSoftness | FVector2D | GerstnerFFTSoftness holds two waves blend factor in near sea 	 .X is Gerstner bl |
| GridSize | int32 | UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = OCeanCDLODMesh) |
| ShapeUniformValue | TArray < int32 > |  |