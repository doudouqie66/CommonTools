---
title: FTimelineFloatTrack
---

# FTimelineFloatTrack

Struct that contains one entry for each vector interpolation performed by the timeline

## Variables

| Name | Type | Description |
|------|------|-------------|
| FloatCurve | UCurveFloat * | Float curve to be evaluated |
| TrackName | FName | Name of track, usually set in Timeline Editor. Used by SetInterpFloatCurve funct |
| FloatPropertyName | FName | Name of property that we should update from this curve |
| FloatProperty | UFloatProperty * | Cached float property pointer |