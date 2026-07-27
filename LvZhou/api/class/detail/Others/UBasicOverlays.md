---
title: UBasicOverlays
language: cpp
---

# UBasicOverlays

Implements an asset that contains a set of overlay data (which includes timing, text, and position) to be displayed for any
  given source (including, but not limited to, audio, dialog, and movies)

> Inheritance: UOverlays

## Variables

| Name | Type | Description |
|------|------|-------------|
| Overlays | TArray < FOverlayItem > | The overlay data held by this asset. Contains info on timing, position, and the  |
| AssetImportData | UAssetImportData * | The import data used to make this overlays asset |