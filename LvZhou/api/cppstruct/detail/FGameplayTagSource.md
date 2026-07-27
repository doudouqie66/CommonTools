---
title: FGameplayTagSource
---

# FGameplayTagSource

Struct defining where gameplay tags are loadedsaved from. Mostly for the editor

## Variables

| Name | Type | Description |
|------|------|-------------|
| SourceName | FName | Name of this source |
| SourceType | EGameplayTagSourceType | Type of this source |
| SourceTagList | UGameplayTagsList * | If this is bound to an ini object for saving, this is the one |