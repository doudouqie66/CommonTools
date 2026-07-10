---
title: FSupportedSubTrackInfo
---

# FSupportedSubTrackInfo

Helper struct for creating sub tracks supported by this track

## Variables

| Name | Type | Description |
|------|------|-------------|
| SupportedClass | TSubclassOf < UInterpTrack > | The sub track class which is supported by this track |
| SubTrackName | FString | The name of the subtrack |
| GroupIndex | int32 | Index into the any subtrack group this subtrack belongs to (can be -1 for no gro |