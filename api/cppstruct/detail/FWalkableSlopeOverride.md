---
title: FWalkableSlopeOverride
---

# FWalkableSlopeOverride

Struct allowing control over "walkable" normals, by allowing a restriction or relaxation of what steepness is normally walkable.

## Variables

| Name | Type | Description |
|------|------|-------------|
| WalkableSlopeAngle | float | Override walkable slope angle (in degrees), applying the rules of the Walkable S |
| WalkableSlopeBehavior | TEnumAsByte < EWalkableSlopeBehavior > | Behavior of this surface (whether we affect the walkable slope). 	  @see GetWalk |