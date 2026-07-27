---
title: UBaseMediaSource
language: cpp
---

# UBaseMediaSource

Base class for concrete media sources.

> Inheritance: UMediaSource

## Variables

| Name | Type | Description |
|------|------|-------------|
| PlayerName | FName | Name of the desired native media player (Empty = find one automatically). |
| PlatformPlayerNames | TMap < FString , FName > | Override native media player plug-ins per platform (Empty = find one automatical |