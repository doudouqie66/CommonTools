---
title: ULocalizedOverlays
language: cpp
---

# ULocalizedOverlays

Implements an asset that contains a set of Basic Overlays that will be displayed in accordance with
  the current locale, or a default set if an appropriate locale is not found

> Inheritance: UOverlays

## Variables

| Name | Type | Description |
|------|------|-------------|
| DefaultOverlays | UBasicOverlays * | The overlays to use if no overlays are found for the current culture |
| LocaleToOverlaysMap | TMap < FString , UBasicOverlays * > | Maps a set of cultures to specific BasicOverlays assets. 	  Cultures are compris |
| AssetImportData | UAssetImportData * | The import data used to make this overlays asset |