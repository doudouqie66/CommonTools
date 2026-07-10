---
title: FLocalizedSubtitle
---

# FLocalizedSubtitle

A subtitle localized to a specific language.

## Variables

| Name | Type | Description |
|------|------|-------------|
| LanguageExt | FString | The 3-letter language for this subtitle |
| Subtitles | TArray < FSubtitleCue > | Subtitle cues.  If empty, use SoundNodeWave's SpokenText as the subtitle.  Will  |
| bMature | uint32 | true if this sound is considered to contain mature content. |
| bManualWordWrap | uint32 | true if the subtitles have been split manually. |
| bSingleLine | uint32 | true if the subtitles should be displayed one line at a time. |