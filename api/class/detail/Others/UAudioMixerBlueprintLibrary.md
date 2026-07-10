---
title: UAudioMixerBlueprintLibrary
language: cpp
---

# UAudioMixerBlueprintLibrary

> Inheritance: UBlueprintFunctionLibrary

## Functions

### AddMasterSubmixEffect

Adds a submix effect preset to the master submix.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| SubmixEffectPreset | USoundEffectSubmixPreset * |  |

**Return:** void  

### RemoveMasterSubmixEffect

Removes a submix effect preset from the master submix.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| SubmixEffectPreset | USoundEffectSubmixPreset * |  |

**Return:** void  

### ClearMasterSubmixEffects

Clears all master submix effects.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject * |  |

**Return:** void  

### AddSourceEffectToPresetChain

Adds source effect entry to preset chain. Only effects the instance of the preset chain

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PresetChain | USoundEffectSourcePresetChain *  |  |
| Entry | FSourceEffectChainEntry |  |

**Return:** void  

### RemoveSourceEffectFromPresetChain

Adds source effect entry to preset chain. Only affects the instance of preset chain.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PresetChain | USoundEffectSourcePresetChain *  |  |
| EntryIndex | int32 |  |

**Return:** void  

### SetBypassSourceEffectChainEntry

Set whether or not to bypass the effect at the source effect chain index.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PresetChain | USoundEffectSourcePresetChain *  |  |
| EntryIndex | int32  |  |
| bBypassed | bool |  |

**Return:** void  

### GetNumberOfEntriesInSourceEffectChain

Returns the number of effect chain entries in the given source effect chain.

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| WorldContextObject | UObject *  |  |
| PresetChain | USoundEffectSourcePresetChain * |  |

**Return:** int32