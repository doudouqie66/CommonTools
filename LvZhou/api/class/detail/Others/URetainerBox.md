---
title: URetainerBox
language: cpp
---

# URetainerBox

The Retainer Box renders children widgets to a render target first before
  later rendering that render target to the screen.  This allows both frequency
  and phase to be controlled so that the UI can actually render less often than the
  frequency of the main game render.  It also has the side benefit of allow materials
  to be applied to the render target after drawing the widgets to apply a simple post process.
 
   Single Child
   Caching  Performance

> Inheritance: UContentWidget

## Variables

| Name | Type | Description |
|------|------|-------------|
| DisableCache | bool |  |
| RenderOnInvalidation | bool | Should this widget redraw the contents it has every time it receives an invalida |
| RenderOnPhase | bool | Should this widget redraw the contents it has every time the phase occurs. |
| Phase | int32 | The Phase this widget will draw on. 	  	  If the Phase is 0, and the PhaseCount  |
| PhaseCount | int32 | The PhaseCount controls how many phases are possible know what to modulus the cu |
| bHittestRecordOpt | bool |  |
| bUsedForTickAdapter | bool |  |
| EffectMaterial | UMaterialInterface * | The effect to optionally apply to the render target.  We will set the texture sa |
| TextureParameter | FName | The texture sampler parameter of the @EffectMaterial, that we'll set to the rend |

## Functions

### EnableCachedRender

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### SetRenderPhase

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPhase | int32  |  |
| InPhaseCount | int32 |  |

**Return:** void  

### EnableHittestRecordOpt

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### SetUsedForTickAdapter

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bValue | bool |  |

**Return:** void  

### RequestRender

Requests the retainer redrawn the contents it has.

**Return:** void 

### GetEffectMaterial

Get the current dynamic effect material applied to the retainer box.

**Return:** UMaterialInstanceDynamic * 

### SetEffectMaterial

Set a new effect material to the retainer widget.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EffectMaterial | UMaterialInterface * |  |

**Return:** void  

### SetTextureParameter

Sets the name of the texture parameter to set the render target to on the material.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| TextureParameter | FName |  |

**Return:** void