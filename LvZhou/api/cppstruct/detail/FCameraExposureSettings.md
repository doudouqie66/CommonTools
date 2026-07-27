---
title: FCameraExposureSettings
---

# FCameraExposureSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| Method | TEnumAsByte < enum EAutoExposureMethod > | Luminance computation method |
| LowPercent | float | The eye adaptation will adapt to a value extracted from the luminance histogram  |
| HighPercent | float | The eye adaptation will adapt to a value extracted from the luminance histogram  |
| MinBrightness | float | A good value should be positive near 0. This is the minimum brightness the auto  |
| MaxBrightness | float | A good value should be positive (2 is a good value). This is the maximum brightn |
| SpeedUp | float | >0 |
| SpeedDown | float | >0 |
| Bias | float | Logarithmic adjustment for the exposure. Only used if a tonemapper is specified. |
| HistogramLogMin | float | temporary exposed until we found good values, -8: 1256, -10: 11024 |
| HistogramLogMax | float | temporary exposed until we found good values 4: 16, 8: 256 |