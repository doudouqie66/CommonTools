---
title: FSoundAttenuationSettings
---

# FSoundAttenuationSettings

## Variables

| Name | Type | Description |
|------|------|-------------|
| bAttenuate | uint32 | Allows distance-based volume attenuation. |
| bSpatialize | uint32 | Allows the source to be 3D spatialized. |
| bAttenuateWithLPF | uint32 | Allows simulation of air absorption by applying a filter with a cutoff frequency |
| bEnableListenerFocus | uint32 | Enable listener focus-based adjustments. |
| bEnableFocusInterpolation | uint32 | Enables focus interpolation to smooth transition in and and of focus. |
| bEnableOcclusion | uint32 | Enables realtime occlusion tracing. |
| bUseComplexCollisionForOcclusion | uint32 | Enables tracing against complex collision when doing occlusion traces. |
| bEnableReverbSend | uint32 | Enables adjusting reverb sends based on distance. |
| bApplyNormalizationToStereoSounds | uint32 | Enables applying a -6 dB attenuation to stereo assets which are 3d spatialized.  |
| bEnableLogFrequencyScaling | uint32 | Enables applying a log scale to frequency values (so frequency sweeping is perce |
| DistanceType_DEPRECATED | TEnumAsByte < enum ESoundDistanceCalc > |  |
| OmniRadius | float | The distance below which a sound is non-spatialized (2D). This prevents near-fie |
| StereoSpread | float | The world-space absolution distance between left and right stereo channels when  |
| SpatializationAlgorithm | TEnumAsByte < enum ESoundSpatializationAlgorithm > | What method we use to spatialize the sound. |
| SpatializationPluginSettings | USpatializationPluginSourceSettingsBase * | Settings to use with occlusion audio plugin. These are defined by the plugin cre |
| RadiusMin_DEPRECATED | float |  |
| RadiusMax_DEPRECATED | float |  |
| LPFRadiusMin | float | The distance min range at which to apply an absorption LPF filter. |
| LPFRadiusMax | float | The max distance range at which to apply an absorption LPF filter. Absorption fr |
| AbsorptionMethod | EAirAbsorptionMethod | What method to use to map distance values to frequency absorption values. |
| CustomLowpassAirAbsorptionCurve | FRuntimeFloatCurve | The normalized custom curve to use for the air absorption lowpass frequency valu |
| CustomHighpassAirAbsorptionCurve | FRuntimeFloatCurve | The normalized custom curve to use for the air absorption highpass frequency val |
| LPFFrequencyAtMin | float | The range of the cutoff frequency (in hz) of the lowpass absorption filter. |
| LPFFrequencyAtMax | float | The range of the cutoff frequency (in hz) of the lowpass absorption filter. |
| HPFFrequencyAtMin | float | The range of the cutoff frequency (in hz) of the highpass absorption filter. |
| HPFFrequencyAtMax | float | The range of the cutoff frequency (in hz) of the highpass absorption filter. |
| FocusAzimuth | float | Azimuth angle (in degrees) relative to the listener forward vector which defines |
| NonFocusAzimuth | float | Azimuth angle (in degrees) relative to the listener forward vector which defines |
| FocusDistanceScale | float | Amount to scale the distance calculation of sounds that are in-focus. Can be use |
| NonFocusDistanceScale | float | Amount to scale the distance calculation of sounds that are not in-focus. Can be |
| FocusPriorityScale | float | Amount to scale the priority of sounds that are in focus. Can be used to boost t |
| NonFocusPriorityScale | float | Amount to scale the priority of sounds that are not in-focus. Can be used to red |
| FocusVolumeAttenuation | float | Amount to attenuate sounds that are in focus. Can be overridden at the sound-lev |
| NonFocusVolumeAttenuation | float | Amount to attenuate sounds that are not in focus. Can be overridden at the sound |
| FocusAttackInterpSpeed | float | Scalar used to increase interpolation speed upwards to the target Focus value |
| FocusReleaseInterpSpeed | float | Scalar used to increase interpolation speed downwards to the target Focus value |
| OcclusionTraceChannel | TEnumAsByte < enum ECollisionChannel > | Which trace channel to use for audio occlusion checks. |
| OcclusionLowPassFilterFrequency | float | The low pass filter frequency (in hertz) to apply if the sound playing in this a |
| OcclusionVolumeAttenuation | float | The amount of volume attenuation to apply to sounds which are occluded. |
| OcclusionInterpolationTime | float | The amount of time in seconds to interpolate to the target OcclusionLowPassFilte |
| OcclusionPluginSettings | UOcclusionPluginSourceSettingsBase * | Settings to use with occlusion audio plugin. These are defined by the plugin cre |
| ReverbSendMethod | EReverbSendMethod | What method to use to control master reverb sends |
| ReverbPluginSettings | UReverbPluginSourceSettingsBase * | Settings to use with reverb audio plugin. These are defined by the plugin creato |
| ReverbWetLevelMin | float | The amount to send to master reverb when sound is located at a distance equal to |
| ReverbWetLevelMax | float | The amount to send to master reverb when sound is located at a distance equal to |
| ReverbDistanceMin | float | The min distance to send to the master reverb. |
| ReverbDistanceMax | float | The max distance to send to the master reverb. |
| CustomReverbSendCurve | FRuntimeFloatCurve | The custom reverb send curve to use for distance-based send level. |
| ManualReverbSendLevel | float | The manual master reverb send level to use. Doesn't change as a function of dist |