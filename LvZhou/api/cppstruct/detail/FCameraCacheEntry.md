---
title: FCameraCacheEntry
---

# FCameraCacheEntry

Cached camera POV info, stored as optimization so we only
  need to do a full camera update once per tick.

## Variables

| Name | Type | Description |
|------|------|-------------|
| TimeStamp | float | World time this entry was created. |
| POV | FMinimalViewInfo | Camera POV to cache. |