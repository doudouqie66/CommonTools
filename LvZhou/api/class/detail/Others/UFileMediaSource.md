---
title: UFileMediaSource
language: cpp
---

# UFileMediaSource

> Inheritance: UBaseMediaSource

## Variables

| Name | Type | Description |
|------|------|-------------|
| FilePath | FString | The path to the media file to be played. 	  	  @see SetFilePath |
| PrecacheFile | bool | Load entire media file into memory and play from there (if possible). |

## Functions

### SetFilePath

Set the path to the media file that this source represents.
	 
	  Automatically converts full paths to media sources that reside in the
	  Engine's or project's ContentMovies directory into relative paths.
	 

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Path | FString & | The path to set. |

**Return:** void