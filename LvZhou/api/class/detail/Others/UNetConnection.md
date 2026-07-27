---
title: UNetConnection
language: cpp
---

# UNetConnection

> Inheritance: UPlayer

## Variables

| Name | Type | Description |
|------|------|-------------|
| Children | TArray < UChildConnection * > | child connections for secondary viewports |
| Driver | UNetDriver * | Owning net driver |
| PackageMapClass | TSubclassOf < UPackageMap > | The class name for the PackageMap to be loaded |
| PackageMap | UPackageMap * | Package map between local and remote. (negotiates net serialization) |
| OpenChannels | TArray < UChannel * > | @todo document |
| SentTemporaries | TArray < AActor * > | This actor is bNetTemporary, which means it should never be replicated after it' |
| ViewTarget | AActor * | The actor that is currently being viewedcontrolled by the owning controller |
| OwningActor | AActor * | Reference to controlling actor (usually PlayerController) |
| MaxPacket | int32 |  |
| InternalAck | uint32 |  |
| URL | FURL |  |
| NumPacketIdBits | int | Number of bits used for the packet id in the current packet. |
| PlayerId | FUniqueNetIdRepl | Net id of remote player on this connection. Only valid on client connections (se |
| LastReceiveTime | double |  |
| LastReceiveRealtime | double |  |
| LastGoodPacketRealtime | double |  |
| LastSendTime | double |  |
| LastTickTime | double |  |
| QueuedBits | int32 |  |
| TickCount | int32 |  |
| LastRecvAckTime | float | The last time an ack was received |
| NoPacketTimeOut | float |  |
| NoAckTimeOut | float |  |
| PacketsLateFramesArrayCount | int32 |  |
| PacketsArriveFramesArrayCount | int32 |  |
| ChannelsToTick | TArray < UChannel * > | The channels that need ticking. This will be a subset of OpenChannels, only incl |
| bOpenClientClampDeltaTime | bool |  |
| ClientClampDeltaTimeMin | float |  |
| ClientClampDeltaTimeMax | float |  |
| NetViewers | TArray < FNetViewer > |  |
| ShadowNetViewers | TArray < FShadowNetViewer > |  |
| NeedDealwithRPCBatchChannels | TArray < UActorChannel * > |  |
| ChannelsRequiringSubobjectGuidCleanup | TSet < UActorChannel * > |  |