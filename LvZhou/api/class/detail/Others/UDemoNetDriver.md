---
title: UDemoNetDriver
language: cpp
---

# UDemoNetDriver

Simulated network driver for recording and playing back game sessions.

> Inheritance: UNetDriver

## Variables

| Name | Type | Description |
|------|------|-------------|
| RollbackNetStartupActors | TMap < FString , FRollbackNetStartupActorInfo > | Net startup actors that need to be rolled back during scrubbing by being destroy |
| CheckpointSaveMaxMSPerFrame | float | Maximum time allowed each frame to spend on saving a checkpoint. If 0, it will s |
| bIsLocalReplay | bool |  |
| GameInstance | UGameInstance * |  |