---
title: UDialogueWave
language: cpp
---

# UDialogueWave

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| bMature | uint32 | true if this dialogue is considered to contain matureadult content. |
| bOverride_SubtitleOverride | uint32 |  |
| SpokenText | FString | A localized version of the text that is actually spoken phonetically in the audi |
| SubtitleOverride | FString | A localized version of the subtitle text that should be displayed for this audio |
| ContextMappings | TArray < FDialogueContextMapping > | Mappings between dialogue contexts and associated soundwaves. |
| LocalizationGUID | FGuid |  |
| VoiceActorDirection | FString | Provides general notes to the voice actor intended to direct their performance,  |