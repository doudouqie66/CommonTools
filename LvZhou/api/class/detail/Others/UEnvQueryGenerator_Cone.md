---
title: UEnvQueryGenerator_Cone
language: cpp
---

# UEnvQueryGenerator_Cone

> Inheritance: UEnvQueryGenerator_ProjectedPoints

## Variables

| Name | Type | Description |
|------|------|-------------|
| AlignedPointsDistance | FAIDataProviderFloatValue | Distance between each point of the same angle |
| ConeDegrees | FAIDataProviderFloatValue | Maximum degrees of the generated cone |
| AngleStep | FAIDataProviderFloatValue | The step of the angle increase. Angle step must be >=1 	   Smaller values genera |
| Range | FAIDataProviderFloatValue | Generation distance |
| CenterActor | TSubclassOf < UEnvQueryContext > | The actor (or actors) that will generate a cone in their facing direction |
| bIncludeContextLocation | uint8 | Whether to include CenterActors' locations when generating items.  	 	Note that  |