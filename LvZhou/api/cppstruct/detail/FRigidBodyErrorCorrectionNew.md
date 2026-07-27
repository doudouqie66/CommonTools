---
title: FRigidBodyErrorCorrectionNew
---

# FRigidBodyErrorCorrectionNew

Rigid body error correction data

## Variables

| Name | Type | Description |
|------|------|-------------|
| PingExtrapolation | float | Value between 0 and 1 which indicates how much velocity 		and ping based correct |
| PingLimit | float | For the purpose of extrapolation, ping will be clamped to this value |
| ErrorPerLinearDifference | float | Error per centimeter |
| ErrorPerAngularDifference | float | Error per degree |
| MaxRestoredStateError | float | Maximum allowable error for a state to be considered "resolved" |
| MaxLinearHardSnapDistance | float |  |
| PositionLerp | float | How much to directly lerp to the correct position. Generally 		increase precisio |
| AngleLerp | float | How much to directly lerp to the correct angle. |
| LinearVelocityCoefficient | float | This is the coefficient `k` in the differential equation: 		the velocity in a re |
| AngularVelocityCoefficient | float | This is the angular analog to LinearVelocityCoefficient. |
| ErrorAccumulationSeconds | float | Number of seconds to remain in a heuristically 		unresolveable state before hard |
| ErrorAccumulationDistanceSq | float | If the body has moved less than the square root of 		frame, then error may accum |
| ErrorAccumulationSimilarity | float | If the previous error projected onto the current error 		hard snap. |