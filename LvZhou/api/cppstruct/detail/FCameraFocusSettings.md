---
title: FCameraFocusSettings
---

# FCameraFocusSettings

Settings to control camera focus

## Variables

| Name | Type | Description |
|------|------|-------------|
| FocusMethod | ECameraFocusMethod | Which method to use to handle camera focus |
| ManualFocusDistance | float | Manually-controlled focus distance (manual focus mode only) |
| TrackingFocusSettings | FCameraTrackingFocusSettings | Settings to control tracking focus (tracking focus mode only) |
| bDrawDebugFocusPlane | uint8 | True to draw a translucent plane at the current focus depth, for easy tweaking. |
| DebugFocusPlaneColor | FColor | For customizing the focus plane color, in case the default doesn't show up well  |
| bSmoothFocusChanges | uint8 | True to use interpolation to smooth out changes in focus distance, false for foc |
| FocusSmoothingInterpSpeed | float | Controls interpolation speed when smoothing focus distance changes. Ignored if b |
| FocusOffset | float | Additional focus depth offset, used for manually tweaking if your chosen focus m |