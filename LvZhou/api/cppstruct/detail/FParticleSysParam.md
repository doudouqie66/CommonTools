---
title: FParticleSysParam
---

# FParticleSysParam

Struct used for a particular named instance parameter for this ParticleSystemComponent.

## Variables

| Name | Type | Description |
|------|------|-------------|
| Name | FName | The name of the parameter |
| ParamType | TEnumAsByte < enum EParticleSysParamType > | The type of parameters 	 	PSPT_None       - There is no data type 	 	PSPT_Scalar |
| Scalar | float |  |
| Scalar_Low | float |  |
| Vector | FVector |  |
| Vector_Low | FVector |  |
| Color | FColor |  |
| Actor | AActor * |  |
| Material | UMaterialInterface * |  |