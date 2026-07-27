---
title: UConsole
language: cpp
---

# UConsole

A basic command line console that accepts most commands.

> Inheritance: UObject -> FOutputDevice

## Variables

| Name | Type | Description |
|------|------|-------------|
| ConsoleTargetPlayer | ULocalPlayer * | The player which the next console command should be executed in the context of.  |
| DefaultTexture_Black | UTexture2D * |  |
| DefaultTexture_White | UTexture2D * |  |
| HistoryBuffer | TArray < FString > | Holds the history buffer, order is old to new |