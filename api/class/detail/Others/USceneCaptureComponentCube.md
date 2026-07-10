---
title: USceneCaptureComponentCube
language: cpp
---

# USceneCaptureComponentCube

Used to capture a 'snapshot' of the scene from a 6 planes and feed it to a render target.

> Inheritance: USceneCaptureComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| TextureTarget | UTextureRenderTargetCube * | Temporary render target that can be used by the editor. |

## Functions

### CaptureScene

Render the scene to the texture target immediately.  
	  This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.

**Return:** void