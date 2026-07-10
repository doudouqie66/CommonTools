---
title: UInterpTrackDirector
language: cpp
---

# UInterpTrackDirector

> Inheritance: UInterpTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| CutTrack | TArray < struct FDirectorTrackCut > | Array of cuts between cameras. |
| bSimulateCameraCutsOnClients | uint32 | True to allow clients to simulate their own camera cuts.  Can help with latency- |
| PreviewCamera | ACameraActor * | The camera actor which the track is currently focused on. Only valid if this tra |