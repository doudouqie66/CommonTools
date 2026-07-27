---
title: USplineComponent
language: cpp
---

# USplineComponent

A spline component is a spline shape which can be used for other purposes (e.g. animating objects). It contains debug rendering capabilities.

> Inheritance: UPrimitiveComponent

## Variables

| Name | Type | Description |
|------|------|-------------|
| SplineCurves | FSplineCurves |  |
| SplineInfo_DEPRECATED | FInterpCurveVector | Deprecated - please use GetSplinePointsPosition() to fetch this FInterpCurve |
| SplineRotInfo_DEPRECATED | FInterpCurveQuat | Deprecated - please use GetSplinePointsRotation() to fetch this FInterpCurve |
| SplineScaleInfo_DEPRECATED | FInterpCurveVector | Deprecated - please use GetSplinePointsScale() to fetch this FInterpCurve |
| SplineReparamTable_DEPRECATED | FInterpCurveFloat |  |
| bAllowSplineEditingPerInstance_DEPRECATED | bool |  |
| ReparamStepsPerSegment | int32 | Number of steps per spline segment to place in the reparameterization table |
| Duration | float | Specifies the duration of the spline in seconds |
| bStationaryEndpoints | bool | Whether the endpoints of the spline are considered stationary when traversing th |
| bSplineHasBeenEdited | bool | Whether the spline has been edited from its default by the spline component visu |
| bModifiedByConstructionScript | bool | Whether the UCS has made changes to the spline points |
| bInputSplinePointsToConstructionScript | bool | Whether the spline points should be passed to the User Construction Script so th |
| bDrawDebug | bool | If true, the spline will be rendered if the Splines showflag is set. |
| bClosedLoop | bool | Whether the spline is to be considered as a closed loop. 	  Use SetClosedLoop()  |
| bLoopPositionOverride | bool |  |
| LoopPosition | float |  |
| DefaultUpVector | FVector | Default up vector in local space to be used when calculating transforms along th |
| bUseConfigRotation | bool | Engine Modify Start |
| bUseConfigRotationXY | bool |  |
| EditorUnselectedSplineSegmentColor | FLinearColor | Engine Modify End 	  	 Color of an unselected spline component segment in the ed |
| EditorSelectedSplineSegmentColor | FLinearColor | Color of a selected spline component segment in the editor |
| bAllowDiscontinuousSpline | bool | Whether the spline's leave and arrive tangents can be different |
| bShouldVisualizeScale | bool | Whether scale visualization should be displayed |
| ScaleVisualizationWidth | float | Width of spline in editor for use with scale visualization |
| PostionModifyer | USplineComponentEditorModifer * |  |
| SelectedIndexs | TSet < int32 > |  |
| SnappingType | ESplineSnappingType |  |
| SnapInterval | float |  |
| SnapTopDownRange | FVector2D |  |
| TraceLength | float |  |

## Functions

### UpdateSpline

Update the spline tangents and SplineReparamTable

**Return:** void 

### GetDistanceAlongSplineAtSplineInputKey

Get distance along the spline at the provided input key value

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InKey | float |  |

**Return:** float  

### SetUnselectedSplineSegmentColor

Specify unselected spline component segment color in the editor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SegmentColor | FLinearColor & |  |

**Return:** void  

### SetSelectedSplineSegmentColor

Specify selected spline component segment color in the editor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| SegmentColor | FLinearColor & |  |

**Return:** void  

### EditorSnapToGround

**Return:** void 

### EditorNormalizeSplineTangent

**Return:** void 

### SetDrawDebug

Specify whether this spline should be rendered when the EditorGame spline show flag is set

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bShow | bool |  |

**Return:** void  

### SetClosedLoop

Specify whether the spline is a closed loop or not. The loop position will be at 1.0 after the last point's input key

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInClosedLoop | bool  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### SetClosedLoopAtPosition

Specify whether the spline is a closed loop or not, and if so, the input key corresponding to the loop point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bInClosedLoop | bool  |  |
| Key | float  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### IsClosedLoop

Check whether the spline is a closed loop or not

**Return:** bool 

### ClearSplinePoints

Clears all the points in the spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bUpdateSpline | bool |  |

**Return:** void  

### AddPoint

Adds an FSplinePoint to the spline. This contains its input key, position, tangent, rotation and scale.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Point | FSplinePoint &  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### AddPoints

Adds an array of FSplinePoints to the spline.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Points | TArray < FSplinePoint > &  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### AddSplinePoint

Adds a point to the spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### AddSplinePointAtIndex

Adds a point to the spline at the specified index

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector &  |  |
| Index | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### RemoveSplinePoint

Removes point at specified index from the spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | int32  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### AddSplineWorldPoint

Adds a world space point to the spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector & |  |

**Return:** void  

### AddSplineLocalPoint

Adds a local space point to the spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Position | FVector & |  |

**Return:** void  

### SetSplinePoints

Sets the spline to an array of points

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Points | TArray < FVector > &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### SetSplineWorldPoints

Sets the spline to an array of world space points

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Points | TArray < FVector > & |  |

**Return:** void  

### SetSplineLocalPoints

Sets the spline to an array of local space points

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Points | TArray < FVector > & |  |

**Return:** void  

### SetLocationAtSplinePoint

Move an existing point to a new location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| InLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### SetWorldLocationAtSplinePoint

Move an existing point to a new world location

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| InLocation | FVector & |  |

**Return:** void  

### SetTangentAtSplinePoint

Specify the tangent at a given spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| InTangent | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### SetTangentsAtSplinePoint

Specify the tangents at a given spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| InArriveTangent | FVector &  |  |
| InLeaveTangent | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### SetUpVectorAtSplinePoint

Specify the up vector at a given spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| InUpVector | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### GetSplinePointType

Get the type of a spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32 |  |

**Return:** ESplinePointType :: Type  

### SetSplinePointType

Specify the type of a spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| Type | ESplinePointType :: Type  |  |
| bUpdateSpline | bool |  |

**Return:** void  

### GetNumberOfSplinePoints

Get the number of points that make up this spline

**Return:** int32 

### GetLocationAtSplinePoint

Get the location at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetWorldLocationAtSplinePoint

Get the world location at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32 |  |

**Return:** FVector  

### GetDirectionAtSplinePoint

Get the location at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetTangentAtSplinePoint

Get the tangent at spline point. This fetches the Leave tangent of the point.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetArriveTangentAtSplinePoint

Get the arrive tangent at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetLeaveTangentAtSplinePoint

Get the leave tangent at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetRotationAtSplinePoint

Get the rotation at spline point as a rotator

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FRotator  

### GetUpVectorAtSplinePoint

Get the up vector at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetRightVectorAtSplinePoint

Get the right vector at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetRollAtSplinePoint

Get the amount of roll at spline point, in degrees

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** float  

### GetScaleAtSplinePoint

Get the scale at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32 |  |

**Return:** FVector  

### GetTransformAtSplinePoint

Get the transform at spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseScale | bool |  |

**Return:** FTransform  

### GetLocationAndTangentAtSplinePoint

Get location and tangent at a spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| Location | FVector &  |  |
| Tangent | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** void  

### GetLocalLocationAndTangentAtSplinePoint

Get local location and tangent at a spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32  |  |
| LocalLocation | FVector &  |  |
| LocalTangent | FVector & |  |

**Return:** void  

### GetDistanceAlongSplineAtSplinePoint

Get the distance along the spline at the spline point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| PointIndex | int32 |  |

**Return:** float  

### GetSplineLength

Returns total length along this spline

**Return:** float 

### SetDefaultUpVector

Sets the default up vector used by this spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| UpVector | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** void  

### GetDefaultUpVector

Gets the default up vector used by this spline

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetInputKeyAtDistanceAlongSpline

Given a distance along the length of this spline, return the corresponding input key at that point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** float  

### GetTimeAtDistanceAlongSpline

Given a distance along the length of this spline, return the corresponding time at that point

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** float  

### GetLocationAtDistanceAlongSpline

Given a distance along the length of this spline, return the point in space where this puts you

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetWorldLocationAtDistanceAlongSpline

Given a distance along the length of this spline, return the point in world space where this puts you

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** FVector  

### GetDirectionAtDistanceAlongSpline

Given a distance along the length of this spline, return a unit direction vector of the spline tangent there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetWorldDirectionAtDistanceAlongSpline

Given a distance along the length of this spline, return a unit direction vector of the spline tangent there, in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** FVector  

### GetTangentAtDistanceAlongSpline

Given a distance along the length of this spline, return the tangent vector of the spline there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetWorldTangentAtDistanceAlongSpline

Given a distance along the length of this spline, return the tangent vector of the spline there, in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** FVector  

### GetRotationAtDistanceAlongSpline

Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FRotator  

### GetWorldRotationAtDistanceAlongSpline

Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there, in world space.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** FRotator  

### GetUpVectorAtDistanceAlongSpline

Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's up vector there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetRightVectorAtDistanceAlongSpline

Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's right vector there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### GetRollAtDistanceAlongSpline

Given a distance along the length of this spline, return the spline's roll there, in degrees.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** float  

### GetScaleAtDistanceAlongSpline

Given a distance along the length of this spline, return the spline's scale there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float |  |

**Return:** FVector  

### GetTransformAtDistanceAlongSpline

Given a distance along the length of this spline, return an FTransform corresponding to that point on the spline.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Distance | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseScale | bool |  |

**Return:** FTransform  

### GetLocationAtTime

Given a time from 0 to the spline duration, return the point in space where this puts you

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetWorldLocationAtTime

Given a time from 0 to the spline duration, return the point in space where this puts you

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetDirectionAtTime

Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetWorldDirectionAtTime

Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetTangentAtTime

Given a time from 0 to the spline duration, return the spline's tangent there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetRotationAtTime

Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FRotator  

### GetWorldRotationAtTime

Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bUseConstantVelocity | bool |  |

**Return:** FRotator  

### GetUpVectorAtTime

Given a time from 0 to the spline duration, return the spline's up vector there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetRightVectorAtTime

Given a time from 0 to the spline duration, return the spline's right vector there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### GetTransformAtTime

Given a time from 0 to the spline duration, return the spline's transform at the corresponding position.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool  |  |
| bUseScale | bool |  |

**Return:** FTransform  

### GetRollAtTime

Given a time from 0 to the spline duration, return the spline's roll there, in degrees.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseConstantVelocity | bool |  |

**Return:** float  

### GetScaleAtTime

Given a time from 0 to the spline duration, return the spline's scale there.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Time | float  |  |
| bUseConstantVelocity | bool |  |

**Return:** FVector  

### FindInputKeyClosestToWorldLocation

Given a location, in world space, return the input key closest to that location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector & |  |

**Return:** float  

### FindLocationClosestToWorldLocation

Given a location, in world space, return the point on the curve that is closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### FindDirectionClosestToWorldLocation

Given a location, in world spcae, return a unit direction vector of the spline tangent closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### FindTangentClosestToWorldLocation

Given a location, in world space, return the tangent vector of the spline closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### FindRotationClosestToWorldLocation

Given a location, in world space, return rotation corresponding to the spline's rotation closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FRotator  

### FindUpVectorClosestToWorldLocation

Given a location, in world space, return a unit direction vector corresponding to the spline's up vector closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### FindRightVectorClosestToWorldLocation

Given a location, in world space, return a unit direction vector corresponding to the spline's right vector closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** FVector  

### FindRollClosestToWorldLocation

Given a location, in world space, return the spline's roll closest to the location, in degrees.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type |  |

**Return:** float  

### FindScaleClosestToWorldLocation

Given a location, in world space, return the spline's scale closest to the location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector & |  |

**Return:** FVector  

### FindTransformClosestToWorldLocation

Given a location, in world space, return an FTransform closest to that location.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldLocation | FVector &  |  |
| CoordinateSpace | ESplineCoordinateSpace :: Type  |  |
| bUseScale | bool |  |

**Return:** FTransform