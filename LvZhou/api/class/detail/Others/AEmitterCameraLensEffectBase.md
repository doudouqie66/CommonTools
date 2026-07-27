---
title: AEmitterCameraLensEffectBase
language: cpp
---

# AEmitterCameraLensEffectBase

> Inheritance: AEmitter

## Variables

| Name | Type | Description |
|------|------|-------------|
| PS_CameraEffect | UParticleSystem * | Particle System to use |
| PS_CameraEffectNonExtremeContent_DEPRECATED | UParticleSystem * | The effect to use for non extreme content |
| BaseCamera | APlayerCameraManager * | Camera this emitter is attached to, will be notified when emitter is destroyed |
| RelativeTransform | FTransform | Effect-to-camera transform to allow arbitrary placement of the particle system . |
| BaseFOV | float | This is the assumed FOV for which the effect was authored. The code will make au |
| bAllowMultipleInstances | uint8 | true if multiple instances of this emitter can exist simultaneously, false other |
| bResetWhenRetriggered | uint8 | If bAllowMultipleInstances is true and this effect is retriggered, the particle  |
| EmittersToTreatAsSame | TArray < TSubclassOf < AEmitterCameraLensEffectBase > > | If an emitter class in this array is currently playing, do not play this effect. |
| DistFromCamera_DEPRECATED | float | DEPRECATED(4.11) |