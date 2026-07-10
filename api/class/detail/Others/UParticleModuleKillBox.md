---
title: UParticleModuleKillBox
language: cpp
---

# UParticleModuleKillBox

> Inheritance: UParticleModuleKillBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| LowerLeftCorner | FRawDistributionVector | The lower left corner of the box. |
| UpperRightCorner | FRawDistributionVector | The upper right corner of the box. |
| bAbsolute | uint32 | If true, the box coordinates are in world space. |
| bKillInside | uint32 | If true, particles INSIDE the box will be killed.  	 	If false (the default), pa |
| bAxisAlignedAndFixedSize | uint32 | If true, the box will always be axis aligned and non-scalable. |