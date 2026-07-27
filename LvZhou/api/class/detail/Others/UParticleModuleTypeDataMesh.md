---
title: UParticleModuleTypeDataMesh
language: cpp
---

# UParticleModuleTypeDataMesh

> Inheritance: UParticleModuleTypeDataBase

## Variables

| Name | Type | Description |
|------|------|-------------|
| Mesh | UStaticMesh * | The static mesh to render at the particle positions |
| CastShadows | uint32 | If true, has the meshes cast shadows |
| DoCollisions | uint32 | UNUSED (the collision module dictates doing collisions) |
| MeshAlignment | TEnumAsByte < enum EMeshScreenAlignment > | The alignment to use on the meshes emitted. 	 	The RequiredModule->ScreenAlignme |
| bOverrideMaterial | uint32 | If true, use the emitter material when rendering rather than the one applied  	  |
| bOverrideDefaultMotionBlurSettings | uint32 |  |
| bEnableMotionBlur | uint32 |  |
| Pitch_DEPRECATED | float | deprecated properties for initial orientation |
| Roll_DEPRECATED | float |  |
| Yaw_DEPRECATED | float |  |
| RollPitchYawRange | FRawDistributionVector | The 'pre' rotation pitch (in degrees) to apply to the static mesh used. |
| AxisLockOption | TEnumAsByte < EParticleAxisLock > | The axis to lock the mesh on. This overrides TypeSpecific mesh alignment as well |
| bCameraFacing | uint32 | If true, then point the X-axis of the mesh towards the camera. 	 	When set, Axis |
| CameraFacingUpAxisOption_DEPRECATED | TEnumAsByte < enum EMeshCameraFacingUpAxis > | The axis of the mesh to point up when camera facing the X-axis. 	 		CameraFacing |
| CameraFacingOption | TEnumAsByte < enum EMeshCameraFacingOptions > | The camera facing option to use: 	 	All camera facing options without locked axi |
| bApplyParticleRotationAsSpin | uint32 | If true, apply 'sprite' particle rotation about the orientation axis (direction  |
| bFaceCameraDirectionRatherThanPosition | uint32 | If true, all camera facing options will point the mesh against the camera's view |
| bCollisionsConsiderPartilceSize | uint32 | If true, all collisions for mesh particle on this emitter will take the particle |