---
title: USoundMix
language: cpp
---

# USoundMix

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bApplyEQ | uint32 | Whether to apply the EQ effect |
| EQPriority | float |  |
| EQSettings | FAudioEQEffect |  |
| SoundClassEffects | TArray < struct FSoundClassAdjuster > | Array of changes to be applied to groups. |
| InitialDelay | float | Initial delay in seconds before the the mix is applied. |
| FadeInTime | float | Time taken in seconds for the mix to fade in. |
| Duration | float | Duration of mix, negative means it will be applied until another mix is set. |
| FadeOutTime | float | Time taken in seconds for the mix to fade out. |
| bChanged | uint32 | Transient property used to trigger real-time updates of the active EQ filter for |