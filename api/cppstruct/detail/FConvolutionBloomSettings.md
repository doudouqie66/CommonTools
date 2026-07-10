---
title: FConvolutionBloomSettings
---

# FConvolutionBloomSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| Texture | UTexture2D * | Texture to replace default convolution bloom kernel |
| Size | float | Relative size of the convolution kernel image compared to the minor axis of the  |
| CenterUV | FVector2D | The UV location of the center of the kernel.  Should be very close to (.5,.5) |
| PreFilterMin | float | Boost intensity of select pixels  prior to computing bloom convolution (Min, Max |
| PreFilterMax | float | Boost intensity of select pixels  prior to computing bloom convolution (Min, Max |
| PreFilterMult | float | Boost intensity of select pixels  prior to computing bloom convolution (Min, Max |
| BufferScale | float | Implicit buffer region as a fraction of the screen size to insure the bloom does |