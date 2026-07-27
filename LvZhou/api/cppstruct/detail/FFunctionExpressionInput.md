---
title: FFunctionExpressionInput
---

# FFunctionExpressionInput

Struct that stores information about a function input which is needed to maintain connections and implement the function call.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ExpressionInput | UMaterialExpressionFunctionInput * | Reference to the FunctionInput in the material function.   	  This is a referenc |
| ExpressionInputId | FGuid | Id of the FunctionInput, used to link ExpressionInput. |
| Input | FExpressionInput | Actual input struct which stores information about how this input is connected i |