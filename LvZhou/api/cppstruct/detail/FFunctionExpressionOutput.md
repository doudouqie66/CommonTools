---
title: FFunctionExpressionOutput
---

# FFunctionExpressionOutput

Struct that stores information about a function output which is needed to maintain connections and implement the function call.

## Variables

| Name | Type | Description |
|------|------|-------------|
| ExpressionOutput | UMaterialExpressionFunctionOutput * | Reference to the FunctionOutput in the material function.   	  This is a referen |
| ExpressionOutputId | FGuid | Id of the FunctionOutput, used to link ExpressionOutput. |
| Output | FExpressionOutput | Actual output struct which stores information about how this output is connected |