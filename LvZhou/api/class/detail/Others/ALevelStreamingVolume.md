---
title: ALevelStreamingVolume
language: cpp
---

# ALevelStreamingVolume

> Inheritance: AVolume

## Variables

| Name | Type | Description |
|------|------|-------------|
| StreamingLevelNames | TArray < FName > | Levels names affected by this level streaming volume. |
| bEditorPreVisOnly | uint32 | If true, this streaming volume should only be used for editor streaming level pr |
| bDisabled | uint32 | If true, this streaming volume is ignored by the streaming volume code.  Used to |
| StreamingUsage | TEnumAsByte < enum EStreamingVolumeUsage > | Determines what this volume is used for, e.g. whether to control loading, loadin |