---
title: UInterpTrackParticleReplay
language: cpp
---

# UInterpTrackParticleReplay

> Inheritance: UInterpTrack

## Variables

| Name | Type | Description |
|------|------|-------------|
| TrackKeys | TArray < struct FParticleReplayTrackKey > | Array of keys |
| bIsCapturingReplay | uint32 | True in the editor if track should be used to capture replay frames instead of p |
| FixedTimeStep | float | Current replay fixed time quantum between frames (one over frame rate) |