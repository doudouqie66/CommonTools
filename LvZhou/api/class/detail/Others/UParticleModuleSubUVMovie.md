---
title: UParticleModuleSubUVMovie
language: cpp
---

# UParticleModuleSubUVMovie

> Inheritance: UParticleModuleSubUV

## Variables

| Name | Type | Description |
|------|------|-------------|
| bUseEmitterTime | uint32 | If true, use the emitter time to look up the frame rate. 	 	If false (default),  |
| FrameRate | FRawDistributionFloat | The frame rate the SubUV images should be 'flipped' thru at. |
| StartingFrame | int32 | The starting image index for the SubUV (1 = the first frame). 	 	Assumes order o |
| bUseSmallImageIndex | uint32 | If true, ImageIndex will be limited in 0~NumFrames. 	 	If false (default), Image |