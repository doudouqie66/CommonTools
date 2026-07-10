---
title: UGCGamePartSystem
language: lua
---

# UGCGamePartSystem

GamePart系统接口库

## Functions

### GetGamePartConfig

获取指定GamePart的Config
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GamePartName | string | GamePart名称 |

**Return:** UUGCGamePartConfig 指定GamePart的Config

### GetGamePartGlobalActor

获取指定GamePart的GlobalActor
生效范围：服务器&客户端

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GamePartName | string | GamePart名称 |

**Return:** AActor 指定GamePart的GlobalActor

### GetGamePartPlayerComponent

获取指定GamePart的指定玩家的指定PlayerComponent

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GamePartName | string | GamePart名称 |
| PC | PlayerController | 玩家控制器 |
| PlayerComponentName | string | PlayerComponent名称 |

**Return:** UActorComponent 指定的PlayerComponent

### IsGamePartLoaded

获取指定GamePart是否已加载

**Parameters:**
| Name | Type | Description |
|------|------|-------------|
| GamePartName | string | GamePart名称 |

**Return:** boolean GamePart是否已加载

### GetAllLoadedGameParts

获取所有已加载的GamePart

**Return:** string[] 所有已加载的GamePart列表