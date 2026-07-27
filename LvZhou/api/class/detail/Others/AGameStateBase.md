---
title: AGameStateBase
language: cpp
---

# AGameStateBase

GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase.
  It exists on both the client and the server and is fully replicated.

> Inheritance: AInfo

## Variables

| Name | Type | Description |
|------|------|-------------|
| GameModeClass | TSubclassOf < AGameModeBase > | Class of the server's game mode, assigned by GameModeBase. |
| AuthorityGameMode | AGameModeBase * | Instance of the current game mode, exists only on the server. For non-authority  |
| SpectatorClass | TSubclassOf < ASpectatorPawn > | Class used by spectators, assigned by GameModeBase. |
| PlayerArray | TArray < APlayerState * > | Array of all PlayerStates, maintained on both server and clients (PlayerStates a |
| bReplicatedHasBegunPlay | bool | Replicated when GameModeBase->StartPlay has been called so the client will also  |
| ReplicatedWorldTimeSeconds | float | Server TimeSeconds. Useful for syncing up animation and gameplay. |
| ServerWorldTimeSecondsDelta | float | The difference from the local world's TimeSeconds and the server world's TimeSec |
| ServerWorldTimeSecondsUpdateFrequency | float | Frequency that the server updates the replicated TimeSeconds from the world. Set |
| bRecordControllerReplay | bool | If use rec ctrl in replay |
| PauseInfo | bool |  |

## Functions

### GetServerWorldTimeSeconds

Returns the simulated TimeSeconds on the server, will be synchronized on client and server

**Return:** float 

### GetServerWorldTimeSecondsForReplay

Returns the simulated TimeSeconds on the server while playing replay, with fastforward skipped time considered

**Return:** float 

### HasBegunPlay

Returns true if the world has started play (called BeginPlay on actors)

**Return:** bool 

### HasMatchStarted

Returns true if the world has started match (called MatchStarted callbacks)

**Return:** bool 

### GetPlayerStartTime

Returns the time that should be used as when a player started

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AController * |  |

**Return:** float  

### GetPlayerRespawnDelay

Returns how much time needs to be spent before a player can respawn

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Controller | AController * |  |

**Return:** float  

### OnRep_GameModeClass

GameModeBase class notification callback.

**Return:** void 

### OnRep_SpectatorClass

Callback when we receive the spectator class

**Return:** void 

### OnRep_ReplicatedHasBegunPlay

By default calls BeginPlay and StartMatch

**Return:** void 

### OnRep_ReplicatedWorldTimeSeconds

Allows clients to calculate ServerWorldTimeSecondsDelta

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| OldValue | float & |  |

**Return:** void  

### OnRep_RecordControllerReplay

**Return:** void 

### OnRep_PauseInfo

**Return:** void