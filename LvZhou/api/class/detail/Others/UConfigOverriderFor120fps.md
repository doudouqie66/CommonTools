---
title: UConfigOverriderFor120fps
language: cpp
---

# UConfigOverriderFor120fps

> Inheritance: UObject

## Variables

| Name | Type | Description |
|------|------|-------------|
| ConfigFor120fps | TArray < FConfigOverriderSetting > |  |
| ConfigForEnergySaving | TArray < FConfigOverriderSetting > |  |
| TextureLODGroupFilterOverride | TArray < FTextureLODGroupFilterOverride > |  |
| bHadApplyConfigFor120fps | bool |  |
| bHadApplyForEnergySaving | bool |  |

## Functions

### Enable120fpsConfigs

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void  

### EnableEnergySavingModeConfigs

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnergySaving | bool |  |

**Return:** void  

### RecoverConfigs

**Return:** void 

### Recover120fpsConfigs

**Return:** void 

### RecoverEnergySavingModeConfigs

**Return:** void 

### EnableTextureFilterOverrider

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| bEnable | bool |  |

**Return:** void