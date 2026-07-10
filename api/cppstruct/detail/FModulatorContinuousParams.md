---
title: FModulatorContinuousParams
---

# FModulatorContinuousParams

## Variables

| Name | Type | Description |
|------|------|-------------|
| ParameterName | FName | The name of the sound instance parameter that specifies the current value. |
| Default | float | The default value to be used if the parameter is not found. |
| MinInput | float | The minimum input value. Values will be clamped to the [MinInput, MaxInput] rang |
| MaxInput | float | The maximum input value. Values will be clamped to the [MinInput, MaxInput] rang |
| MinOutput | float | The minimum output value. The input value will be scaled from the range [MinInpu |
| MaxOutput | float | The maximum output value. The input value will be scaled from the range [MinInpu |
| ParamMode | TEnumAsByte < enum ModulationParamMode > | The mode with which to treat the input value |