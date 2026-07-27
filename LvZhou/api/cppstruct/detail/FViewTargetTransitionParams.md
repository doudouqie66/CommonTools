---
title: FViewTargetTransitionParams
---

# FViewTargetTransitionParams

A set of parameters to describe how to transition between view targets.

## Variables

| Name | Type | Description |
|------|------|-------------|
| BlendTime | float | Total duration of blend to pending view target. 0 means no blending. |
| BlendFunction | TEnumAsByte < enum EViewTargetBlendFunction > | Function to apply to the blend parameter. |
| BlendExp | float | Exponent, used by certain blend functions to control the shape of the curve. |
| bLockOutgoing | uint32 | If true, lock outgoing viewtarget to last frame's camera POV for the remainder o |
| bLockLocation | uint32 |  |