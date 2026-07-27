---
title: UAISenseConfig_Sight
language: cpp
---

# UAISenseConfig_Sight

> Inheritance: UAISenseConfig

## Variables

| Name | Type | Description |
|------|------|-------------|
| Implementation | TSubclassOf < UAISense_Sight > |  |
| SightRadius | float | Maximum sight distance to notice a target. |
| LoseSightRadius | float | Maximum sight distance to see target that has been already seen. |
| PeripheralVisionAngleDegrees | float | How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to chan |
| DetectionByAffiliation | FAISenseAffiliationFilter |  |
| AutoSuccessRangeFromLastSeenLocation | float | If not an InvalidRange (which is the default), we will always be able to see the |