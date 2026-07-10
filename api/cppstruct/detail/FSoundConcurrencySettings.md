---
title: FSoundConcurrencySettings
---

# FSoundConcurrencySettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxCount | int32 | The max number of allowable concurrent active voices for voices playing in this  |
| bLimitToOwner | uint32 | Whether or not to limit the concurrency to per sound owner (i.e. the actor that  |
| ResolutionRule | TEnumAsByte < enum EMaxConcurrentResolutionRule :: Type > | Which concurrency resolution policy to use if max voice count is reached. |
| VolumeScale | float | The amount of attenuation to apply to older voice instances in this concurrency  |