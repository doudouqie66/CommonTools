---
title: USoundNodeGroupControl
language: cpp
---

# USoundNodeGroupControl

Plays different sounds depending on the number of active sounds
  Any time a new sound is played, the first group that has an available slot will be chosen

> Inheritance: USoundNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| GroupSizes | TArray < int32 > | How many active sounds are allowed for each group |