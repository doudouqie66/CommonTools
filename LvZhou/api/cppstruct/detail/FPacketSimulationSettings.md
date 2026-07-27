---
title: FPacketSimulationSettings
---

# FPacketSimulationSettings

Holds the packet simulation settings in one place

## Variables

| Name | Type | Description |
|------|------|-------------|
| PktOrder | int32 | When set, will cause calls to FlushNet to change ordering of packets at random.  |
| PktLoss | int32 | When set, will cause calls to FlushNet to drop packets. 	  Value is treated as % |
| PktDup | int32 | When set, will cause calls to FlushNet to duplicate packets. 	  Value is treated |
| PktLag | int32 | When set, will cause calls to FlushNet to delay packets. 	  Value is treated as  |
| PktLagVariance | int32 | When set, will cause PktLag to use variable lag instead of constant. 	  Value is |
| PktIncomingLoss | int32 | The ratio of incoming packets that will be dropped 	  to simulate packet loss |