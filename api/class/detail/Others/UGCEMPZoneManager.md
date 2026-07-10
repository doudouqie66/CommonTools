---
title: UGCEMPZoneManager
language: lua
---

# UGCEMPZoneManager

电磁干扰区管理器

## Variables

| Name | Type | Description |
|------|------|-------------|
| UGCEMPZoneManager.SuccessfullyGeneratedElectromagnetic |  | param InstanceID number @param CenterLocation FVector |
| UGCEMPZoneManager.SuccessfullyStopElectromagnetic |  | param InstanceID number |
| UGCEMPZoneManager.NormalEndElectromagnetic |  | param InstanceID number |
| UGCEMPZoneManager.SuccessfullyStartElectromagnetic |  | param InstanceID number |
| UGCEMPZoneManager.AffectedElectromagneticPlayers |  | param AffectedPlayerKeys number |
| UGCEMPZoneManager.__EMPZoneMarkTypeID |  |  |
| UGCEMPZoneManager.__EMPZoneMarkInstIDs |  |  |

## Functions

### _ValidateAndClampConfig

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Config | UGCEMPZoneConfig |  |

**Return:** UGCEMPZoneConfig 

### _GetInstanceDetailData

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number |  |

**Return:** table|nil 

### _GetConfigByIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | number |  |

**Return:** table|nil 

### _ModifyConfigByIndex

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Index | number |  |
| NewConfig | table |  |

**Return:** bool 

### _GetElectromagneticAreaConfigs

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number|nil |  |

**Return:** table|nil 

### _ConvertToLuaConfigs

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ElectromagneticInstances | table |  |

**Return:** table 

### _GenerateNextInstanceID

**Return:** number 

### _MapLuaConfigToComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| LuaConfig | UGCEMPZoneConfig |  |

**Return:** FEMPZoneCfg 

### _SyncCapsuleRadius

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| EMPZoneActor | AEMPZoneActor |  |
| InstanceData | table |  |

**Return:** boolean 

### _WriteConfigToComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| Comp | UEMPZoneControlComponent |  |
| ComponentConfig | FEMPZoneCfg |  |

**Return:** boolean 

### CreateEMPZone

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConfigID | string |  |
| CenterLocation | FVector |  |

### _CreateEMPZoneActor

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number |  |

**Return:** boolean 

### DestroyElectromagneticArea

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number |  |

**Return:** boolean 

### _DestroyAllElectromagneticAreas

**Return:** boolean 

### ModifyConfigElectromagneticArea

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| ConfigIndex | number |  |
| ParameterName | string |  |
| NewValue | any |  |

**Return:** boolean 

### GetAllConfigElectromagneticArea

**Return:** table 

### GetSpecifyElectromagneticAreaList

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number |  |

**Return:** table 

### _NotifyClientHideMapMark

当 EMPZone 销毁时隐藏小地图标记

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number |  |

### Client_OnEMPZoneMapMarkShow

[Client RPC] 显示 EMPZone 小地图标记

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 实例ID |
| LocX | number | 位置X坐标 |
| LocY | number | 位置Y坐标 |
| LocZ | number | 位置Z坐标 |
| EffectRadius | number | 影响半径 |
| ZoneState | number | 区域状态 |

### Client_OnEMPZoneMapMarkHide

[Client RPC] 隐藏 EMPZone 小地图标记

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| InstanceID | number | 实例ID |