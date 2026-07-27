---
title: FImportanceTexture
---

# FImportanceTexture

Texture processed for importance sampling
 Holds marginal PDF of the rows, as well as the PDF of each row

## Variables

| Name | Type | Description |
|------|------|-------------|
| Size | FIntPoint |  |
| NumMips | int |  |
| MarginalCDF | TArray < float > |  |
| ConditionalCDF | TArray < float > |  |
| TextureData | TArray < FColor > |  |
| Texture | TWeakObjectPtr < UTexture2D > |  |
| Weighting | TEnumAsByte < EImportanceWeight :: Type > |  |