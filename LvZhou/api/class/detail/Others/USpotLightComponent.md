---
title: USpotLightComponent
language: cpp
---

# USpotLightComponent

A spot light component emits a directional cone shaped light (Eg a Torch).

> Inheritance: UPointLightComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| InnerConeAngle | float | Degrees. |
| OuterConeAngle | float | Degrees. |
| bCastPhotonShadow | uint32 | #if WITH_PHOTON_SHADOW 	 Whether the light should cast photon shadow for charact |
| NearPlaneOffset | float |  |
| FarPlaneOffset | float |  |
| LightShaftConeAngle | float | Degrees.  	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category=LightShaft, meta= |

## Functions

### SetInnerConeAngle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewInnerConeAngle | float |  |

**Return:** void  

### SetOuterConeAngle

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| NewOuterConeAngle | float |  |

**Return:** void