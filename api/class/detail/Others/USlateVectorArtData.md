---
title: USlateVectorArtData
language: cpp
---

# USlateVectorArtData

Turn static mesh data into Slate's simple vector art format.

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| VertexData | TArray < FSlateMeshVertex > | @see GetVertexData() |
| IndexData | TArray < uint32 > | @see GetIndexData() |
| Material | UMaterialInterface * | @see GetMaterial() |
| ExtentMin | FVector2D |  |
| ExtentMax | FVector2D |  |