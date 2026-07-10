---
title: USoundCue
language: cpp
---

# USoundCue

The behavior of audio playback is defined within Sound Cues.

> Inheritance: USoundBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| bOverrideAttenuation | uint32 | Indicates whether attenuation should use the Attenuation Overrides or the Attenu |
| FirstNode | USoundNode * |  |
| VolumeMultiplier | float | Volume multiplier for the Sound Cue |
| PitchMultiplier | float | Pitch multiplier for the Sound Cue |
| AttenuationOverrides | FSoundAttenuationSettings | Attenuation settings to use if Override Attenuation is set to true |
| SubtitlePriority | float |  |
| AllNodes | TArray < USoundNode * > |  |
| SoundCueGraph | UEdGraph * |  |