---
title: FLevelCollection
---

# FLevelCollection

Contains a group of levels of a particular ELevelCollectionType within a UWorld
  and the context required to properly tickupdate those levels. This object is move-only.

## Variables

| Name | Type | Description |
|------|------|-------------|
| GameState | AGameStateBase * | The GameState associated with this collection. This may be different than the UW |
| NetDriver | UNetDriver * | The network driver associated with this collection. 	  The source collection and |
| DemoNetDriver | UDemoNetDriver * | The demo network driver associated with this collection. 	  The source collectio |
| MDNetDriverServer | UNetDriver * | The md network driver associated with this collection. 	  The source collection  |
| MDNetDriverClient | UNetDriver * |  |
| PersistentLevel | ULevel * | The persistent level associated with this collection. 	  The source collection a |
| Levels | TSet < ULevel * > | All the levels in this collection. |