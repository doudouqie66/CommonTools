---
title: UPlatformMediaSource
language: cpp
---

# UPlatformMediaSource

A media source that selects other media sources based on target platform.
 
  Use this asset to override media sources on a per-platform basis.

> Inheritance: UMediaSource

## Variables

| Name | Type | Description |
|------|------|-------------|
| MediaSource | UMediaSource * | Default media source. 	  	  This media source will be used if no source was spec |
| PlatformMediaSources | TMap < FString , UMediaSource * > | Media sources per platform. |