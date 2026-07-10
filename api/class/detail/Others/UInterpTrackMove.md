---
title: UInterpTrackMove
language: cpp
---

# UInterpTrackMove

Track containing data for moving an actor around over time.

> Inheritance: UInterpTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| PosTrack | FInterpCurveVector | Actual position keyframe data. |
| EulerTrack | FInterpCurveVector | Actual rotation keyframe data, stored as Euler angles in degrees, for easy editi |
| LookupTrack | FInterpLookupTrack |  |
| LookAtGroupName | FName | When using IMR_LookAtGroup, specifies the Group which this track should always p |
| LinCurveTension | float | Controls the tightness of the curve for the translation path. |
| AngCurveTension | float | Controls the tightness of the curve for the rotation path. |
| bUseQuatInterpolation | uint32 | Use a Quaternion linear interpolation between keys. 	 	This is robust and will f |
| bShowArrowAtKeys | uint32 | In the editor, show a small arrow at each keyframe indicating the rotation at th |
| bDisableMovement | uint32 | Disable previewing of this track - will always position  AActor  at Time=0.0. Us |
| bShowTranslationOnCurveEd | uint32 | If false, when this track is displayed on the Curve Editor in Matinee, do not sh |
| bShowRotationOnCurveEd | uint32 | If false, when this track is displayed on the Curve Editor in Matinee, do not sh |
| bHide3DTrack | uint32 | If true, 3D representation of this track in the 3D viewport is disabled. |
| RotMode | TEnumAsByte < enum EInterpTrackMoveRotMode > |  |