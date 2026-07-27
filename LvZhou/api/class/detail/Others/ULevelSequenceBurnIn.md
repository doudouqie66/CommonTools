---
title: ULevelSequenceBurnIn
language: cpp
---

# ULevelSequenceBurnIn

Base class for level sequence burn ins

> Inheritance: UUserWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| FrameInformation | FLevelSequencePlayerSnapshot | Snapshot of frame information. |
| LevelSequenceActor | ALevelSequenceActor * | The actor to get our burn in frames from |

## Functions

### SetSettings

Called when this burn in is receiving its settings

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InSettings | UObject * |  |

**Return:** void  

### GetSettingsClass

Get the settings class to use for this burn in

**Return:** TSubclassOf < ULevelSequenceBurnInInitSettings >