---
title: FMaterialInput
---

# FMaterialInput

## Variables

| Name | Type | Description |
|------|------|-------------|
| OutputIndex | int32 | Index into Expression's outputs array that this input is connected to. |
| InputName | FString | Optional name of the input. 	  Note that this is the only member which is not de |
| Mask | int32 |  |
| MaskR | int32 |  |
| MaskG | int32 |  |
| MaskB | int32 |  |
| MaskA | int32 |  |
| ExpressionName | FName | Material expression name that this input is connected to, or None if not connect |
| Expression | UMaterialExpression * | Material expression that this input is connected to, or NULL if not connected. |