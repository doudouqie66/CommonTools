---
title: UAtmosphericSkyBoxComponent
language: cpp
---

# UAtmosphericSkyBoxComponent

> Inheritance: USceneComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| RenderDynamicSky | bool |  |
| Material | UMaterialInterface * |  |
| NoiseTexture | UTexture2D * |  |
| StaticMesh | UStaticMesh * |  |
| RadiusScale | float |  |
| MeshRotation | FRotator |  |
| RainyDegree | float |  |
| Atmosphere | FTOD_AtmosphereParameters |  |
| Day | FTOD_DayParameters |  |
| Light | FTOD_LightParameters |  |
| CloudsPbr | FTOD_CloudPBRParameters |  |
| World | FTOD_WorldParameters |  |
| Cycle | FTOD_CycleParameters |  |
| TodTime | FTOD_Time |  |
| TodAnimation | FTOD_Animation |  |
| TodSunParams | FTOD_Sun |  |
| TodMoonParams | FTOD_Moon |  |
| TodSunAndMoonParams | FTOD_SunAndMoon |  |
| TodStarsParams | FTOD_Stars |  |
| TodSpecialSkyParams | FTOD_SpecialSky |  |
| SunActor | AActor * |  |
| MoonActor | AActor * |  |
| LightingChannels | FLightingChannels |  |
| MaterialInstancesDynamic | UMaterialInstanceDynamic * |  |
| bIsMaterialInstanceDirty | bool |  |
| FixedTimeOfDay | bool |  |
| FixedCurrTime | float |  |
| bNeedUpdate | bool |  |

## Functions

### SetFixedCurrTime

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| time | float |  |

**Return:** void  

### SetFixedTimeOfDay

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| IsFiexd | bool |  |

**Return:** void  

### SetNeedUpdate

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NeedUpdate | bool |  |

**Return:** void  

### GetMaterialInstancesDynamic

**Return:** UMaterialInstanceDynamic *