---
title: FNetViewer
---

# FNetViewer

stores information on a viewer that actors need to be checked against for relevancy

## Variables

| Name | Type | Description |
|------|------|-------------|
| Connection | UNetConnection * |  |
| InViewer | AActor * | The "controlling net object" associated with this view (typically player control |
| ViewTarget | AActor * | The actor that is being directly viewed, usually a pawn.  Could also be the net  |
| ViewLocation | FVector | Where the viewer is looking from |
| ViewDir | FVector | Direction the viewer is looking |