---
title: USoundNodeRandom
language: cpp
---

# USoundNodeRandom

Selects sounds from a random set

> Inheritance: USoundNode

## Variables

| Name | Type | Description |
|------|------|-------------|
| Weights | TArray < float > |  |
| PreselectAtLevelLoad | int32 | If greater than 0, then upon each level load such a number of inputs will be ran |
| bRandomizeWithoutReplacement | uint32 | Determines whether or not this SoundNodeRandom should randomize with or without  |
| HasBeenUsed | TArray < bool > | Internal state of which sounds have been played.  This is only used at runtime 	 |
| NumRandomUsed | int32 | Counter var so we don't have to count all of the used sounds each time we choose |
| PIEHiddenNodes | TArray < int32 > | Editor only list of nodes hidden to duplicate behavior of PreselectAtLevelLoad |