---
title: UInterpGroupInst
language: cpp
---

# UInterpGroupInst

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| Group | UInterpGroup * | An instance of an UInterpGroup for a particular Actor. There may be multiple Int |
| GroupActor | AActor * | Actor that this Group instance is acting upon. 	 	NB: that this may be set to NU |
| TrackInst | TArray < UInterpTrackInst * > | Array if InterpTrack instances. TrackInst.Num() == UInterpGroup.InterpTrack.Num( |