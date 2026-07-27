---
title: UAnimCompress_RemoveLinearKeys
language: cpp
---

# UAnimCompress_RemoveLinearKeys

> Inheritance: UAnimCompress

## Variables

| Name | Type | Description |
|------|------|-------------|
| MaxPosDiff | float | Maximum position difference to use when testing if an animation key may be remov |
| MaxAngleDiff | float | Maximum angle difference to use when testing if an animation key may be removed. |
| MaxScaleDiff | float | Maximum Scale difference to use when testing if an animation key may be removed. |
| MaxEffectorDiff | float | As keys are tested for removal, we monitor the effects all the way down to the e |
| MinEffectorDiff | float | As keys are tested for removal, we monitor the effects all the way down to the e |
| EffectorDiffSocket | float | Error threshold for End Effectors with Sockets attached to them. 	  Typically mo |
| ParentKeyScale | float | A scale value which increases the likelihood that a bone will retain a key if it |
| bRetarget | uint32 | true = As the animation is compressed, adjust animated nodes to compensate for c |
| bActuallyFilterLinearKeys | uint32 | Controls whether the final filtering step will occur, or only the retargetting a |