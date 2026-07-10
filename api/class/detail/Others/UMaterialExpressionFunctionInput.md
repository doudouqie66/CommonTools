---
title: UMaterialExpressionFunctionInput
language: cpp
---

# UMaterialExpressionFunctionInput

> Inheritance: UMaterialExpression

## Variables

| Name | Type | Description |
|------|------|-------------|
| Preview | FExpressionInput | Used for previewing when editing the function, or when bUsePreviewValueAsDefault |
| InputName | FString | The input's name, which will be drawn on the connector in function call expressi |
| Description | FString | The input's description, which will be used as a tooltip on the connector in fun |
| Id | FGuid | Id of this input, used to maintain references through name changes. |
| InputType | TEnumAsByte < enum EFunctionInputType > | Type of this input.   	  Input code chunks will be cast to this type, and a comp |
| PreviewValue | FVector4 | Value used to preview this input when editing the material function. |
| bUsePreviewValueAsDefault | uint32 | Whether to use the preview value or texture as the default value for this input. |
| SortPriority | int32 | Controls where the input is displayed relative to the other inputs. |
| bCompilingFunctionPreview | uint32 | true when this expression is being compiled in a function preview,  	  false whe |