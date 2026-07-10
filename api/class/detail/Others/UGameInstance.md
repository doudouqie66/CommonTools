---
title: UGameInstance
language: cpp
---

# UGameInstance

GameInstance: high-level manager object for an instance of the running game.
  Spawned at game creation and not destroyed until game instance is shut down.
  Running as a standalone game, there will be one of these.
  Running in PIE (play-in-editor) will generate one of these per PIE instance.

> Inheritance: UObject -> FExec

## Variables

| Name | Type | Description |
|------|------|-------------|
| EncryptedLocalPlayers | TArray < int64 > |  |
| LocalPlayers | TArray < ULocalPlayer * > |  |
| OnlineSession | UOnlineSession * | Class to manage online services |
| bUseEncryptLocalPlayerPtr | bool |  |
| DSHUD | UObject * |  |
| CachedConsoleVariableBunch_Groups | TArray < TArray < uint8 > > |  |
| CachedConsoleVariableBunch_BigWorld | TArray < uint8 > |  |
| CachedConsoleVariableBunch_Permanent | TArray < uint8 > |  |
| SpecialPakResStates | TMap < ESpecialPakID , EPakResState > |  |

## Functions

### ReceiveInit

Opportunity for blueprints to handle the game instance being initialized.

**Return:** void 

### ReceiveShutdown

Opportunity for blueprints to handle the game instance being shutdown.

**Return:** void 

### HandleNetworkError

Opportunity for blueprints to handle network errors.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FailureType | ENetworkFailure :: Type  |  |
| bIsServer | bool |  |

**Return:** void  

### HandleTravelError

Opportunity for blueprints to handle travel errors.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| FailureType | ETravelFailure :: Type |  |

**Return:** void  

### DebugCreatePlayer

Local player access 
	
	  Debug console command to create a player.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ControllerId | int32 | - The controller ID the player should accept input from. |

**Return:** void  

### DebugRemovePlayer

Debug console command to remove the player with a given controller ID.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ControllerId | int32 | - The controller ID to search for. |

**Return:** void  

### ResetDynaConfigAndDynaCVar

**Return:** void 

### ResetDynaConfig

**Return:** void 

### SendConsoleVariableBunch

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CVarType | ECVarType  |  |
| Connection | UNetConnection * |  |

**Return:** void  

### ReceiveConsoleVariableBunch_BigWorld

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InConsoleVariablesBunch | TArray < uint8 > |  |

**Return:** void  

### ReceiveConsoleVariableBunch_Permanent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InConsoleVariablesBunch | TArray < uint8 > |  |

**Return:** void  

### EnableConsoleVariableBunch

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CVarType | ECVarType  |  |
| bMapIsBigWorld | bool |  |

**Return:** void  

### ClearConsoleVariableBunch

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CVarType | ECVarType |  |

**Return:** void  

### ResetConsoleVariable

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| CVarType | ECVarType |  |

**Return:** void  

### SetPakResState

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPakID | ESpecialPakID  |  |
| InPakState | EPakResState |  |

**Return:** void  

### GetPakResState

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPakID | ESpecialPakID |  |

**Return:** EPakResState  

### IsPlatformSplitPakRes

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InPakID | ESpecialPakID |  |

**Return:** EPakSplitState  

### InitPakResState

**Return:** void